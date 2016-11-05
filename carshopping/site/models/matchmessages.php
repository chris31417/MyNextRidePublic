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
define("SECOND", 1);
define("MINUTE", 60 * SECOND);
define("HOUR", 60 * MINUTE);
define("DAY", 24 * HOUR);
define("MONTH", 30 * DAY); 
class CarshoppingModelMatchMessages extends JModelList
{
	const USER_TYPE_CUSTOMER = 1;
	const USER_TYPE_PRODUCT_ADVISOR = 2;
	const USER_TYPE_DEALER = 3;
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

        $query->from('`#__carshopping_matches_messages` AS a');

        
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
	
	public function save($obj){
		if(empty($obj->id)){
			$obj->created_time = JFactory::getDate()->toSql();
			$result = JFactory::getDbo()->insertObject('#__carshopping_matches_messages', $obj);
		}else{
			$result = JFactory::getDbo()->updateObject('#__carshopping_matches_messages', $obj, 'id');
		}
		return $result;
	}
	/**
	 * get all messages by match id sorted by created time asc
	 * @param $matchId int 
	 * return array
	 */
	public function getMessages($matchId){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.created_time, a.created_by, a.message, a.user_type, b.name');
		$query->from($db->quoteName('#__carshopping_matches_messages','a'));
		$query->join('LEFT', $db->quoteName('#__users', 'b') . ' ON (' . $db->quoteName('a.created_by') . ' = ' . $db->quoteName('b.id') . ')');
		$query->where($db->quoteName('a.match_id').' = '.intval($matchId));
		$db->setQuery($query);
		$messages = $db->loadObjectList();
		if($messages!=NULL){
			foreach($messages as $msg){
				$this->formatMessage($msg);
			}
		}
		return $messages;
	}
	/**
	 * format a message record 
	 * @param $msg record of matches_messages table
	 * return object of formated message
	 */
	public function formatMessage(&$msg){
		$msg->created_time_text = $this->relativeTime(strtotime($msg->created_time));
		$user_type = '';
		switch($msg->user_type){
			case CarshoppingModelMatchMessages::USER_TYPE_CUSTOMER:
				$user_type = 'Customer';
			break;
			case CarshoppingModelMatchMessages::USER_TYPE_DEALER:
				$user_type = 'Dealer';
			break;
			case CarshoppingModelMatchMessages::USER_TYPE_PRODUCT_ADVISOR:
				$user_type = 'Product Advisor';
			break;
		}
		$msg->user_type_text = $user_type;
		//remove domain from email address
		$parts = explode('@',$msg->name);
		$msg->name = $parts[0];
		return $msg;
	}
	/**
	 * get last message text (excerpt) of a match
	 * @param $matchId int from match
	 * return message record
	 */
	public function getLastMessageByMatchId($matchId){
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('a.message,a.user_type,a.created_time,b.name');
		$query->from($db->quoteName('#__carshopping_matches_messages','a'));
		$query->join('LEFT', $db->quoteName('#__users', 'b') . ' ON (' . $db->quoteName('a.created_by') . ' = ' . $db->quoteName('b.id') . ')');
		$query->where($db->quoteName('match_id').' = '.intval($matchId));
		$query->order('created_time DESC');
		$db->setQuery($query);
		//echo $db->getQuery();
		$message = $db->loadObject();
		if($message!=NULL){
			$this->formatMessage($message);
		}
		return $message;
	}
	/**
	 * format time to friendly time
	 * @param string yyyy-mm-dd hh:mm:ss
	 * return string
	 */
	function relativeTime($time)
	{   
		$delta = time() - $time;

		if ($delta < 1 * MINUTE)
		{
			return $delta == 1 ? "one second ago" : $delta . " seconds ago";
		}
		if ($delta < 2 * MINUTE)
		{
		  return "a minute ago";
		}
		if ($delta < 45 * MINUTE)
		{
			return floor($delta / MINUTE) . " minutes ago";
		}
		if ($delta < 90 * MINUTE)
		{
		  return "an hour ago";
		}
		if ($delta < 24 * HOUR)
		{
		  return floor($delta / HOUR) . " hours ago";
		}
		if ($delta < 48 * HOUR)
		{
		  return "yesterday";
		}
		if ($delta < 30 * DAY)
		{
			return floor($delta / DAY) . " days ago";
		}
		if ($delta < 12 * MONTH)
		{
		  $months = floor($delta / DAY / 30);
		  return $months <= 1 ? "one month ago" : $months . " months ago";
		}
		else
		{
			$years = floor($delta / DAY / 365);
			return $years <= 1 ? "one year ago" : $years . " years ago";
		}
	}   
	/**
	 * cut html tag to create excerpt
	 * @param $text html code
	 * @param $max_length int
	 * return string html code
	 */
	public function html_cut($text, $max_length)
	{
		$tags   = array();
		$result = "";

		$is_open   = false;
		$grab_open = false;
		$is_close  = false;
		$in_double_quotes = false;
		$in_single_quotes = false;
		$tag = "";

		$i = 0;
		$stripped = 0;

		$stripped_text = strip_tags($text);

		while ($i < strlen($text) && $stripped < strlen($stripped_text) && $stripped < $max_length)
		{
			$symbol  = $text{$i};
			$result .= $symbol;

			switch ($symbol)
			{
			   case '<':
					$is_open   = true;
					$grab_open = true;
					break;

			   case '"':
				   if ($in_double_quotes)
					   $in_double_quotes = false;
				   else
					   $in_double_quotes = true;

				break;

				case "'":
				  if ($in_single_quotes)
					  $in_single_quotes = false;
				  else
					  $in_single_quotes = true;

				break;

				case '/':
					if ($is_open && !$in_double_quotes && !$in_single_quotes)
					{
						$is_close  = true;
						$is_open   = false;
						$grab_open = false;
					}

					break;

				case ' ':
					if ($is_open)
						$grab_open = false;
					else
						$stripped++;

					break;

				case '>':
					if ($is_open)
					{
						$is_open   = false;
						$grab_open = false;
						array_push($tags, $tag);
						$tag = "";
					}
					else if ($is_close)
					{
						$is_close = false;
						array_pop($tags);
						$tag = "";
					}

					break;

				default:
					if ($grab_open || $is_close)
						$tag .= $symbol;

					if (!$is_open && !$is_close)
						$stripped++;
			}

			$i++;
		}

		while ($tags)
			$result .= "</".array_pop($tags).">";

		return $result;
	} 
	public function sendEmailMatchMessage($fromx,$to,$subject,$msg){
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
}
