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
class CarshoppingModelDealerprofile extends JModelItem
{
	 public function __construct($config = array())
    {
       
        parent::__construct($config);
    }
    
	public function getItemByUserId($userid){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.*,b.username,b.name,b.email');
		$query->from($db->quoteName('#__carshopping_dealer_profile','a'));
		$query->join('LEFT', $db->quoteName('#__users', 'b') . ' ON (' . $db->quoteName('a.created_by') . ' = ' . $db->quoteName('b.id') . ')');
		$query->where($db->quoteName('created_by').' = '.$db->quote($userid));
		$db->setQuery($query);
		$profile = $db->loadObject();
		return $profile;
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
	public function save($obj){
		if(empty($obj->id)){
			$obj->created_time = JFactory::getDate()->toSql();
			$result = JFactory::getDbo()->insertObject('#__carshopping_dealer_profile', $obj);
		}else{
			//update user object
			$oldid = $obj->id;
			$obj->id = $obj->created_by;			
			$user = $this->updateUser($obj);	
			$obj->id = $oldid;
			unset($obj->username);
			unset($obj->name);
			unset($obj->email);
			$result = JFactory::getDbo()->updateObject('#__carshopping_dealer_profile', $obj, 'id');
		}
		return $result;
	}
	public function getDealers(){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('*');
		$query->from($db->quoteName('#__carshopping_dealer_profile','a'));		
		$query->join('LEFT', $db->quoteName('#__users', 'b') . ' ON (' . $db->quoteName('a.created_by') . ' = ' . $db->quoteName('b.id') . ')');
		$query->order('name ASC');
		$db->setQuery($query);
		$cities = $db->loadObjectList();
		return $cities;
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
	 * check whether this user is in dealer group
	 * @param $user juser
	 * return boolean
	 */
	public function inDealerGroup($user){
		$dealerGroupId = $this->getDealerGroupId();
		foreach ($user->groups as $groupId => $value){
			if($dealerGroupId==$groupId){
				return TRUE;
			}
		}
		return FALSE;
	}
	public function createEmptyItem(){
		$ret = new stdClass;
		$ret->username = '';		
		$ret->showroom_name = '';
		return $ret;
	}
	
}
