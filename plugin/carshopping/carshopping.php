<?php
/**
 * @version     1.0.0
 * @package     carshopping
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      aldo <aldopraherda@gmail.com> - http://www.aldoapp.com
 */
defined('JPATH_BASE') or die;

/**
 * Carshopping plugin to hook user after delete event
 *
 */
class PlgUserCarshopping extends JPlugin
{
	/**
	 * Application object
	 *
	 * @var    JApplicationCms
	 * @since  3.2
	 */
	protected $app;

	/**
	 * Database object
	 *
	 * @var    JDatabaseDriver
	 * @since  3.2
	 */
	protected $db;

	/**
	 * Remove all sessions for the user name
	 *
	 * Method is called after user data is deleted from the database
	 *
	 * @param   array    $user     Holds the user data
	 * @param   boolean  $success  True if user was successfully stored in the database
	 * @param   string   $msg      Message
	 *
	 * @return  boolean
	 *
	 * @since   1.6
	 */
	public function onUserAfterDelete($user, $success, $msg)
	{		
		if (!$success)
		{
			return false;
		}
		
		$userId = JArrayHelper::getValue($user, 'id', 0, 'int');		
		if ($userId){
			try{			
				$user = json_decode(json_encode($user), FALSE);
				
				jimport('joomla.application.component.model');				
				//delete customer user		
				JLoader::import( 'customers', JPATH_ADMINISTRATOR . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_carshopping' . DIRECTORY_SEPARATOR . 'models' );
				$customersModel = JModelLegacy::getInstance('Customers','CarshoppingModel');
				if($customersModel->inCustomerGroup($user)){
					$result = $customersModel->delete($userId);		
				}
				//delete product advisor user
				JLoader::import( 'productadvisors', JPATH_ADMINISTRATOR . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_carshopping' . DIRECTORY_SEPARATOR . 'models' );
				$productAdvisorsModel = JModelLegacy::getInstance('Productadvisors','CarshoppingModel');
				if($productAdvisorsModel->inProductAdvisorGroup($user)){					
					$result = $productAdvisorsModel->delete($userId);	
				}
				//delete dealer user
				JLoader::import( 'dealers', JPATH_ADMINISTRATOR . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_carshopping' . DIRECTORY_SEPARATOR . 'models' );
				$dealerModel = JModelLegacy::getInstance('Dealers','CarshoppingModel');
				if($dealerModel->inDealerGroup($user)){					
					$result = $dealerModel->delete($userId);	
				}
			}
			catch (Exception $e)
			{
				die($e->getMessage());
				$this->_subject->setError($e->getMessage());

				return false;
			}
		}		
		return true;
	}

	

	/**
	 * This method will return a user object
	 *
	 * If options['autoregister'] is true, if the user doesn't exist yet he will be created
	 *
	 * @param   array  $user     Holds the user data.
	 * @param   array  $options  Array holding options (remember, autoregister, group).
	 *
	 * @return  object  A JUser object
	 *
	 * @since   1.5
	 */
	protected function _getUser($user, $options = array())
	{
		$instance = JUser::getInstance();
		$id = (int) JUserHelper::getUserId($user['username']);

		if ($id)
		{
			$instance->load($id);

			return $instance;
		}

		// TODO : move this out of the plugin
		$config = JComponentHelper::getParams('com_users');

		// Hard coded default to match the default value from com_users.
		$defaultUserGroup = $config->get('new_usertype', 2);

		$instance->set('id', 0);
		$instance->set('name', $user['fullname']);
		$instance->set('username', $user['username']);
		$instance->set('password_clear', $user['password_clear']);

		// Result should contain an email (check).
		$instance->set('email', $user['email']);
		$instance->set('groups', array($defaultUserGroup));

		// If autoregister is set let's register the user
		$autoregister = isset($options['autoregister']) ? $options['autoregister'] : $this->params->get('autoregister', 1);

		if ($autoregister)
		{
			if (!$instance->save())
			{
				JLog::add('Error in autoregistration for user ' . $user['username'] . '.', JLog::WARNING, 'error');
			}
		}
		else
		{
			// No existing user and autoregister off, this is a temporary user.
			$instance->set('tmp_user', true);
		}

		return $instance;
	}
}
