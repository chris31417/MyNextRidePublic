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
class CarshoppingViewMatchesmessages extends JViewLegacy {

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
			//$profile = $model->getItemByUserId($user->id);
			$matchModel = $this->getModel('Matches');
			$model = $this->getModel('MatchMessages');
			$productAdvisorModel = $this->getModel('Productadvisorprofile');
			$dealerModel = $this->getModel('Dealerprofile');
			$customerModel = $this->getModel('Customers');
			
			$token = $session->get('matchtoken');
			$match_id = $matchModel->getMatchIdByToken($token);	
			$this->messages = $model->getMessages($match_id);
			$this->match = $matchModel->getMatchById($match_id);
			
			
			if($productAdvisorModel->inProductAdvisorGroup($user)){
				$url  = 'index.php?option=com_carshopping&view=matches&layout=productadvisor';	
			}else if($dealerModel->inDealerGroup($user)){
				$url  = 'index.php?option=com_carshopping&view=matches&layout=dealer';	
			}else if($customerModel->inCustomerGroup($user)){
				$url  = 'index.php?option=com_carshopping&view=matches&layout=customer';	
			}
			$this->backtoconvurl = $url;
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
