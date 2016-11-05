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
 * Surveys list controller class.
 */
class CarshoppingControllerSurveys extends CarshoppingController
{
	/**
	 * Proxy for getModel.
	 * @since	1.6
	 */
	public function &getModel($name = 'Surveys', $prefix = 'CarshoppingModel', $config = array())
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
		$object->q11 = $jinput->getString('q11','');
		$object->q2 = $jinput->getString('q2','');
		$object->q3 = $jinput->getString('q3','');		
		$q4 = $jinput->getString('q4','');		
		$q4t1 = $jinput->getString('q4t1','');
		$q4t2 = $jinput->getString('q4t2','');
		if(empty($q4) && !empty($q4t1) && !empty($q4t2)){
			$q4 = $q4t1.','.$q4t2;
		}
		$object->q4 = $q4;
		$object->q5 = $jinput->getString('q5','');
		$object->q6 = $jinput->getString('q6','');
		$object->q7 = $jinput->getString('q7','');
		$q8 = $jinput->get('q8',array(),'array');
		$object->q8 = json_encode($q8);
		$object->q9 = $jinput->getString('q9','');
		$object->q10 = $jinput->getString('q10','');
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
		$choices = json_decode($object->q8,true);
		$cx = 0;
		foreach($choices as $c){
			if(empty($c)){
				$cx++;
			}
		}
		if($cx==8){
			$err = 'Please fill all fields';
			$ret = false;
		}
		if(empty($err)){
			$ret = $this->addSurvey($object);
		}
		$app = JFactory::getApplication(); 
		$link = JRoute::_('index.php?option=com_carshopping&view=dilemmas'); 
		
		
		if($ret){
			$msg = 'Your answers has been successfully saved'; 			
		}else{
			$msg = 'Failed to save your answer. ' . $err; 			
		}
		$app->redirect($link, $msg, $msgType='message');
	}
	public function addSurvey($obj){		
		$model = $this->getModel();		
		$user = JFactory::getUser();
		$session  = JFactory::getSession();
		$session->set('survey',$obj);
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
