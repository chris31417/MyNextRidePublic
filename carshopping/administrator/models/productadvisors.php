<?php

/**
 * @version     1.0.0
 * @package     com_carshopping
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      aldo <aldopraherda@gmail.com> - http://www.aldoapp.com
 */
defined('_JEXEC') or die;

jimport('joomla.application.component.modellist');

/**
 * Methods supporting a list of Carshopping records.
 */
class CarshoppingModelProductadvisors extends JModelList {

    /**
     * Constructor.
     *
     * @param    array    An optional associative array of configuration settings.
     * @see        JController
     * @since    1.6
     */
    public function __construct($config = array()) {
        if (empty($config['filter_fields'])) {
            $config['filter_fields'] = array(
                                'id', 'a.id',
                'ordering', 'a.ordering',
                'state', 'a.state',
                'created_by', 'a.created_by',               
                'created_time', 'a.created_time',
                'name', 'b.name',
                'dealername','duser.name',
                'block', 'b.block'

            );
        }

        parent::__construct($config);
    }

    /**
     * Method to auto-populate the model state.
     *
     * Note. Calling getState in this method will result in recursion.
     */
    protected function populateState($ordering = null, $direction = null) {
        // Initialise variables.
        $app = JFactory::getApplication('administrator');

        // Load the filter state.
        $search = $app->getUserStateFromRequest($this->context . '.filter.search', 'filter_search');
        $this->setState('filter.search', $search);

        $published = $app->getUserStateFromRequest($this->context . '.filter.state', 'filter_published', '', 'string');
        $this->setState('filter.state', $published);

        

        // Load the parameters.
        $params = JComponentHelper::getParams('com_carshopping');
        $this->setState('params', $params);

        // List state information.
        parent::populateState('a.id', 'asc');
    }

    /**
     * Method to get a store id based on model configuration state.
     *
     * This is necessary because the model is used by the component and
     * different modules that might need different sets of data or different
     * ordering requirements.
     *
     * @param	string		$id	A prefix for the store id.
     * @return	string		A store id.
     * @since	1.6
     */
    protected function getStoreId($id = '') {
        // Compile the store id.
        $id.= ':' . $this->getState('filter.search');
        $id.= ':' . $this->getState('filter.state');

        return parent::getStoreId($id);
    }

