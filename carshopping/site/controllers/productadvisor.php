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
 * Productadvisor list controller class.
 */
class CarshoppingControllerProductadvisor extends CarshoppingController
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
	public function save(){
		//print_r($_POST);exit(0);
		$app = JFactory::getApplication();		
		$jinput = $app->input; 
		$object = new stdClass();
		$userobj = new stdClass();
		$rawusername = $jinput->getString('username','');
		$userobj->username = preg_replace("/[^a-zA-Z0-9]+/", "", $rawusername);	
		$userobj->email = $jinput->getString('email','');
		$userobj->name = $jinput->getString('name','');
		$userobj->password1 = $jinput->getString('password1','');
		$userobj->password2 = $jinput->getString('password2','');
		
		$object->city_id = $jinput->getString('city_id','');
		$object->year_of_experience = $jinput->getString('year_of_experience','');
		$object->dealer_id = $jinput->getString('dealer_id','');
		$object->phone = $jinput->getString('phone','');
		$object->brand_id = $_POST['brand_id'];
		$object->profile_text = $jinput->getString('profile_text','');		
		
		$user = JFactory::getUser();
		$model = $this->getModel();	
		$newuser = false;
		//if this user is not created yet
		if($user->guest){
			$newuser = true;
		}else{
			if(empty($object->dealer_id )){			
				
				$old = $model->getItemByUserId($user->id);
				$object->dealer_id = $old->dealer_id;
			}
		}					
	
		$err = '';
		//check all fields
		$vars = get_object_vars($userobj);
		$ret = true;
		foreach($vars as $k=>$v){
			if(empty($v)){
				$err = 'Please fill all fields';
				$ret = false;
				break;
			}	
		}		
		//check all fields
		$vars = get_object_vars($object);
		$ret = true;
		foreach($vars as $k=>$v){
			if(empty($v)){
				$err = 'Please fill all fields';
				$ret = false;
				break;
			}	
		}		
		
		if(empty($err)){
			//check password
			if($userobj->password1 != $userobj->password2){
				$err .= 'Password missmatch<br />';
				$ret = false;
			}else{
				$userobj->password = $userobj->password1;
			} 
			//validate email
			if(!filter_var($userobj->email, FILTER_VALIDATE_EMAIL)){
				$err .= 'Please enter correct email address';
				$ret = false;
			}
			if($ret){
				if($newuser){
					$user = $model->createUser($userobj);					
				}else{
					$userobj->id = $user->id;
					$user = $model->updateUser($userobj);
				}
				
				$ret = $this->saveProductAdvisor($object,$user);				
			}
			
		}
		$app = JFactory::getApplication(); 
		$link = 'index.php?option=com_carshopping&view=productadvisorprofile'; 		
		
		if($ret){
			$ret = $this->uploadPhoto($user->id);
			if($ret !== true){
				$app->redirect($link, $ret, $msgType='message');
			}else{
				if($newuser){
					$link = 'index.php/congratulations';
				}else{
					$msg = 'Your profile has been successfully saved'; 			
				}				
			}
		}else{
			$msg = 'Failed to save your profile. ' . $err; 			
		}
		
		$app->redirect($link, $msg, $msgType='message');
	}
	public function saveProductAdvisor($obj,$user){				
		$model = $this->getModel();			
		if(!$model->inProductAdvisorGroup($user)){
			//var_dump($user);			
			throw new Exception('THis user is not in product advisor group');
		}
		$old = $model->getItemByUserId($user->id);
		if($old!=NULL){
			$obj->id = $old->id;
		}
		$obj->created_by = $user->id;	
		$obj->state = 1;		
		$result = $model->save($obj);
		
		return $result;
	}
	public function uploadPhoto($id){		
		//Retrieve file details from uploaded file, sent from upload form
		$file = JRequest::getVar('file_upload', null, 'files', 'array');
		
		if(empty($file['name'])){
			return TRUE;
		}
		//Import filesystem libraries. Perhaps not necessary, but does not hurt
		jimport('joomla.filesystem.file');
		 
		//Clean up filename to get rid of strange characters like spaces etc
		$filename = JFile::makeSafe($file['name']);
		$ext = strtolower(JFile::getExt($filename) );
		 
		//Set up the source and destination of the file
		$src = $file['tmp_name'];
		$dest = JPATH_BASE . "/images/productadvisor/" .  $id.'.jpg';
		
		//First check if the file has the right extension, we need jpg only
		
		if ( $ext == 'jpg') {
			if(file_exists($dest)){
				unlink($dest);
			} 
		   if ( JFile::upload($src, $dest) ) {
			   $this->resize_image($dest, 200, 200);
			  //Redirect to a page of your choice
			  return TRUE;
		   } else {
			  //Redirect and throw an error message
			  return 'Failed to upload';
		   }
		} else {
		   //Redirect and notify user file is not right extension
		   return 'Invalid file extension, use only .png ';
		}
	}
	function resize_image($file, $w, $h, $crop=FALSE) {
		list($width, $height) = getimagesize($file);
		$r = $width / $height;
		if ($crop) {
			if ($width > $height) {
				$width = ceil($width-($width*abs($r-$w/$h)));
			} else {
				$height = ceil($height-($height*abs($r-$w/$h)));
			}
			$newwidth = $w;
			$newheight = $h;
		} else {
			if ($w/$h > $r) {
				$newwidth = $h*$r;
				$newheight = $h;
			} else {
				$newheight = $w/$r;
				$newwidth = $w;
			}
		}
		$src = imagecreatefromjpeg($file);
		$dst = imagecreatetruecolor($newwidth, $newheight);
		imagecopyresampled($dst, $src, 0, 0, 0, 0, $newwidth, $newheight, $width, $height);

		return $dst;
	}
	
}
