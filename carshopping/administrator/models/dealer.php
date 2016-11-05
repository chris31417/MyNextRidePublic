<?php
/**
 * @version     1.0.0
 * @package     com_carshopping
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      aldo <aldopraherda@gmail.com> - http://www.aldoapp.com
 */

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.modeladmin');

/**
 * Carshopping model.
 */
class CarshoppingModelDealer extends JModelAdmin
{
	/**
	 * @var		string	The prefix to use with controller messages.
	 * @since	1.6
	 */
	protected $text_prefix = 'COM_CARSHOPPING';


	/**
	 * Returns a reference to the a Table object, always creating it.
	 *
	 * @param	type	The table type to instantiate
	 * @param	string	A prefix for the table class name. Optional.
	 * @param	array	Configuration array for model. Optional.
	 * @return	JTable	A database object
	 * @since	1.6
	 */
	public function getTable($type = 'dealer', $prefix = 'CarshoppingTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}

	/**
	 * Method to get the record form.
	 *
	 * @param	array	$data		An optional array of data for the form to interogate.
	 * @param	boolean	$loadData	True if the form is to load its own data (default case), false if not.
	 * @return	JForm	A JForm object on success, false on failure
	 * @since	1.6
	 */
	public function getForm($data = array(), $loadData = true)
	{
		// Initialise variables.
		$app	= JFactory::getApplication();

		// Get the form.
		$form = $this->loadForm('com_carshopping.dealer', 'dealer', array('control' => 'jform', 'load_data' => $loadData));
        
        
		if (empty($form)) {
			return false;
		}

		return $form;
	}

	/**
	 * Method to get the data that should be injected in the form.
	 *
	 * @return	mixed	The data for the form.
	 * @since	1.6
	 */
	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState('com_carshopping.edit.dealer.data', array());

		if (empty($data)) {
			$data = $this->getItem();
            
		}

		return $data;
	}

