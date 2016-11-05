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
class CarshoppingModelSurveys extends JModelList
{

	const TABLE = '#__carshopping_survey';
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
                'q1', 'a.q1',
                'q11', 'a.q11',
                'q2', 'a.q2',
                'q3', 'a.q3',
                'q4', 'a.q4',
                'q5', 'a.q5',
                'q6', 'a.q6',
                'q7', 'a.q7',
                'q8', 'a.q8',
                'q9', 'a.q9',
                'q10', 'a.q10',
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

        $query->from('`#__carshopping_survey` AS a');

        
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

    public function getItems()
    {
        $items = parent::getItems();
        foreach($items as $item){
	
					$item->q1 = JText::_('COM_CARSHOPPING_SURVEYS_Q1_OPTION_' . strtoupper($item->q1));
					$item->q11 = JText::_('COM_CARSHOPPING_SURVEYS_Q11_OPTION_' . strtoupper($item->q11));
					$item->q2 = JText::_('COM_CARSHOPPING_SURVEYS_Q2_OPTION_' . strtoupper($item->q2));
					$item->q3 = JText::_('COM_CARSHOPPING_SURVEYS_Q3_OPTION_' . strtoupper($item->q3));
					$item->q5 = JText::_('COM_CARSHOPPING_SURVEYS_Q5_OPTION_' . strtoupper($item->q5));
					$item->q6 = JText::_('COM_CARSHOPPING_SURVEYS_Q6_OPTION_' . strtoupper($item->q6));
					$item->q7 = JText::_('COM_CARSHOPPING_SURVEYS_Q7_OPTION_' . strtoupper($item->q7));
					$item->q9 = JText::_('COM_CARSHOPPING_SURVEYS_Q9_OPTION_' . strtoupper($item->q9));
					$item->q10 = JText::_('COM_CARSHOPPING_SURVEYS_Q10_OPTION_' . strtoupper($item->q10));
}
        return $items;
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
	/**
	 * save the survey result to the database
	 * @param $obj object with column as properties
	 * return boolean true when ok
	 */	
	
	public function getFields(){
		$item = new stdClass;
		$item->q1 = '';
		$item->q11 = '';
		$item->q2 = '';
		$item->q3 = '';
		$item->q4 = '';
		$item->q5 = '';
		$item->q6 = '';
		$item->q7 = '';
		$item->q9 = '';
		$item->q10 = '';
		return $item;
	}
	public function getItemByUserId($userid){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('*');
		$query->from($db->quoteName('#__carshopping_survey'));
		$query->where($db->quoteName('created_by').' = '.$db->quote($userid));
		$db->setQuery($query);
		$profile = $db->loadObject();
		return $profile;
	}
	public function save($obj){
		if(empty($obj->id)){
			$obj->created_time = JFactory::getDate()->toSql();
			$result = JFactory::getDbo()->insertObject('#__carshopping_survey', $obj);
		}else{
			$result = JFactory::getDbo()->updateObject('#__carshopping_survey', $obj, 'id');
		}
		return $result;
	}
}
