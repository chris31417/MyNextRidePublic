<?php

/**
 * @version     1.0.0
 * @package     com_carshopping
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      aldo <aldopraherda@gmail.com> - http://www.aldoapp.com
 */
// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.view');

/**
 * View class for a list of Carshopping.
 */
class CarshoppingViewBuy extends JViewLegacy {

    protected $items;
    protected $pagination;
    protected $state;
    protected $params;

    /**
     * Display the view
     */
    public function display($tpl = null) {				
		$this->setModel(JModelLegacy::getInstance('Matches','CarshoppingModel'));		
		$this->setModel(JModelLegacy::getInstance('Productadvisorprofile','CarshoppingModel'));
		$this->setModel(JModelLegacy::getInstance('Customers','CarshoppingModel'));
		$this->setModel(JModelLegacy::getInstance('Buyinginfo','CarshoppingModel'));
		
        $app = JFactory::getApplication();	
        $session  = JFactory::getSession();	
        $user = JFactory::getUser();
                
        $modelProductAdvisorProfile = $this->getModel('Productadvisorprofile');
                
        if(!$user->guest){
			$layout = $this->getLayout();			
			
			$buyinginfoid = isset($_GET['id'])?intval($_GET['id']):0;
			$match_id = intval($_GET['m']);
			$vehicleId = intval($_GET['v']);
			
			$matchModel = $this->getModel('Matches');
			$buyingInfoModel = $this->getModel('Buyinginfo');
			$productAdvisorModel = $this->getModel('Productadvisorprofile');
			$customerModel = $this->getModel('Customers');
			if(!empty($buyinginfoid)){
				$info = $buyingInfoModel->getBuyingInfoById($buyinginfoid);
				if($info==NULL){
					throw new Exception('buying info not found');
				}
				$this->info = $info;
				$vehicle = $buyingInfoModel->getVehicleByVehicleId($info->vehicle_id);
				if($vehicle==NULL){
					throw new Exception('Vehicle not found');
				}
			}else{
				$vehicle = $buyingInfoModel->getVehicleByVehicleId($vehicleId);
				if($vehicle==NULL){
					throw new Exception('Vehicle not found');
				}
				$this->info = new stdClass;
				$this->info->vehicle_name = $vehicle->vehicle_name;
				$this->info->price = $vehicle->price;
				$this->info->note1 = '';
			}
									
			$this->vehicle = $vehicle;				
			
			$match = $matchModel->getMatchById($match_id);
			if($match==NULL){
				throw new Exception('match not found');
			}
			$this->match = $match;
			$this->match_id = $match_id ;					
			//check whether this user has permission or not									
			
			$customer_id = 0;
			//if current user is product advisor then find the customer id
			if($productAdvisorModel->inProductAdvisorGroup($user)){								
				if($match->product_advisor_id==$user->id){
					$customer_id = $match->customer_id;										
				}				
			}
			//if current user is a customer
			else if($customerModel->inCustomerGroup($user)){
				if($match->customer_id==$user->id){
					$customer_id = $match->customer_id;	
				}
			}
			//load customer data
			if($customer_id==0){
				throw new Exception('not found');
			}
			$this->customer_id = $customer_id;
			$this->product_advisor = $productAdvisorModel->getItemByUserId($match->product_advisor_id);							
							
			
			//photo
			jimport('joomla.filesystem.file');
			$dest = "/images/productadvisor/".$this->product_advisor->created_by.'.jpg';
			
			if(file_exists(JPATH_BASE . $dest)){
				$this->photourl = JURI::base() . $dest;
			}else{
				$this->photourl = '';
			}
										
		}else{
			$msg = 'Please login';
			$app->redirect('index.php',$msg, $msgType='message');
		}
        $this->state = $this->get('State');
        $this->items = $this->get('Items');
        $this->pagination = $this->get('Pagination');
        $this->params = $app->getParams('com_carshopping');
        

        // Check for errors.
        if (count($errors = $this->get('Errors'))) {
;
            throw new Exception(implode("\n", $errors));
        }

        $this->_prepareDocument();
        parent::display($tpl);
    }

    /**
     * Prepares the document
     */
    protected function _prepareDocument() {
        $app = JFactory::getApplication();
        $menus = $app->getMenu();
        $title = null;

        // Because the application sets a default page title,
        // we need to get it from the menu item itself
        $menu = $menus->getActive();
        if ($menu) {
            $this->params->def('page_heading', $this->params->get('page_title', $menu->title));
        } else {
            $this->params->def('page_heading', JText::_('COM_CARSHOPPING_DEFAULT_PAGE_TITLE'));
        }
        $title = $this->params->get('page_title', '');
        if (empty($title)) {
            $title = $app->getCfg('sitename');
        } elseif ($app->getCfg('sitename_pagetitles', 0) == 1) {
            $title = JText::sprintf('JPAGETITLE', $app->getCfg('sitename'), $title);
        } elseif ($app->getCfg('sitename_pagetitles', 0) == 2) {
            $title = JText::sprintf('JPAGETITLE', $title, $app->getCfg('sitename'));
        }
        $this->document->setTitle($title);

        if ($this->params->get('menu-meta_description')) {
            $this->document->setDescription($this->params->get('menu-meta_description'));
        }

        if ($this->params->get('menu-meta_keywords')) {
            $this->document->setMetadata('keywords', $this->params->get('menu-meta_keywords'));
        }

        if ($this->params->get('robots')) {
            $this->document->setMetadata('robots', $this->params->get('robots'));
        }
    }

}
