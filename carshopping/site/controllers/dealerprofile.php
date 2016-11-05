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
 * Dealerprofile list controller class.
 */
class CarshoppingControllerDealerprofile extends CarshoppingController
{
	/**
	 * Proxy for getModel.
	 * @since	1.6
	 */
	public function &getModel($name = 'Dealerprofile', $prefix = 'CarshoppingModel', $config = array())
	{
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
	public function save(){
		//print_r($_POST);
		$app = JFactory::getApplication();		
		$jinput = $app->input; 
		$object = new stdClass();
		$object->username = $jinput->getString('username','');
		$object->name = $jinput->getString('name','');
		$object->email = $jinput->getString('email','');
		$object->showroom_name = $jinput->getString('showroom_name','');
		$err = '';
		//check all fields
		$vars = get_object_vars($object);
		foreach($vars as $k=>$v){
			if(empty($v)){
				$err = 'Please fill all fields';
				$ret = false;
				break;
			}	
		}		
		
		if(empty($err)){
			$ret = $this->addDealerprofile($object);
		}
		$app = JFactory::getApplication(); 
		$link = 'index.php?option=com_carshopping&view=dealerprofile'; 
		
		
		if($ret){
			$msg = 'Your profile has been successfully saved'; 			
		}else{
			$msg = 'Failed to save your profile. ' . $err; 			
		}
		$app->redirect($link, $msg, $msgType='message');
	}
	public function addDealerprofile($obj){		
		$model = $this->getModel();		
		$user = JFactory::getUser();
		if(!$model->inDealerGroup($user)){
			throw new Exception('THis user is not in dealer group');
		}
		$old = $model->getItemByUserId($user->id);
		$obj->id = $old->id;
		$obj->created_by = $user->id;	
		$obj->state = 1;		
		$result = $model->save($obj);
		
		return $result;
	}
}
