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
class CarshoppingModelMatches extends JModelList
{
	
    /**
     * Constructor.
     *
     * @param    array    An optional associative array of configuration settings.
     * @see        JController
     * @since    1.6
     */
    public function __construct($config = array())
    {
        if (empty($config['filter_fields']))
        {
            $config['filter_fields'] = array(
                                'id', 'a.id',
                'ordering', 'a.ordering',
                'state', 'a.state',
                'created_by', 'a.created_by',
               
                'created_time', 'a.created_time',

            );
        }
        parent::__construct($config);
    }

    /**
     * Method to auto-populate the model state.
     *
     * Note. Calling getState in this method will result in recursion.
     *
     * @since    1.6
     */
    protected function populateState($ordering = null, $direction = null)
    {


        // Initialise variables.
        $app = JFactory::getApplication();

        // List state information
        $limit = $app->getUserStateFromRequest('global.list.limit', 'limit', $app->getCfg('list_limit'));
        $this->setState('list.limit', $limit);

        $limitstart = $app->input->getInt('limitstart', 0);
        $this->setState('list.start', $limitstart);

        if ($list = $app->getUserStateFromRequest($this->context . '.list', 'list', array(), 'array'))
        {
            foreach ($list as $name => $value)
            {
                // Extra validations
                switch ($name)
                {
                    case 'fullordering':
                        $orderingParts = explode(' ', $value);

                        if (count($orderingParts) >= 2)
                        {
                            // Latest part will be considered the direction
                            $fullDirection = end($orderingParts);

                            if (in_array(strtoupper($fullDirection), array('ASC', 'DESC', '')))
                            {
                                $this->setState('list.direction', $fullDirection);
                            }

                            unset($orderingParts[count($orderingParts) - 1]);

                            // The rest will be the ordering
                            $fullOrdering = implode(' ', $orderingParts);

                            if (in_array($fullOrdering, $this->filter_fields))
                            {
                                $this->setState('list.ordering', $fullOrdering);
                            }
                        }
                        else
                        {
                            $this->setState('list.ordering', $ordering);
                            $this->setState('list.direction', $direction);
                        }
                        break;

                    case 'ordering':
                        if (!in_array($value, $this->filter_fields))
                        {
                            $value = $ordering;
                        }
                        break;

                    case 'direction':
                        if (!in_array(strtoupper($value), array('ASC', 'DESC', '')))
                        {
                            $value = $direction;
                        }
                        break;

                    case 'limit':
                        $limit = $value;
                        break;

                    // Just to keep the default case
                    default:
                        $value = $value;
                        break;
                }

                $this->setState('list.' . $name, $value);
            }
        }

        // Receive & set filters
        if ($filters = $app->getUserStateFromRequest($this->context . '.filter', 'filter', array(), 'array'))
        {
            foreach ($filters as $name => $value)
            {
                $this->setState('filter.' . $name, $value);
            }
        }

        $this->setState('list.ordering', $app->input->get('filter_order'));
        $this->setState('list.direction', $app->input->get('filter_order_Dir'));
    }

    /**
     * Build an SQL query to load the list data.
     *
     * @return    JDatabaseQuery
     * @since    1.6
     */
    protected function getListQuery()
    {
        // Create a new query object.
        $db = $this->getDbo();
        $query = $db->getQuery(true);

        // Select the required fields from the table.
        $query
                ->select(
                        $this->getState(
                                'list.select', 'DISTINCT a.*'
                        )
        );

        $query->from('`#__carshopping_matches` AS a');

        
    // Join over the users for the checked out user.
    $query->select('uc.name AS editor');
    $query->join('LEFT', '#__users AS uc ON uc.id=a.checked_out');
    
		// Join over the created by field 'created_by'
		$query->join('LEFT', '#__users AS created_by ON created_by.id = a.created_by');

	    
$query->where('a.state = 1');

        // Filter by search in title
        $search = $this->getState('filter.search');
        if (!empty($search))
        {
            if (stripos($search, 'id:') === 0)
            {
                $query->where('a.id = ' . (int) substr($search, 3));
            }
            else
            {
                $search = $db->Quote('%' . $db->escape($search, true) . '%');
                
            }
        }

        

        // Add the list ordering clause.
        $orderCol = $this->state->get('list.ordering');
        $orderDirn = $this->state->get('list.direction');
        if ($orderCol && $orderDirn)
        {
            $query->order($db->escape($orderCol . ' ' . $orderDirn));
        }

        return $query;
    }

   
    /**
     * Overrides the default function to check Date fields format, identified by
     * "_dateformat" suffix, and erases the field if it's not correct.
     */
    protected function loadFormData()
    {
        $app = JFactory::getApplication();
        $filters = $app->getUserState($this->context . '.filter', array());
        $error_dateformat = false;
        foreach ($filters as $key => $value)
        {
            if (strpos($key, '_dateformat') && !empty($value) && !$this->isValidDate($value))
            {
                $filters[$key] = '';
                $error_dateformat = true;
            }
        }
        if ($error_dateformat)
        {
            $app->enqueueMessage(JText::_("COM_PRUEBA_SEARCH_FILTER_DATE_FORMAT"), "warning");
            $app->setUserState($this->context . '.filter', $filters);
        }

        return parent::loadFormData();
    }

