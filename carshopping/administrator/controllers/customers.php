<?php
/**
 * @version     1.0.0
 * @package     com_carshopping
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      aldo <aldopraherda@gmail.com> - http://www.aldoapp.com
 */

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.controlleradmin');
/**
 * Customers list controller class.
 */
class CarshoppingControllerCustomers extends JControllerAdmin
{
	public function __construct($config = array())
    {
        parent::__construct($config);
        //...
        

    }
	/**
	 * Proxy for getModel.
	 * @since	1.6
	 */
	public function getModel($name = 'Customers', $prefix = 'CarshoppingModel', $config = array())
	{
		
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
    
    
	/**
	 * Method to save the submitted ordering values for records via AJAX.
	 *
	 * @return  void
	 *
	 * @since   3.0
	 */
	public function saveOrderAjax()
	{
		// Get the input
		$input = JFactory::getApplication()->input;
		$pks = $input->post->get('cid', array(), 'array');
		$order = $input->post->get('order', array(), 'array');

		// Sanitize the input
		JArrayHelper::toInteger($pks);
		JArrayHelper::toInteger($order);

		// Get the model
		$model = $this->getModel();

		// Save the ordering
		$return = $model->saveorder($pks, $order);

		if ($return)
		{
			echo "1";
		}

		// Close the application
		JFactory::getApplication()->close();
	}
    
   
	public function delete(){
		$app = JFactory::getApplication();
		$input = $app->input;
		$pks = $input->post->get('cid', array(), 'array');
		JArrayHelper::toInteger($pks);
		$model = $this->getModel();
		$ret = $model->deleteCustomers($pks);
		if($ret){
			$msg = 'Deleted';
			$msgType = 'success';
		}else{
			$msg = 'Failed to delete';
			$msgType = 'error';
		}
		$link = 'index.php?option=com_carshopping&view=customers';
		$app->redirect($link,$msg,$msgType);
	} 
    
}
