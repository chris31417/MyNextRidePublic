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
 * Dilemma list controller class.
 */
class CarshoppingControllerDilemmas extends CarshoppingController
{
	/**
	 * Proxy for getModel.
	 * @since	1.6
	 */
	public function &getModel($name = 'Dilemmas', $prefix = 'CarshoppingModel', $config = array())
	{
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
	public function save(){
		//print_r($_POST);
		$app = JFactory::getApplication();
		$jinput = $app->input; 
		$object = new stdClass();
	
		$dilemma = $jinput->get('dilemma',array(),'array');
		$err = '';
		if(count($dilemma)==0){
			//$ret = false;
			//$err = 'Please check one or more dilemma';
		}else{
			$object->q1 = json_encode($dilemma);
			$ret = $this->addDilemma($object);	
		}
		
		$app = JFactory::getApplication(); 
		$link = 'index.php?option=com_carshopping&view=dilemmas'; 		
		
		if($ret){
			$msg = 'Your answers has been successfully saved'; 			
		}else{
			$msg = 'Failed to save your answer. ' . $err; 			
		}
		//check whether this user already registered
		$user = JFactory::getUser();
		if($user->guest){
			$link = 'index.php?option=com_carshopping&view=registration';
		}
		$app->redirect($link, $msg, $msgType='message');
	}
	public function addDilemma($obj){
		$model = $this->getModel();		
		$user = JFactory::getUser();
		$session  = JFactory::getSession();
		$session->set('dilemma',$obj);
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
