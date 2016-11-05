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
 * Registration list controller class.
 */
class CarshoppingControllerRegistration extends CarshoppingController
{
	/**
	 * Proxy for getModel.
	 * @since	1.6
	 */
	public function &getModel($name = 'Customers', $prefix = 'CarshoppingModel', $config = array())
	{
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
	public function save(){
		JRequest::checkToken() or jexit( 'Invalid Token' );
		//print_r($_POST);
		//exit(0);
		$app = JFactory::getApplication();
		$jinput = $app->input; 
		$object = new stdClass();
		$rawusername = $jinput->getString('username','');
		$object->username = preg_replace("/[^a-zA-Z0-9]+/", "", $rawusername);		
		$object->email = $jinput->getString('email','');
		$object->name = $jinput->getString('name','');
		$object->password1 = $jinput->getString('password1','');
		$object->password2 = $jinput->getString('password2','');
		$err = '';
		$ret = true;
		if(empty($object->username) || empty($object->email) || empty($object->name) ||
			empty($object->password1) || empty($object->password2)){
			$err = 'Please fill all fields';
		}else{
			//check password
			if($object->password1 != $object->password2){
				$err .= 'Password missmatch<br />';
				$ret = false;
			}  
			//validate email
			if(!filter_var($object->email, FILTER_VALIDATE_EMAIL)){
				$err .= 'Please enter correct email address';
				$ret = false;
			}
		}
		if($ret){
			$user = $this->addUser($object);
			if($user){
				$ret = $this->saveSessionData($user);
			}
		}
		
		$app = JFactory::getApplication(); 		
		$link = 'index.php/congratulations';
				
		if(!$ret){			
			$link = 'index.php?option=com_carshopping&view=registration'; 
			$msg = 'Failed to register. ' . $err; 			
		}
		$app->redirect($link, $msg, $msgType='message');
	}
	public function addUser($obj){		
		$model = $this->getModel();
		$user = $model->save($obj);
		
		return $user;
	}
	public function saveSessionData($user){
		$userId = $user->id;
		$session  = JFactory::getSession();
		$shoppingprofile = $session->get('shoppingprofile');
		$dilemma = $session->get('dilemma');
		$survey = $session->get('survey');
		//update shopping profile, dilemma and suveys. associate it with this user
		jimport('joomla.application.component.model');				
		JLoader::import( 'shoppingprofiles', JPATH_SITE . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_carshopping' . DIRECTORY_SEPARATOR . 'models' );
		JLoader::import( 'surveys', JPATH_SITE . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_carshopping' . DIRECTORY_SEPARATOR . 'models' );
		JLoader::import( 'dilemmas', JPATH_SITE . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_carshopping' . DIRECTORY_SEPARATOR . 'models' );
						
		$shoppingprofile->created_by = $userId;	
		$shoppingprofile->state = 1;
		//var_dump($shoppingprofile);
					
		$survey->created_by = $userId;	
		$survey->state = 1;
		//var_dump($survey);
						
		$dilemma->created_by = $userId;	
		$dilemma->state = 1;
		//var_dump($dilemma);
		$shoppingprofilemodel = JModelLegacy::getInstance('Shoppingprofiles','CarshoppingModel');
		$result = $shoppingprofilemodel->save($shoppingprofile);
		
		$surveysmodel = JModelLegacy::getInstance('Surveys','CarshoppingModel');
		$result &= $surveysmodel->save($survey);
		
		$dilemmasmodel = JModelLegacy::getInstance('Dilemmas','CarshoppingModel');
		$result &= $dilemmasmodel->save($dilemma);
		//exit(0);
		if(!$result){
			return false;
		}else{
			$session->clear('shoppingprofile');
			$session->clear('dilemma');
			$session->clear('survey');
			return true;			
		}
	}
}