	/**
	 * Method to get a single record.
	 *
	 * @param	integer	The id of the primary key.
	 *
	 * @return	mixed	Object on success, false on failure.
	 * @since	1.6
	 */
	public function getItem($pk = null)
	{		
		if(empty($pk)){
			if(isset($_GET['id'])){
				$pk = intval($_GET['id']);				
			}
		}
		//return parent::getItem($pk);
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.*,b.username,b.name,b.email');
		$query->from($db->quoteName('#__carshopping_dealer_profile','a'));
		$query->join('LEFT', $db->quoteName('#__users', 'b') . ' ON (' . $db->quoteName('a.created_by') . ' = ' . $db->quoteName('b.id') . ')');
		$query->where($db->quoteName('a.id').' = '.$db->quote($pk));
		$db->setQuery($query);
		$profile = $db->loadObject();
		//var_dump(parent::getItem($pk));
		if($profile==NULL){
			$profile = parent::getItem($pk);
		}
		return $profile;				
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
	public function getProductAdvisorQuery(){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.*,b.name,b.email,b.username,c.name as city,duser.name as dealername');
		$query->from($db->quoteName('#__carshopping_product_advisor_profile','a'));
		$query->join('LEFT', $db->quoteName('#__users', 'b') . ' ON (' . $db->quoteName('a.created_by') . ' = ' . $db->quoteName('b.id') . ')');
		$query->join('LEFT', $db->quoteName('#__carshopping_city','c'). ' ON (' . $db->quoteName('a.city_id').  ' = ' . $db->quoteName('c.id') .')');
		$query->join('LEFT', $db->quoteName('#__carshopping_dealer_profile','d'). ' ON (' . $db->quoteName('d.created_by').  ' = ' . $db->quoteName('a.dealer_id') .')');
		$query->join('LEFT', $db->quoteName('#__users', 'duser') . ' ON (' . $db->quoteName('d.created_by') . ' = ' . $db->quoteName('duser.id') . ')');
		
		return $query;
	}
	/**
	 * Prepare and sanitise the table prior to saving.
	 *
	 * @since	1.6
	 */
	protected function prepareTable($table)
	{
		jimport('joomla.filter.output');

		if (empty($table->id)) {

			// Set ordering to the last item if not set
			if (@$table->ordering === '') {
				$db = JFactory::getDbo();
				$db->setQuery('SELECT MAX(ordering) FROM #__carshopping_dealer');
				$max = $db->loadResult();
				$table->ordering = $max+1;
			}

		}
	}
	/**
	 * return int group id of dealer
	 */
	public function getDealerGroupId(){
		$db = JFactory::getDbo();
		$db->setQuery(
			'SELECT `id`' .
			' FROM `#__usergroups`' .
			' WHERE `title` = '. $db->quote('Dealer')
		);
		$groupId = $db->loadResult();
		if($groupId==null){
			throw new Exception('Please create a new group called Dealer');
		}
		return $groupId;
	}
	/**
	 * create a user with group Dealer
	 * @param $obj form dealer.xml username,password
	 */
	public function createUser($obj){
		jimport('joomla.user.helper');		
		$dealerGroupId = $this->getDealerGroupId();
		$groups = array("1","2");
		$groups[] = $dealerGroupId;
		$data = array(
		  "name"=>$obj->name,
		  "username"=>$obj->username,
		  "password"=>$obj->password,
		  "password2"=>$obj->password,
		  "email"=>$obj->email,
		  "block"=>0,
		  "groups"=>$groups
		);

		$user = new JUser;
		//Write to database
		if(!$user->bind($data)) {
		  //throw new Exception("Could not bind data. Error: " . $user->getError());
		  $this->setError("Could not bind data. Error: " . $user->getError());
		  return false;
		}
		if (!$user->save()) {
		  //throw new Exception("Could not save user. Error: " . $user->getError());
		  $this->setError("Could not save user. Error: " . $user->getError());
		  return false;
		}
		
		return $user;
	}
	/**
	 * get id of user by username
	 * @param $username string username
	 * return int id
	 */
	private function getIdByUserName($username){
		$db = JFactory::getDbo(); 
		$query = $db->getQuery(true);

		$query->select('id');
		$query->from('#__users');
		$query->where('username=' . $db->Quote($username));

		$db->setQuery($query);
		if(isset($db->loadObject()->id) && !empty($db->loadObject()->id))
			return $db->loadObject()->id;
		else
			die('No id'.$username);
	}
	/**
	 * update user objevct
	 * @param $onj form dealer.xml	 
	 * return boolean
	 */
	private function updateUser($obj){
		$user = JFactory::getUser($obj->id);
		//var_dump($user);
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
	/**
	 * save dealer profile and user info
	 * $param array of form dealer.xml
	 * return boolean
	 */
	public function save($arr){
		//convert to object
		$obj = json_decode(json_encode($arr), FALSE);
		if(empty($obj->id)){			
			//create user first
			$user = $this->createUser($obj);
			if($user!=null){
				$userid = $user->id;
				unset($obj->username);
				unset($obj->password);				
				unset($obj->name);
				unset($obj->email);
				$obj->created_by = $user->id;	
				$obj->state = 1;		
				$obj->created_time = JFactory::getDate()->toSql();
				$result = JFactory::getDbo()->insertObject('#__carshopping_dealer_profile', $obj);
			}
			
		}else{			
			//get userid from dealer profile
			$profile = $this->getItem($obj->id);
			$profileid = $obj->id;
			$obj->id = $profile->created_by;
			//update user object
			$user = $this->updateUser($obj);	
			$obj->id = $profileid;									
			unset($obj->username);
			unset($obj->password);	
			unset($obj->name);
			unset($obj->email);		
			$result = JFactory::getDbo()->updateObject('#__carshopping_dealer_profile', $obj, 'id');
		}
		
		return $result;
	}

}
