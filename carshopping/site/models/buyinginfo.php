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
class CarshoppingModelBuyinginfo extends JModelItem
{
	 public function __construct($config = array())
    {
       
        parent::__construct($config);
    }
    /**
     * save buying info
     * @param $obj __carshopping_buying_info
     * return boolean
     */
    public function save($obj){
		//find existing
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.*');
		$query->from($db->quoteName('#__carshopping_buying_info','a'));
		$query->where($db->quoteName('a.customer_id').' = '.intval($obj->customer_id).' AND '.$db->quoteName('a.vehicle_id').' = '.intval($obj->vehicle_id));
		$db->setQuery($query);
		//echo $db->getQuery();
		$old = $db->loadObject();
		if($old==NULL){
			$obj->created_time = JFactory::getDate()->toSql();
			$obj->state = 1;
			$result = $db->insertObject('#__carshopping_buying_info', $obj);
		}else{
			$obj->id = $old->id;
			$result = $db->updateObject('#__carshopping_buying_info', $obj, 'id');
		}
		return $result;
	}
	/**
	 * get vehicle selections by userid, get the data from vehicle manager component 
	 * from table vehiclemanager_orders join vehiclemanager_vehicles
	 * and the price, notes from carshopping_buying_info
	 * @param $userId(customer) int from juser->id
	 * @param $productAdvisorId int from juser->id
	 * return array of vehiclemanager_vehicles.id, vehiclemanager_vehicles.vtitle,price,note
	 */
	public function getBuyingInfo($userId,$productAdvisorId){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('c.id,a.fk_vehicle_id as vehicle_id,b.vtitle as vehicle_name,c.note1,c.price,b.image_link,c.created_by,b.price as oriprice');
		$query->from($db->quoteName('#__vehiclemanager_orders','a'));
		$query->join('INNER', $db->quoteName('#__vehiclemanager_vehicles', 'b') . ' ON (' . $db->quoteName('a.fk_vehicle_id') . ' = ' . $db->quoteName('b.id') . ')');
		$query->join('LEFT', $db->quoteName('#__carshopping_buying_info', 'c') . ' ON (' . $db->quoteName('a.id') . ' = ' . $db->quoteName('c.vehiclemanager_orders_id') . ')');
		$query->where($db->quoteName('a.fk_user_id').' = '.intval($userId).' AND status='.$db->quote('Pending'));
		//$query->order('a.weight DESC,a.id DESC');
		$query->order('a.order_date DESC');
		$query->setLimit(3);		
		$db->setQuery($query);
		//echo $db->getQuery();
		$vehicles = $db->loadObjectList();
		//filter by product advisor id
		//echo 'prodid'.$productAdvisorId;
		//var_dump($vehicles);
		$results = array();
		foreach($vehicles as &$v){
			if($v->price == NULL){
				$v->price = $v->oriprice;
			}
			if($v->created_by==NULL || $v->created_by==$productAdvisorId){
				$results[] = $v;
			}
		}
		return $results;
	}
	/**
	 * get vehicle selections by id, get the data from vehicle manager component 
	 * from table vehiclemanager_orders join vehiclemanager_vehicles
	 * and the price, notes from carshopping_buying_info
	 * @param $id int from __carshopping_buying_info->id
	 * return __carshopping_buying_info record [vehiclemanager_vehicles.id, vehiclemanager_vehicles.vtitle,price,note]
	 */
	public function getBuyingInfoById($id){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('c.id,a.fk_vehicle_id as vehicle_id,b.vtitle as vehicle_name,c.note1,c.price,b.image_link');
		$query->from($db->quoteName('#__vehiclemanager_orders','a'));
		$query->join('INNER', $db->quoteName('#__vehiclemanager_vehicles', 'b') . ' ON (' . $db->quoteName('a.fk_vehicle_id') . ' = ' . $db->quoteName('b.id') . ')');
		$query->join('LEFT', $db->quoteName('#__carshopping_buying_info', 'c') . ' ON (' . $db->quoteName('a.id') . ' = ' . $db->quoteName('c.vehiclemanager_orders_id') . ')');
		$query->where($db->quoteName('c.id').' = '.intval($id).' AND status='.$db->quote('Pending'));		
		
		$query->setLimit(3);		
		$db->setQuery($query);
		//echo $db->getQuery();
		$info = $db->loadObject();
		return $info;
	}
	/**
	 * get vehicle info from vehicle manager __vehiclemanager_vehicles
	 * @param $vid int __vehiclemanager_vehicles.id
	 * return __vehiclemanager_vehicles record
	 */
	public function getVehicleByVehicleId($vid){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('b.id as vehicle_id,b.vtitle as vehicle_name,b.image_link,b.price');
		$query->from($db->quoteName('#__vehiclemanager_vehicles','b'));		
		$query->where($db->quoteName('b.id').' = '.intval($vid));				
		$db->setQuery($query);
		//echo $db->getQuery();
		$vehicle = $db->loadObject();
		return $vehicle;
	}
	public function getOrderByCustomerAndVehicle($customerId,$vehicleId){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.*');
		$query->from($db->quoteName('#__vehiclemanager_orders','a'));
		$query->where($db->quoteName('a.fk_user_id').' = '.intval($customerId).' AND '.$db->quoteName('a.fk_vehicle_id').' = '.intval($vehicleId));
		$db->setQuery($query);
		//echo $db->getQuery();
		$ret = $db->loadObject();
		return $ret;
	}
}
