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
class CarshoppingModelShoppingprofiles extends JModelItem
{
	 public function __construct($config = array())
    {
       
        parent::__construct($config);
    }
    
	public function getItemByUserId($userid){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('*');
		$query->from($db->quoteName('#__carshopping_shoppingprofile'));
		$query->where($db->quoteName('created_by').' = '.$db->quote($userid));
		$db->setQuery($query);
		$profile = $db->loadObject();
		return $profile;
	}
	public function save($obj){
		if(empty($obj->id)){
			$obj->created_time = JFactory::getDate()->toSql();
			$result = JFactory::getDbo()->insertObject('#__carshopping_shoppingprofile', $obj);
		}else{
			$result = JFactory::getDbo()->updateObject('#__carshopping_shoppingprofile', $obj, 'id');
		}
		return $result;
	}
	
}
