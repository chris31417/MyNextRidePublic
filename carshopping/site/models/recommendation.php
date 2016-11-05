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
class CarshoppingModelRecommendation extends JModelItem
{
	 public function __construct($config = array())
    {
       
        parent::__construct($config);
    }
    /**
     * add product advisor recommendation
     * @param $obj [vehicle_id int ]
     * return boolean
     */
    public function addRecommendation($obj){
		//find existing
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.*');
		$query->from($db->quoteName('#__carshopping_recommendation','a'));
		$query->where($db->quoteName('a.created_by').' = '.intval($obj->created_by).' AND '.$db->quoteName('a.vehicle_id').' = '.intval($obj->vehicle_id));
		$db->setQuery($query);
		//echo $db->getQuery();
		$oldrecommendation = $db->loadObject();
		if($oldrecommendation==NULL){
			$obj->created_time = JFactory::getDate()->toSql();
			$obj->state = 1;
			$result = JFactory::getDbo()->insertObject('#__carshopping_recommendation', $obj);
		}
		return $result;
	}
	/**
	 * get product advisor recommendation list by product advisor id 
	 * @param $productAdvisorId int from juser->id
	 * return array of recommendation join with vehicle 
	 */
    public function getRecommendationByProductAdvisor($productAdvisorId){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.*,c.vtitle,c.image_link');
		$query->from($db->quoteName('#__carshopping_recommendation','a'));
		$query->join('inner',$db->quoteName('#__vehiclemanager_vehicles','c'). ' ON (' . $db->quoteName('a.vehicle_id').  ' = ' . $db->quoteName('c.id') .')');
		$query->where($db->quoteName('a.created_by').' = '.intval($productAdvisorId));
		$db->setQuery($query);
		//echo $db->getQuery();
		return $db->loadObjectList();
		
	}
	/**
	 * get product advisor recommendation list by id 
	 * @param $id int from __carshopping_recommendation id
	 * return one record of recommendation join with vehicle 
	 */
    public function getRecommendationById($id){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.*,c.vtitle,c.image_link');
		$query->from($db->quoteName('#__carshopping_recommendation','a'));
		$query->join('inner',$db->quoteName('#__vehiclemanager_vehicles','c'). ' ON (' . $db->quoteName('a.vehicle_id').  ' = ' . $db->quoteName('c.id') .')');
		$query->where($db->quoteName('a.id').' = '.intval($id));
		$db->setQuery($query);
		//echo $db->getQuery();
		return $db->loadObject();
		
	}
	/**
	 * save recommendation by id
	 * @param $id int id carshopping_recommendation
	 * return boolean
	 */
	public function saveRecommendation($obj){		
		return JFactory::getDbo()->updateObject('#__carshopping_recommendation', $obj, 'id');
	}
	/**
	 * remove a recommendation
	 * @param $id int id carshopping_recommendation
	 * return boolean
	 */
	public function removeRecommendation($id){
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		 
		// delete all custom keys for user 1001.
		$conditions = array(
			$db->quoteName('id') . ' = ' . intval($id), 			
		);
		 
		$query->delete($db->quoteName('#__carshopping_recommendation'));
		$query->where($conditions);		 
		$db->setQuery($query);		 		 
		$result = $db->execute();
		return $result;
	}
}
