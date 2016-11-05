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

require_once JPATH_COMPONENT.'/controller.php';

/**
 * Shoppingprofile list controller class.
 */
class CarshoppingControllerShoppingprofiles extends CarshoppingController
{
	/**
	 * Proxy for getModel.
	 * @since	1.6
	 */
	public function &getModel($name = 'Shoppingprofiles', $prefix = 'CarshoppingModel', $config = array())
	{
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
	public function save(){
		//print_r($_POST);
		$app = JFactory::getApplication();
		$jinput = $app->input; 
		$object = new stdClass();
		$object->q1 = $jinput->getString('q1','');
		$err = '';
		if(empty($object->q1)){
			$err = 'Please fill all fields';
			$ret = false;
		}else{
			$ret = $this->addShoppingProfile($object);
		}
		$app = JFactory::getApplication(); 		
				
		if($ret){
			$link = 'index.php?option=com_carshopping&view=surveys'; 
			$msg = 'Your Shopping Profile has been successfully saved'; 			
			$msgType='message';
		}else{
			$link = 'index.php?option=com_carshopping&view=shoppingprofiles'; 
			$msg = 'Failed to save your Shopping Profile. '.$err; 			
			$msgType='error';
		}
		$app->redirect($link, $msg, $msgType);
	}
	
	public function addShoppingProfile($obj){
		$model = $this->getModel();		
		$user = JFactory::getUser();
		$session  = JFactory::getSession();
		$session->set('shoppingprofile',$obj);
		//if guest store it in cookie
		if($user->guest){
			$result = true;
		}else{
			$old = $model->getItemByUserId($user->id);
			$obj->id = $old->id;
			$obj->created_by = $user->id;	
			$obj->state = 1;		
			$result = $model->save($obj);
		}
		
		return $result;
	}
}
