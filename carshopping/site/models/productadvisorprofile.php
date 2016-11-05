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
class CarshoppingModelProductadvisorprofile extends JModelItem
{
	 public function __construct($config = array())
    {
       
        parent::__construct($config);
    }
    public function getProductAdvisorQuery(){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.*,b.name,b.email,b.username,b.block,c.name as city,duser.name as dealername');
		$query->from($db->quoteName('#__carshopping_product_advisor_profile','a'));
		$query->join('LEFT', $db->quoteName('#__users', 'b') . ' ON (' . $db->quoteName('a.created_by') . ' = ' . $db->quoteName('b.id') . ')');
		$query->join('LEFT', $db->quoteName('#__carshopping_city','c'). ' ON (' . $db->quoteName('a.city_id').  ' = ' . $db->quoteName('c.id') .')');
		$query->join('LEFT', $db->quoteName('#__carshopping_dealer_profile','d'). ' ON (' . $db->quoteName('d.created_by').  ' = ' . $db->quoteName('a.dealer_id') .')');
		$query->join('LEFT', $db->quoteName('#__users', 'duser') . ' ON (' . $db->quoteName('d.created_by') . ' = ' . $db->quoteName('duser.id') . ')');
		
		return $query;
	}
    /**
     * get product advisor by id
     * @param $userid int from juser->id
     * return object productadvisor
     **/
	public function getItemByUserId($userid){
		$db = JFactory::getDbo();
		$query = $this->getProductAdvisorQuery();
		$query->where($db->quoteName('a.created_by').' = '.intval($userid));
		$db->setQuery($query);
		//echo $db->getQuery();
		$profile = $db->loadObject();
		return $profile;
	}
	/**
	 * update user objevct
	 * @param $onj form dealer.xml	 
	 * return boolean
	 */
	public function updateUser($obj){
		$user = JFactory::getUser($obj->id);
		//var_dump($obj);
		$data = array();
		if(!empty($obj->password)){
			$data['password'] = $obj->password;
			$data['password2'] = $obj->password;
		}
		$data['username'] = $obj->username;
		$data['name'] = $obj->name;
		$data['email'] = $obj->email;
		//var_dump($data);exit(0);
		if(!$user->bind($data)){
			//die('Could not bind data. Error: '.$user->getError());
			$this->setError("Could not bind data. Error: " . $user->getError());
			return false;
		}
		if(!$user->save()){
			//die('Could not save user. Error: '.$user->getError());
			$this->setError("Could not save user. Error: " . $user->getError());
			return false;
		}
		return $user;
	}
	public function save($obj){
		if(empty($obj->id)){
			$obj->created_time = JFactory::getDate()->toSql();
			$result = JFactory::getDbo()->insertObject('#__carshopping_product_advisor_profile', $obj);
		}else{
		
			$result = JFactory::getDbo()->updateObject('#__carshopping_product_advisor_profile', $obj, 'id');
		}
		//save brands
		//delete first
		$db = JFactory::getDbo(); 
		$query = $db->getQuery(true);
		$conditions = array(
			$db->quoteName('product_advisor_id') . ' = ' . $obj->created_by 			
		);
		$query->delete($db->quoteName('#__carshopping_product_advisors_brand'));
		$query->where($conditions); 
		$db->setQuery($query);
		$result = $db->execute();
		//insert brands
		$brand = new stdClass();
		foreach($obj->brand_id as $brandId){
			$brand->product_advisor_id = $obj->created_by;
			$brand->created_by = $obj->created_by;
			$brand->brand_id = $brandId;
			$brand->created_time = JFactory::getDate()->toSql();
			$result &= JFactory::getDbo()->insertObject('#__carshopping_product_advisors_brand', $brand);
		}
		return $result;
	}
	public function getCities(){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('*');
		$query->from($db->quoteName('#__carshopping_city'));		
		$query->order('name ASC');
		$db->setQuery($query);
		$cities = $db->loadObjectList();
		return $cities;
	}
	public function createEmptyItem(){
		$ret = new stdClass;
		$ret->username = '';
		$ret->name = '';
		$ret->email = '';
		$ret->city_id = 0;
		$ret->city = '';
		$ret->year_of_experience = 0;
		$ret->dealer_id = 0;
		$ret->dealername = '';
		$ret->phone = '';
		$ret->certified = false;
		$ret->profile_text = '';
		$ret->brand_ids = array();
		return $ret;
	}
	/**
	 * return int group id of product advisor
	 */
	public function getProductAdvisorGroupId(){
		$db = JFactory::getDbo();
		$db->setQuery(
			'SELECT `id`' .
			' FROM `#__usergroups`' .
			' WHERE `title` = '. $db->quote('Product Advisor')
		);
		$groupId = $db->loadResult();
		if($groupId==null){
			throw new Exception('Please create a new group called Product Advisor');
		}
		return $groupId;
	}
	/**
	 * check whether this user is a product advisor
	 * @param $user juser
	 * return boolean
	 */
	public function inProductAdvisorGroup($user){
		$productAdvisorGroupId = intval($this->getProductAdvisorGroupId());		
		foreach ($user->groups as $groupId => $value){
			if($productAdvisorGroupId==intval($groupId)){
				return TRUE;
			}
		}
		return FALSE;
	}
	/**
	 * get product advisors by dealer id
	 * @param $dealerId int from juser->id
	 * return array of productadvisor
	 */
	public function getProductAdvisorsByDealerId($dealerId){
		//from query on getItemByUserId
		$db = JFactory::getDbo();		
		$query = $this->getProductAdvisorQuery();
		$query->where($db->quoteName('dealer_id').' = '.$db->quote($dealerId));
		$db->setQuery($query);
		//echo $db->getQuery();
		$productAdvisors = $db->loadObjectList();
		return $productAdvisors;
	}
	/**
	 * certify or uncertify a product advisor
	 * @param $userid from $juser->id
	 * @param $btrue boolean true->certified false->uncertified
	 * return boolean
	 */
	public function certify($userId,$btrue){
		$obj = new stdClass();
		$obj->created_by = $userId;
		$obj->certified = $btrue;
		
		$result = JFactory::getDbo()->updateObject('#__carshopping_product_advisor_profile', $obj, 'created_by');
		return $result;
	}
	/**
	 * get all product advisors (used by registered user)	 
	 * return array of productadvisor
	 */
	public function getAllProductAdvisors(){
		$db = JFactory::getDbo();		
		$query = $this->getProductAdvisorQuery();		
		$db->setQuery($query);
		//echo $db->getQuery();
		$productAdvisors = $db->loadObjectList();
		return $productAdvisors;
	}
	/**
	 * get brands of a product advisor
	 * @param $userId juser->id
	 * return array of brands key is id
	 */
	public function getProductAdvisorBrand($userId){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('brand.id,brand.brand_name');
		$query->from($db->quoteName('#__carshopping_product_advisors_brand','a'));
		$query->join('LEFT', $db->quoteName('#__carshopping_brand','brand').' ON (' . $db->quoteName('a.brand_id') . ' = ' . $db->quoteName('brand.id') .')');
		$query->where($db->quoteName('a.product_advisor_id').' = '.intval($userId));
		$db->setQuery($query);
		$brands = $db->loadObjectList();
		if($brands!=NULL){
			$ret = array();
			foreach($brands as $brand){
				$ret[$brand->id] = $brand->brand_name;
			}
			return $ret;
		}
		return $brands;
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
	 * get all product advisors by brand id
	 * @param $brandid int id of brand
	 * return array of productadvisor
	 */
	public function getAllProductAdvisorsByBrandId($brandid){
		$db = JFactory::getDbo();		
		$query = $this->getProductAdvisorQuery();		
		$query->join('INNER', $db->quoteName('#__carshopping_product_advisors_brand', 'brand') . ' ON (' . $db->quoteName('a.created_by') . ' = ' . $db->quoteName('brand.product_advisor_id') . ')');
		$query->where($db->quoteName('brand.brand_id').' = '.intval($brandid));
		$db->setQuery($query);
		//echo $db->getQuery();
		$productAdvisors = $db->loadObjectList();
		return $productAdvisors;
	}
	
	/**
	 * get all product advisors by city_id
	 * @param $cityid int id of a city
	 * return array of productadvisor
	 */
	public function getAllProductAdvisorsByCityId($cityid){
		$db = JFactory::getDbo();		
		$query = $this->getProductAdvisorQuery();				
		$query->where($db->quoteName('a.city_id').' = '.intval($cityid));
		$db->setQuery($query);
		//echo $db->getQuery();
		$productAdvisors = $db->loadObjectList();
		return $productAdvisors;
	}
	/**
	 * create product advisor user
	 * @param $obj user data
	 * return user object
	 */
	 public function createUser($obj){
		jimport('joomla.user.helper');		
		$product_advisor_group_id = $this->getProductAdvisorGroupId();
		$groups = array("1","2");
		$groups[] = $product_advisor_group_id;
		$data = array(
		  "name"=>$obj->name,
		  "username"=>$obj->username,
		  "password"=>$obj->password1,
		  "password2"=>$obj->password1,
		  "email"=>$obj->email,
		  "block"=>1,
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
		//reload the user, toget the user group
		$user =  JFactory::getUser($user->id);
		return $user;
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
	/**
	 * get pending product advisors by dealer id
	 * @param $dealerId int from juser->id
	 * return array of productadvisor
	 */
	public function getPendingProductAdvisorsByDealerId($dealerId){
		//from query on getItemByUserId
		$db = JFactory::getDbo();		
		$query = $this->getProductAdvisorQuery();
		$query->where($db->quoteName('dealer_id').' = '.$db->quote($dealerId).' and b.block=1');
		$db->setQuery($query);
		//echo $db->getQuery();
		$productAdvisors = $db->loadObjectList();
		return $productAdvisors;
	}
	/**
	 * update user object, block or onblock user
	 * @param $userId juser->id
	 * @param $isBlocked boolean
	 * return boolean
	 */
	public function blockUser($userId,$isBlocked){
		$user = JFactory::getUser($userId);
		//var_dump($obj);
		$data = array();		
		$data['block'] = $isBlocked?1:0;
		//var_dump($data);exit(0);
		if(!$user->bind($data)){
			//die('Could not bind data. Error: '.$user->getError());
			$this->setError("Could not bind data. Error: " . $user->getError());
			return false;
		}
		if(!$user->save()){
			//die('Could not save user. Error: '.$user->getError());
			$this->setError("Could not save user. Error: " . $user->getError());
			return false;
		}
		return $user;
	}
}
