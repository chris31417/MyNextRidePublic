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
 * Matches list controller class.
 */
class CarshoppingControllerMatches extends CarshoppingController
{

	/**
	 * Proxy for getModel.
	 * @since	1.6
	 */
	public function &getModel($name = 'Matches', $prefix = 'CarshoppingModel', $config = array())
	{
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
	/**
	 * customer initiate a chat with a product advisor
	 * @param pa product advisor id int
	 */
	public function chat(){			
		$app = JFactory::getApplication(); 	
		$user = JFactory::getUser();
		if($user->guest){
			//throw new Exception('Please login');
			$msg = 'Please login';
			$app->redirect('index.php',$msg, $msgType='message');
			return;
		}
		$productAdvisorModel = $this->getModel('Productadvisorprofile');
		$dealerModel = $this->getModel('Dealerprofile');
		$matchModel = $this->getModel('Matches');
		$messageModel = $this->getModel('MatchMessages');
		
		if($productAdvisorModel->inProductAdvisorGroup($user)){
			$user_type = CarshoppingModelMatchMessages::USER_TYPE_PRODUCT_ADVISOR;
			$product_advisor_id = $user->id;
			$customerId = intval($_GET['c']);
		}else if($dealerModel->inDealerGroup($user)){	
			$user_type = CarshoppingModelMatchMessages::USER_TYPE_DEALER;
			//check whether this product advisor work for this dealer
			$product_advisor_id = intval($_GET['pa']);			
			$customerId = intval($_GET['c']);
			$productAdvisorProfile = $productAdvisorModel->getItemByUserId($product_advisor_id);
			if($productAdvisorProfile==NULL){
				throw new Exception('invalid product advisor id');
			}
			if($productAdvisorProfile->dealer_id != $user->id){
				throw new Exception('forbidden');
			}
		}else{			
			//this is customer
			$user_type = CarshoppingModelMatchMessages::USER_TYPE_CUSTOMER;
			$product_advisor_id = intval($_GET['pa']);
			$customerId = $user->id;
		}
			
		//check previous chat between product advisor & customer and active				
		if(empty($product_advisor_id)){
			throw new Exception('invalid product advisor id');
		}
		if(empty($customerId)){
			throw new Exception('invalid customer id');
		}
		$model = $this->getModel();
		$match = $model->getMatchByCustomerAndProductAdvisor($customerId,$product_advisor_id);
		if($match!=NULL){
			$prevtoken = $match->token;
		}
		$session  = JFactory::getSession();	
		//if exists get token and redirect to message board
		if($prevtoken!=NULL){
			$msg = 'Welcome back!';
			
			$session->set('matchtoken',$prevtoken);
			$link = 'index.php?option=com_carshopping&view=matchesmessages';			
		}
		//if doesnt exist generate token and create new message board
		else{
			$newtoken = $model->generateToken();
			$session->set('matchtoken',$newtoken);
			$obj = new stdClass;
			$obj->created_by = $user->id;
			$obj->customer_id = $customerId ;
			$obj->product_advisor_id = $product_advisor_id;
			$obj->is_active = 1;
			$obj->token = $newtoken;
			$obj->state = 1;
			$ret = $model->save($obj);
			if(!$ret){
				$msg = 'Error saving a match';
				$link = JRoute::_('index.php?option=com_carshopping&view=customersproductadvisor');
			}else{
				$msg = 'Welcome. Please enter your first message';
				$link = 'index.php?option=com_carshopping&view=matchesmessages';			
			}
		}		
		$app->redirect($link, $msg, $msgType='message');
	}
	public function reply(){
		JSession::checkToken() or die( 'Invalid Token' );		
		$user = JFactory::getUser();
		$session = JFactory::getSession();
		if($user->guest){
			throw new Exception('invalid user');
		}
		$app = JFactory::getApplication();		
		$jinput = $app->input; 
		$ip = $_SERVER['REMOTE_ADDR'];
		
		$obj = new stdClass;
		$productAdvisorModel = $this->getModel('Productadvisorprofile');
		$dealerModel = $this->getModel('Dealerprofile');
		$matchModel = $this->getModel('Matches');
		$messageModel = $this->getModel('MatchMessages');
		
		$token = $session->get('matchtoken');
		$match_id = $matchModel->getMatchIdByToken($token);
		$match = $matchModel->getMatchById($match_id);
		//for email
		$from = $user->email;
		$to = '';
		$q = '';
		if($productAdvisorModel->inProductAdvisorGroup($user)){
			$obj->user_type = CarshoppingModelMatchMessages::USER_TYPE_PRODUCT_ADVISOR;
			$to = JFactory::getUser($match->customer_id)->email;
			$q = 'c='.$match->customer_id;			
		}else if($dealerModel->inDealerGroup($user)){	
			$obj->user_type = CarshoppingModelMatchMessages::USER_TYPE_DEALER;
		}else{			
			//this is customer
			$obj->user_type = CarshoppingModelMatchMessages::USER_TYPE_CUSTOMER;
			$to = JFactory::getUser($match->product_advisor_id)->email;
			$q = 'pa='.$match->product_advisor_id;
		}
		
		$obj->created_by = $user->id;
		$obj->match_id = $match_id;
		$obj->message = $jinput->getString('message','');
		$obj->ip = $ip;
		$obj->state = 1;
		$ret = $messageModel->save($obj);
		$link = 'index.php?option=com_carshopping&view=matchesmessages';		
		if($ret){
			//send email
			$msg = $obj->message;
			$msg .= '<br />reply this message at: http://mynextrides.com/component/carshopping/Matches/chat?'.$q;
			
			$subject = 'MyNextRide.com: New Message from '.$from;
			$messageModel->sendEmailMatchMessage($from,$to,$subject,$msg);
			$msg = 'Your message has been successfully saved';
		}else{
			$msg = 'Failed saving your message';
		}
		$app->redirect($link, $msg, $msgType='message');
	}
}
