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
class CarshoppingViewProductadvisorrecommendation extends JViewLegacy {

    protected $items;
    protected $pagination;
    protected $state;
    protected $params;

    /**
     * Display the view
     */
    public function display($tpl = null) {		
		$this->setModel(JModelLegacy::getInstance('Matches','CarshoppingModel'));
		$this->setModel(JModelLegacy::getInstance('Recommendation','CarshoppingModel'));				
		$this->setModel(JModelLegacy::getInstance('Productadvisorprofile','CarshoppingModel'));
		$this->setModel(JModelLegacy::getInstance('Customers','CarshoppingModel'));
		
        $app = JFactory::getApplication();	
        $session  = JFactory::getSession();	
        $user = JFactory::getUser();
        
        $modelRecommendation = $this->getModel('Recommendation');
        $modelProductAdvisorProfile = $this->getModel('Productadvisorprofile');
                
        if(!$user->guest){
			//check whether this user has permission or not
			$matchModel = $this->getModel('Matches');
			$productAdvisorModel = $this->getModel('Productadvisorprofile');
			
			$match = NULL;
			$match_id = 0;
			$customer_id = 0;
			
			if(!$productAdvisorModel->inProductAdvisorGroup($user)){											
				throw new Exception("You're not a product advisor");
			}
			if(isset($_POST['selectcustomer'])){//if product advisor select a customer on recommendation page
				$selectcustomerId = intval($_POST['selectcustomer']);
				$match = $matchModel->getMatchByCustomerAndProductAdvisor($selectcustomerId,$user->id);												
			}else{
				if(isset($_GET['m'])){//product advisor click recommendation link
					$match_id = intval($_GET['m']);
					$match = $matchModel->getMatchById($match_id);
				}
			}			
									
			if($match!=NULL){
				if($match->product_advisor_id==$user->id){
					$customer_id = $match->customer_id;
					$match_id  = $match->id;
					$this->match_id = $match_id ;
					$this->match = $match;
				}
			}
			//load customer data
			if($customer_id==0){
				$msg = "You don't have conversation with this customer";
				$app->redirect('index.php?option=com_carshopping&view=matches&layout=productadvisor',$msg, $msgType='error');				
			}			
			$layout = $this->getLayout();
			if($layout=='edit'){
				$id = intval($_GET['id']);
				$recommendation = $modelRecommendation->getRecommendationById($id);
				$this->recommendation = $recommendation;
			}else{
				
				$modelCustomer = $this->getModel('Customers');
				$this->customer = $modelCustomer->getItemByUserId($customer_id);
				
				$customers = $modelCustomer->getAllCustomers();												
				$options = array();
				foreach($customers as $cust){
					$options[] = JHTML::_('select.option', $cust->id, $cust->name);
				}
				$this->ddlcustomers = $options;
											
				$this->profile = $modelProductAdvisorProfile->getItemByUserId($user->id);
				$recommendations = $modelRecommendation->getRecommendationByProductAdvisor($user->id);
				$this->recommendations = $recommendations;
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