    /**
     * Checks if a given date is valid and in an specified format (YYYY-MM-DD) 
     * 
     * @param string Contains the date to be checked
     * 
     */
    private function isValidDate($date)
    {
        return preg_match("/^(19|20)\d\d[-](0[1-9]|1[012])[-](0[1-9]|[12][0-9]|3[01])$/", $date) && date_create($date);
    }
	/*custom*/
	public function generateToken($length = 20){
	
		$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
		$charactersLength = strlen($characters);
		$randomString = '';
		for ($i = 0; $i < $length; $i++) {
			$randomString .= $characters[rand(0, $charactersLength - 1)];
		}
		return $randomString;

	}
	/**
	 * get match by product advisor and customer
	 * @param $customerId int from juser->id
	 * @param $productAdvisorId int from juser->id
	 * return match record
	 */
	public function getMatchByCustomerAndProductAdvisor($customerId, $productAdvisorId){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('*');
		$query->from($db->quoteName('#__carshopping_matches'));
		$query->where($db->quoteName('customer_id').' = '.intval($customerId) . ' AND ' . $db->quoteName('product_advisor_id').' = '.intval($productAdvisorId) . ' AND is_active = 1');
		$db->setQuery($query);
		$match = $db->loadObject();
		
		return $match;		
	}
	/**
	 * save a match to db
	 * return boolean
	 */
	public function save($obj){
		$obj->last_activity = JFactory::getDate()->toSql();
		if(empty($obj->id)){
			$obj->created_time = JFactory::getDate()->toSql();
			$result = JFactory::getDbo()->insertObject('#__carshopping_matches', $obj);
		}else{
			$result = JFactory::getDbo()->updateObject('#__carshopping_matches', $obj, 'id');
		}
		return $result;
	}
	/**
	 * get match id by token
	 * @param $token string
	 * return int id
	 */
	public function getMatchIdByToken($token){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.id');
		$query->from($db->quoteName('#__carshopping_matches','a'));
		$query->where($db->quoteName('token').' = '.$db->quote($token));
		$db->setQuery($query);
		//echo $db->getQuery();
		$match = $db->loadObject();
		return $match->id;
	}
	/**
	 * get matches by customer id (for customer's page)
	 * @param $customerId int from juser->id
	 * return array of matches
	 */
	public function getMatchesByCustomer($customerId){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.*, b.name as product_advisor_name');
		$query->from($db->quoteName('#__carshopping_matches','a'));
		$query->join('LEFT', $db->quoteName('#__users', 'b') . ' ON (' . $db->quoteName('a.product_advisor_id') . ' = ' . $db->quoteName('b.id') . ')');
		$query->where($db->quoteName('a.customer_id').' = '.intval($customerId));
		$db->setQuery($query);
		//echo $db->getQuery();
		$matches = $db->loadObjectList();
		//get last message of each match		
		$matchMessageModel = JModelLegacy::getInstance( 'MatchMessages', 'CarshoppingModel' );
		foreach($matches as $match){
			$lastmessage = $matchMessageModel->getLastMessageByMatchId($match->id);
			if(!empty($lastmessage)){
				$match->message = $matchMessageModel->html_cut($lastmessage->message,200);
				$match->user_type_text = $lastmessage->user_type_text;
				$match->name = $lastmessage->name;		
				$match->created_time_text = $lastmessage->created_time_text;	
			}else{
				$match->message = '';
				$match->user_type_text = 'Product Advisor';
				$match->name = $match->product_advisor_name;
				$match->created_time_text = '';
			}
			
		}
		
		return $matches;
	}	
	/**
	 * get matches by product advisor id (for product advisor's page)
	 * @param $productAdvisorId int from juser->id
	 * return array of matches
	 */
	public function getMatchesByProductAdvisor($productAdvisorId){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.*, b.name as customer_name');
		$query->from($db->quoteName('#__carshopping_matches','a'));
		$query->join('LEFT', $db->quoteName('#__users', 'b') . ' ON (' . $db->quoteName('a.customer_id') . ' = ' . $db->quoteName('b.id') . ')');
		$query->where($db->quoteName('a.product_advisor_id').' = '.intval($productAdvisorId));
		$db->setQuery($query);
		//echo $db->getQuery();
		$matches = $db->loadObjectList();
		//get last message of each match		
		$matchMessageModel = JModelLegacy::getInstance( 'MatchMessages', 'CarshoppingModel' );
		foreach($matches as $match){
			$lastmessage = $matchMessageModel->getLastMessageByMatchId($match->id);
			if($lastmessage!=null){
				$match->message = $matchMessageModel->html_cut($lastmessage->message,200);
				$match->user_type_text = $lastmessage->user_type_text;
				$match->name = $lastmessage->name;		
				$match->created_time_text = $lastmessage->created_time_text;	
			}else{
				$match->message = '';
				$match->user_type_text = 'Customer';
				$match->name = $match->customer_name;
				$match->created_time_text = '';
			}
		}
		return $matches;
	}
	/**
	 * get match by match id
	 * @param $matchId int
	 * return match record
	 */
	public function getMatchById($matchId){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.*,b.name as customer_name,c.name as product_advisor_name');
		$query->from($db->quoteName('#__carshopping_matches','a'));
		$query->join('LEFT', $db->quoteName('#__users', 'b') . ' ON (' . $db->quoteName('a.customer_id') . ' = ' . $db->quoteName('b.id') . ')');
		$query->join('LEFT', $db->quoteName('#__users', 'c') . ' ON (' . $db->quoteName('a.product_advisor_id') . ' = ' . $db->quoteName('c.id') . ')');
		$query->where($db->quoteName('a.id').' = '.intval($matchId));
		$db->setQuery($query);
		//echo $db->getQuery();
		$match = $db->loadObject();
		return $match;
	}
}
