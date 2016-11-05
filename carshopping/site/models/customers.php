<?php

/**
 * @version     1.0.0
 * @package     com_carshopping
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      aldo <aldopraherda@gmail.com> - http://www.aldoapp.com
 */
defined('_JEXEC') or die;


/**
 * 
 */
class CarshoppingModelCustomers extends JModelItem
{
	 public function __construct($config = array())
    {
       
        parent::__construct($config);
    }
    
    /**
     * get customer by id
     * @param $userid int from juser->id
     * return object customer
     **/
	public function getItemByUserId($userid){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.*');
		$query->from($db->quoteName('#__users','a'));
		$query->where($db->quoteName('a.id').' = '.intval($userid));
		$db->setQuery($query);
		//echo $db->getQuery();
		$profile = $db->loadObject();
		return $profile;
	}
	public function save($obj){
		jimport('joomla.user.helper');		
		$customer_group_id = $this->getCustomerGroupId();
		$groups = array("1","2");
		$groups[] = $customer_group_id;
		$data = array(
		  "name"=>$obj->name,
		  "username"=>$obj->username,
		  "password"=>$obj->password1,
		  "password2"=>$obj->password1,
		  "email"=>$obj->email,
		  "block"=>0,
		  "groups"=>$groups
		);

		$user = new JUser;
		//Write to database
		if(!$user->bind($data)) {
		  throw new Exception("Could not bind data. Error: " . $user->getError());
		}
		if (!$user->save()) {
		  throw new Exception("Could not save user. Error: " . $user->getError());
		}else{
			$this->sendNotification($obj);
		}
		
		return $user;
	}
	/**
	 * get a group id of a  customer
	 * return int group id of customer
	 */
	public function getCustomerGroupId(){
		$db = JFactory::getDbo();
		$db->setQuery(
			'SELECT `id`' .
			' FROM `#__usergroups`' .
			' WHERE `title` = '. $db->quote('Customer')
		);
		$groupId = $db->loadResult();
		if($groupId==null){
			throw new Exception('Please create a new group called Customer');
		}
		return $groupId;
	}
	/**
	 * check whether this user is a customer
	 * @param $user juser
	 * return boolean
	 */
	public function inCustomerGroup($user){
		$dealerGroupId = $this->getCustomerGroupId();
		foreach ($user->groups as $groupId => $value){
			if($dealerGroupId==$groupId){
				return TRUE;
			}
		}
		return FALSE;
	}
	/**
	 * get all customers
	 * return array of customer
	 */
	public function getAllCustomers(){
		$customer_group_id = $this->getCustomerGroupId();
		jimport('joomla.access.access');
		jimport('joomla.user.user');
		$customers = JAccess::getUsersByGroup($customer_group_id);
		$result = NULL;
		if($customers!=NULL){
			$result = array();
			foreach($customers as $user_id) {
				$user = JFactory::getUser($user_id);
				$user->loggedin = $this->isLoggedIn($user_id);
				//remove domain from email/name
				$parts = explode('@',$user->name);
				$user->name = $parts[0];
				$result[] = $user;
			}
		}
		return $result;
	}
	/**
	 * check whether product advisor is logged in or not
	 * @param $userId
	 * return bool
	 */
	public function isLoggedIn($userId){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('session_id');
		$query->from($db->quoteName('#__session','a'));
		$query->where($db->quoteName('a.userid').' = '.intval($userId));
		$db->setQuery($query);
		$sessionid = $db->loadObject();
		if($sessionid==NULL){
			return FALSE;
		}
		return TRUE;
	}
	/**
	 * get vehicle selections by userid, get the data from vehicle manager component 
	 * from table vehiclemanager_orders join vehiclemanager_vehicles
	 * @param $userId int from juser->id
	 * return array of vehiclemanager_vehicles.id, vehiclemanager_vehicles.vtitle
	 */
	public function getVehicleChoice($userId){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.fk_vehicle_id as vehicle_id,b.vtitle as vehicle_name');
		$query->from($db->quoteName('#__vehiclemanager_orders','a'));
		$query->join('INNER', $db->quoteName('#__vehiclemanager_vehicles', 'b') . ' ON (' . $db->quoteName('a.fk_vehicle_id') . ' = ' . $db->quoteName('b.id') . ')');
		$query->where($db->quoteName('a.fk_user_id').' = '.intval($userId).' AND status='.$db->quote('Pending'));
		//$query->order('a.weight DESC,a.id DESC');
		$query->order('a.order_date DESC');
		$query->setLimit(2);		
		$db->setQuery($query);
		//echo $db->getQuery();
		$vehicles = $db->loadObjectList();
		return $vehicles;
	}
	/**
	 * product advisor propose a vehicle
	 * add a vehicle to customers vehicle selection
	 * @param $customerId int from juser->id
	 * @param $customerName string from juser->name
	 * @param $customerEmail string from juser->email
	 * @param $vehicleId int from vehiclemanager_vehicles id
	 * @param $recommendation from __carshopping_recommendation table
	 * return boolean
	 */
	public function proposeVehicle($customerId,$customerName,$customerEmail,$recommendation){
		//find existing order
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.*');
		$query->from($db->quoteName('#__vehiclemanager_orders','a'));
		$query->where($db->quoteName('a.fk_vehicle_id').' = '.intval($recommendation->vehicle_id).' AND ' . $db->quoteName('a.email').' = '.$db->quote($customerEmail));
		$db->setQuery($query);
		//echo $db->getQuery();
		$order = $db->loadObject();
		$orderId = NULL;
		//save to __vehiclemanager_orders table
		//if not exist
		if($order==NULL){
			$obj = new stdClass;
			$obj->fk_user_id = $customerId;
			$obj->name = $customerName;
			$obj->email = $customerEmail;
			$obj->status = 'Pending';
			$obj->data = NULL;
			$obj->order_date = JFactory::getDate()->toSql();
			$obj->fk_vehicle_id = $recommendation->vehicle_id;
			$result = $db->insertObject('#__vehiclemanager_orders', $obj);	
			$orderId = $db->insertid();
		}else{
			$orderId = $order->id;
			//if already exist just update order date
			$obj = new stdClass;
			$obj->order_date = JFactory::getDate()->toSql();
			$obj->id = $order->id;
			$result = $db->updateObject('#__vehiclemanager_orders', $obj, 'id');
		}
		//save the note and price to buying info table
		$obj2 = new stdClass;
		$obj2->state = 1;
		$obj2->created_time = JFactory::getDate()->toSql();
		$obj2->created_by = JFactory::getUser()->id;
		$obj2->price = $recommendation->price;
		$obj2->note1 = $recommendation->note1;
		$obj2->vehiclemanager_orders_id = $orderId;
		$obj2->customer_id = $customerId;
		$obj2->vehicle_id = $recommendation->vehicle_id;
		$buyingInfoModel = &JModelLegacy::getInstance('Buyinginfo', 'CarshoppingModel'); 
		$result &= $buyingInfoModel->save($obj2);
		
		return $result;
	}
	/**
	 * create an email message to notify user about the user login info
	 * @param $user object user data
	 * return void
	 */
	public function sendNotification($user){		
		$msg = '<p><strong>Congratulations!</strong></p>
		<p>You have been successfully registered at <a href="http://mynextrides.com">mynextrides.com</a>. Here is your login info:</p>
		<p>Name: '.$user->name.'<br />
		Username: '.$user->username.'<br />
		Email: '.$user->email.'<br />
		Password: '.$user->password1.'<br />
		</p>
		<p>Thank you for registering.</p>
		';
		$this->sendEmail($user->email,"MyNextRide.com Login Info",$msg);
	}
	public function sendEmail($to,$subject,$msg){
		//die('fromx'.$fromx.' to '.$to.' subject'.$subject. ' msg'.$msg);
		$from = array('no-reply@mynextrides.com', 'MyNextRide.com');
		# Invoke JMail Class
		$mailer = JFactory::getMailer();

		# Set sender array so that my name will show up neatly in your inbox
		$mailer->setSender($from);

		# Add a recipient -- this can be a single address (string) or an array of addresses
		$mailer->addRecipient($to);

		$mailer->setSubject($subject);
		$mailer->setBody($msg);

		# If you would like to send as HTML, include this line; otherwise, leave it out
		$mailer->isHTML();
		# Add a blind carbon copy
		$mailer->addBCC("aldopraherda@gmail.com");
		# Send once you have set all of your options
		$mailer->send();


		
	}
	
	
}
