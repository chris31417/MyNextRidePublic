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
class CarshoppingViewMatches extends JViewLegacy {

    protected $items;
    protected $pagination;
    protected $state;
    protected $params;

    /**
     * Display the view
     */
    public function display($tpl = null) {				
		$this->setModel(JModelLegacy::getInstance('MatchMessages','CarshoppingModel'));
		$this->setModel(JModelLegacy::getInstance('Matches','CarshoppingModel'));
		$this->setModel(JModelLegacy::getInstance('Productadvisorprofile','CarshoppingModel'));
		$this->setModel(JModelLegacy::getInstance('Dealerprofile','CarshoppingModel'));
		$this->setModel(JModelLegacy::getInstance('Customers','CarshoppingModel'));
		
        $app = JFactory::getApplication();	
        $session  = JFactory::getSession();	
        $user = JFactory::getUser();                
        
        if(!$user->guest){
			$productAdvisorModel = $this->getModel('Productadvisorprofile');
			$dealerModel = $this->getModel('Dealerprofile');
			$customerModel = $this->getModel('Customers');
			$matchModel = $this->getModel('Matches');
			$model = $this->getModel('MatchMessages');
			//product advisor
			if($productAdvisorModel->inProductAdvisorGroup($user)){
				$this->matches = $matchModel->getMatchesByProductAdvisor($user->id);
				//get vehicle selection for each match
				$this->getVehicleName($customerModel,$this->matches);
			}
			//dealer
			else if($dealerModel->inDealerGroup($user)){
				$this->productAdvisors = NULL;
				$productAdvisors = $productAdvisorModel->getProductAdvisorsByDealerId($user->id);
				if(count($productAdvisors)>0){
					foreach($productAdvisors as &$pa){
						$pa->matches = $matchModel->getMatchesByProductAdvisor($pa->created_by);
						//get vehicle selection for each match
						//$this->getVehicleName($customerModel,$pa->matches);
					}
					$this->productAdvisors = $productAdvisors;
				}
			}
			//customer
			else if($customerModel->inCustomerGroup($user)){		
				$this->matches = $matchModel->getMatchesByCustomer($user->id);
				//get vehicle selection for each match
				$this->getVehicleName($customerModel,$this->matches);
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
	function getVehicleName($customerModel, &$matches){
		if(count($matches)>0){
			foreach($matches as &$m){
				$customer_id = $m->customer_id;
				$vehicles = $customerModel->getVehicleChoice($customer_id);
				$vehicle_name = '-';
				if(count($vehicles)>0){
					$vehicle_name = $vehicles[0]->vehicle_name;
				}
				$m->vehicle_name = $vehicle_name;
			}
		}
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