    /**
     * Build an SQL query to load the list data.
     *
     * @return	JDatabaseQuery
     * @since	1.6
     */
    protected function getListQuery() {
        // Create a new query object.
        $db = $this->getDbo();
        $query = $db->getQuery(true);

        // Select the required fields from the table.
        $query->select(
                $this->getState(
                        'list.select', 'DISTINCT a.*'
                )
        );
        $query->from('`#__carshopping_product_advisor_profile` AS a');
		
		
		$query->select("b.name,b.email,b.username,b.block");
		$query->join('LEFT', $db->quoteName('#__users', 'b') . ' ON (' . $db->quoteName('a.created_by') . ' = ' . $db->quoteName('b.id') . ')');
		
		$query->select("c.name as city");
		$query->join('LEFT', $db->quoteName('#__carshopping_city','c'). ' ON (' . $db->quoteName('a.city_id').  ' = ' . $db->quoteName('c.id') .')');
		
		$query->select("duser.name as dealername");
		$query->join('LEFT', $db->quoteName('#__carshopping_dealer_profile','d'). ' ON (' . $db->quoteName('d.created_by').  ' = ' . $db->quoteName('a.dealer_id') .')');
        $query->join('LEFT', $db->quoteName('#__users', 'duser') . ' ON (' . $db->quoteName('d.created_by') . ' = ' . $db->quoteName('duser.id') . ')');

		// Filter by published state
		/*
		$published = $this->getState('filter.state');
		if (is_numeric($published)) {
			$query->where('a.state = ' . (int) $published);
		} else if ($published === '') {
			$query->where('(a.state IN (0, 1))');
		}*/

        // Filter by search in title
        $search = $this->getState('filter.search');
        if (!empty($search)) {
            if (stripos($search, 'id:') === 0) {
                $query->where('a.id = ' . (int) substr($search, 3));
            } else {
                $search = $db->Quote('%' . $db->escape($search, true) . '%');
                 $query->where('( b.name LIKE '.$search.' OR b.username LIKE '.$search.')');
            }
        }
        // Add the list ordering clause.
        $orderCol = $this->state->get('list.ordering');
        $orderDirn = $this->state->get('list.direction');
        if ($orderCol && $orderDirn) {
            $query->order($db->escape($orderCol . ' ' . $orderDirn));
        }

        return $query;
    }
    /**
     * delete product advisor by primary key of __carshopping_product_advisor_profile table
     * @param array of primary keys
     * return boolean
     */
	public function deleteAdvisors($ids){
		$db = JFactory::getDbo();
		$result = true;
		foreach($ids as $id){					
			//load the record first					
			$query = $db->getQuery(TRUE);
			$query->select('*');
			$query->from($db->quoteName('#__carshopping_product_advisor_profile','a'));			
			$query->where($db->quoteName('id').' = '.intval($id));
			$db->setQuery($query);
			$profile = $db->loadObject();
			if($profile!=NULL){
				$userid = $profile->created_by;
				//delete
				$query = $db->getQuery(true);
				$query->delete($db->quoteName('#__carshopping_product_advisor_profile'));
				$conditions = array(
					$db->quoteName('id') . ' = ' . intval($id), 				
				);
				$query->where($conditions);
				$db->setQuery($query);
				$result &= $db->execute();
				$instance = JUser::getInstance($userid);
				if($userid)
				{
					$result &= $instance->delete();					
				}
			}						
		}
		return $result;
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
		$productAdvisorGroupId = $this->getProductAdvisorGroupId();
		foreach ($user->groups as $groupId => $value){
			if($productAdvisorGroupId==$groupId){
				return TRUE;
			}
		}
		return FALSE;
	}
	/**
	 * delete product advisor related data 
	 * @param $userId int from juser->id
	 * return void
	 */
	public function delete($userId){		
		$db = JFactory::getDbo();
		//delete profile
		$query = $db->getQuery(TRUE);
		$conditions = array(
			$db->quoteName('created_by') . ' = ' . intval($userId), 			
		);		 
		$query->delete($db->quoteName('#__carshopping_product_advisor_profile'));
		$query->where($conditions);
		$db->setQuery($query);
		$result = $db->execute(); 		
		//get matches
		$query = $db->getQuery(TRUE);
		$query->select('a.*');
		$query->from($db->quoteName('#__carshopping_matches','a'));		
		$query->where($db->quoteName('a.product_advisor_id').' = '.intval($userId));
		$db->setQuery($query);
		//echo $db->getQuery();
		$matches = $db->loadObjectList();
		if($matches!=NULL){
			foreach($matches as $match){				
				//delete each message						
				$query = $db->getQuery(TRUE);
				$conditions = array(
					$db->quoteName('match_id') . ' = ' . intval($match->id), 			
				);				 
				$query->delete($db->quoteName('#__carshopping_matches_messages'));
				$query->where($conditions);
				$db->setQuery($query);
				$result = $db->execute();
				//delete match				
				$query = $db->getQuery(TRUE);
				$conditions = array(
					$db->quoteName('id') . ' = ' . intval($match->id), 			
				);				 
				$query->delete($db->quoteName('#__carshopping_matches'));
				$query->where($conditions);
				$db->setQuery($query);
				$result = $db->execute();
			}
		}
		//delete brand		
		$query = $db->getQuery(TRUE);
		$conditions = array(
			$db->quoteName('product_advisor_id') . ' = ' . intval($userId), 			
		);				 
		$query->delete($db->quoteName('#__carshopping_product_advisors_brand'));
		$query->where($conditions);
		$db->setQuery($query);
		$result = $db->execute();
		//delete recommendation		
		$query = $db->getQuery(TRUE);
		$conditions = array(
			$db->quoteName('created_by') . ' = ' . intval($userId), 			
		);				 
		$query->delete($db->quoteName('#__carshopping_recommendation'));		
		$query->where($conditions);
		$db->setQuery($query);
		$result = $db->execute();
	}
	 /**
     * approve product advisor by primary key of __carshopping_product_advisor_profile table
     * @param array of primary keys
     * return boolean
     */
	public function approveAdvisors($ids){
		$db = JFactory::getDbo();
		$result = true;
		foreach($ids as $id){				
			//load the record first					
			$query = $db->getQuery(TRUE);
			$query->select('*');
			$query->from($db->quoteName('#__carshopping_product_advisor_profile','a'));			
			$query->where($db->quoteName('id').' = '.intval($id));
			$db->setQuery($query);
			$profile = $db->loadObject();
			if($profile!=NULL){
				$userid = $profile->created_by;
				$instance = JUser::getInstance($userid);
				$instance->set('block',0);
				$result &= $instance->save();
				
			}
		}
		return $result;
	}
}
