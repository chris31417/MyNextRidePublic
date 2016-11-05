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
class CarshoppingViewCustomersproductadvisorbrands extends JViewLegacy {

    protected $items;
    protected $pagination;
    protected $state;
    protected $params;

    /**
     * Display the view
     */
    public function display($tpl = null) {					
		$this->setModel(JModelLegacy::getInstance('Productadvisorprofile','CarshoppingModel'));
		$this->setModel(JModelLegacy::getInstance('Brands','CarshoppingModel'));
					
        $app = JFactory::getApplication();	
        $session  = JFactory::getSession();	
        $user = JFactory::getUser();
        $model = $this->getModel('Productadvisorprofile');
        $brandModel = $this->getModel('Brands');
        
        //echo 'user'.$user->id;
        if(!$user->guest){				
			$brand_id = isset($_GET['brand_id']) ? intval($_GET['brand_id']):0;	
			$brands = $brandModel->getItems();
			$optbrands = array();
			$optbrands[] = JHTML::_('select.option', 0, "Select a brand");
			foreach($brands as $brand){
				$optbrands[] = JHTML::_('select.option', $brand->id, $brand->brand_name);
			}
			$this->ddlbrands = $optbrands;
			$this->productAdvisors = null;
			$this->brand_id = 0;
			if($brand_id!=0){
				$this->brand_id = $brand_id;
				$this->productAdvisors = $model->getAllProductAdvisorsByBrandId($brand_id);
				//set the photo and brand of each product advisor
				jimport('joomla.filesystem.file');
				foreach($this->productAdvisors as $pa){
					$brands = $model->getProductAdvisorBrand($pa->created_by);
					//var_dump($brands);
					$brandstext = '';
					$brandnames = array_values($brands);
					if(count($brandnames)>0)
						$brandstext = implode(', ',$brandnames);
					
					$pa->brand = $brandstext;
					$pa->loggedin = $model->isLoggedIn($pa->created_by);
					$dest = "/images/productadvisor/".$pa->created_by.'.jpg';
					if(file_exists(JPATH_BASE . $dest)){
						$pa->photourl = JURI::base() . $dest;
					}else{
						$pa->photourl = '';
					}
				}	
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
