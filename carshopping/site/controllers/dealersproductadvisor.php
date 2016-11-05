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
 * Dealersproductadvisor list controller class.
 */
class CarshoppingControllerDealersproductadvisor extends CarshoppingController
{
	/**
	 * Proxy for getModel.
	 * @since	1.6
	 */
	public function &getModel($name = 'Productadvisorprofile', $prefix = 'CarshoppingModel', $config = array())
	{
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
	public function certify(){
		JSession::checkToken() or die( 'Invalid Token' );
		
		$app = JFactory::getApplication();		
		$jinput = $app->input; 
		$object = new stdClass();
		$object->productadvisor_id = $jinput->getString('productadvisor_id','');		
		$object->certified = isset($_POST['certified'])?1:0;
		
		$err = '';
		
		
		if(empty($err)){
			$ret = $this->addCertifyproductadvisor($object);
		}
		$app = JFactory::getApplication(); 
		$link = 'index.php?option=com_carshopping&view=dealersproductadvisor'; 
		
		
		if($ret){
			$msg = 'Your product advisor has been successfully certified'; 			
		}else{
			$msg = 'Failed to certify your product advisor. ' . $err; 			
		}
		$app->redirect($link, $msg, $msgType='message');
	}
	public function addCertifyproductadvisor($obj){		
		$model = $this->getModel();				
		$old = $model->getItemByUserId($obj->productadvisor_id);
		if($old==null)
			return false;
				
		$result = $model->certify($obj->productadvisor_id,$obj->certified);
		
		return $result;
	}
	public function approve(){
		JSession::checkToken() or die( 'Invalid Token' );
		
		$app = JFactory::getApplication();		
		$jinput = $app->input; 
		
		$userId = $jinput->getString('productadvisor_id','');		
		$approved = isset($_POST['approved'])?1:0;
		
		$err = '';
		
		
		if(empty($err)){
			$ret = $this->getModel()->blockUser($userId,!$approved);
		}
		$app = JFactory::getApplication(); 
		$link = 'index.php?option=com_carshopping&view=dealerspendingproductadvisor'; 
		
		
		if($ret){
			$msg = 'Your product advisor has been successfully approved'; 			
		}else{
			$msg = 'Failed to approve your product advisor. ' . $err; 			
		}
		$app->redirect($link, $msg, $msgType='message');
	}
}
