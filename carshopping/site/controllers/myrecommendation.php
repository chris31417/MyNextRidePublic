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
 * Myrecommendation list controller class.
 */
class CarshoppingControllerMyrecommendation extends CarshoppingController
{
	/**
	 * Proxy for getModel.
	 * @since	1.6
	 */
	public function &getModel($name = 'Recommendation', $prefix = 'CarshoppingModel', $config = array())
	{
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
	/**
	 * add vehicle (from vehicle manager) to product advisor recommendation
	 */
	public function save(){		
		$app = JFactory::getApplication();		
		$user = JFactory::getUser();
		$jinput = $app->input; 
		$object = new stdClass();
		$object->vehicle_id = $jinput->getString('vid','');
		$object->created_by = $user->id;		
		$app = JFactory::getApplication(); 
		$link = 'index.php?option=com_carshopping&view=matches&layout=productadvisor'; 		
		$model = $this->getModel();
		$ret = $model->addRecommendation($object);
		if($ret){			
			$msg = 'This car has been successfully saved to recommendation'; 						
		}else{
			$msg = 'Failed to save recommendation. '; 			
		}
		$app->redirect($link, $msg, $msgType='message');
	}
	/**
	 * update recommendation price or note
	 */
	public function update(){
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		$app = JFactory::getApplication();		
		$user = JFactory::getUser();
		$jinput = $app->input; 
		$m = $jinput->get('m', 0, 'INT');
		
		$object = new stdClass();		
		$object->id = $jinput->get('id', 0, 'INT');
		$object->price = $jinput->get('price',0,'FLOAT');
		$object->note1 = $jinput->getString('note','');
		
		$app = JFactory::getApplication(); 
		$link = 'index.php?option=com_carshopping&view=productadvisorrecommendation&m='.$m; 		
		
		$model = $this->getModel();
		$ret = $model->saveRecommendation($object);
		if($ret){			
			$msg = 'Price updated'; 						
			$msgType='message';
		}else{
			$msg = 'Failed to save recommendation. ' . $err; 			
			$msgType='error';
		}
		$app->redirect($link, $msg, $msgType);
	}
	private function proposeToCustomer(){
		$recommendation_id = $_POST['id'];
		$customer_id = $_POST['customer'];
		$match_id = $_POST['match_id'];
		//echo $action.'-'.$recommendation_id.'-'.$customerid;
		$customerModel = $this->getModel('Customers');
		$recommendationModel = $this->getModel();
		
		$customer = $customerModel->getItemByUserId($customer_id);
		if($customer==NULL){
			throw new Exception('Customer not found. customer id: '.$customer_id);
		}		
		$recommendation = $recommendationModel->getRecommendationById($recommendation_id);
		if($recommendation==NULL){
			throw new Exception('Recommendation not found. recommendation id: '.$recommendation_id);
		}
		$ret = $customerModel->proposeVehicle($customer_id,$customer->name,$customer->email,$recommendation);
		if($ret){			
			$msg = 'Car has been successfully proposed to customer: '.$customer->name; 	
			$msgType='message';					
			$link = 'index.php?option=com_carshopping&view=matches&layout=productadvisor'; 		
		}else{
			$msg = 'Failed to proposed. '; 			
			$msgType='error';
			$link = 'index.php?option=com_carshopping&view=productadvisorrecommendation&m='.$match_id; 		
		}
		$app = JFactory::getApplication(); 				
		$app->redirect($link, $msg, $msgType);
	}
	private function removeCarFromList(){		
		$user = JFactory::getUser();
		$recommendation_id = $_POST['id'];
		$match_id = $_POST['match_id'];		
		
		$recommendationModel = $this->getModel();
		$recommendation = $recommendationModel->getRecommendationById($recommendation_id);
		if($recommendation==NULL){
			throw new Exception('Recommendation not found. recommendation id: '.$recommendation_id);
		}
		if($recommendation->created_by!=$user->id){
			throw new Exception("You don't have access to this recommendation recommendation id: ".$recommendation_id);
		}
		$ret = $recommendationModel->removeRecommendation($recommendation_id);
		if($ret){			
			$msg = 'Car has been successfully removed'; 	
			$msgType='message';					
			$link = 'index.php?option=com_carshopping&view=matches&layout=productadvisor'; 		
		}else{
			$msg = 'Failed to remove. '; 			
			$msgType='error';				
		}
		$link = 'index.php?option=com_carshopping&view=productadvisorrecommendation&m='.$match_id; 	
		$app = JFactory::getApplication(); 				
		$app->redirect($link, $msg, $msgType);
	}
	/**
	 * propose or remove a vehicle from list 
	 */
	public function action(){
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		$action = $_POST['action'];
		if($action=='propose'){
			$this->proposeToCustomer();
		}else if($action=='remove'){
			$this->removeCarFromList();
		}
		
	}
	
}
