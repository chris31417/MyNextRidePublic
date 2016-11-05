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
class CarshoppingModelDealers extends JModelList {

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
                //'dealername','duser.name'

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
        $query->from('`#__carshopping_dealer_profile` AS a');
		
		
		$query->select("b.name,b.email,b.username");
		$query->join('LEFT', $db->quoteName('#__users', 'b') . ' ON (' . $db->quoteName('a.created_by') . ' = ' . $db->quoteName('b.id') . ')');
						
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
     * delete dealers by primary key of __carshopping_dealer_profile table
     * @param array of primary keys
     * return boolean
     */
	public function deleteDealers($ids){
		$db = JFactory::getDbo();
		$result = true;
		foreach($ids as $id){					
			//load the record first					
			$query = $db->getQuery(TRUE);
			$query->select('*');
			$query->from($db->quoteName('#__carshopping_dealer_profile','a'));			
			$query->where($db->quoteName('id').' = '.intval($id));
			$db->setQuery($query);
			$profile = $db->loadObject();
			if($profile!=NULL){
				$userid = $profile->created_by;
				//delete
				$query = $db->getQuery(true);
				$query->delete($db->quoteName('#__carshopping_dealer_profile'));
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
	/**
	 * delete dealer with all related data
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
		$query->delete($db->quoteName('#__carshopping_dealer_profile'));
		$query->where($conditions);
		$db->setQuery($query);
		$result = $db->execute(); 
		//delete messages
		$query = $db->getQuery(TRUE);			
		$query->delete($db->quoteName('#__carshopping_matches_messages'));
		$query->where($conditions);
		$db->setQuery($query);
		$result = $db->execute(); 	
	}
}
