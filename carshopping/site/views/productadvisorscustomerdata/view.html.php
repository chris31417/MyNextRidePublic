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
class CarshoppingViewProductadvisorscustomerdata extends JViewLegacy {

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
					
        $app = JFactory::getApplication();	
        $session  = JFactory::getSession();	
        $user = JFactory::getUser();        
        
        //echo 'user'.$user->id;
        if(!$user->guest){					
			$match_id = intval($_GET['m']);
			//check whether this user has permission or not
			$matchModel = $this->getModel('Matches');
			$productAdvisorModel = $this->getModel('Productadvisorprofile');
			$customer_id = 0;
			if($productAdvisorModel->inProductAdvisorGroup($user)){
				$match = $matchModel->getMatchById($match_id);
				if($match!=NULL){
					if($match->product_advisor_id==$user->id){
						$customer_id = $match->customer_id;
						$this->match_id = $match_id ;
						$this->match = $match;
					}
				}
			}
			//load customer data
			if($customer_id==0){
				throw new Exception('not found');
			}
			$this->setModel(JModelLegacy::getInstance('Shoppingprofiles','CarshoppingModel'));
			$this->setModel(JModelLegacy::getInstance('Dilemmas','CarshoppingModel'));	
			$this->setModel(JModelLegacy::getInstance('Surveys','CarshoppingModel'));
			
			$shoppingModel = $this->getModel('Shoppingprofiles');
			$dilemmaModel = $this->getModel('Dilemmas');
			$surveyModel = $this->getModel('Surveys');
			
			$this->shopping_profile = $shoppingModel->getItemByUserId($customer_id);
			$this->survey = $surveyModel->getItemByUserId($customer_id);
			
			$dilemma = $dilemmaModel->getItemByUserId($customer_id);			
			$choices = $dilemmaModel->getDilemmaChoices();			
			$text = '';
			if($dilemma!=NULL && !empty($dilemma->q1)){
				$currentchoices  = json_decode($dilemma->q1,TRUE);
				$text = '<ul>';
				foreach($currentchoices as $c){
					$cx = $choices[$c];
					$text .= '<li>'.$cx->title. '</li>' ;
				}
				$text .= '</ul>';
			}
			$this->dilemma = $text;
			
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
