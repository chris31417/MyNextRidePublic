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
jimport('joomla.form.helper');
JFormHelper::loadFieldClass('list');
class PublicList extends JFormFieldList{
	
	public static function getText($list,$value){
		$options = $list->getOptions();
		foreach($options as $o){
			if($o->value==$value){
				return $o->text;
			}
		}
		return NULL;
	}
}
/**
 * Carshopping helper.
 */
class CarshoppingHelper {

    /**
     * Configure the Linkbar.
     */
    public static function addSubmenu($vName = '') {
		JHtmlSidebar::addEntry(
			JText::_('COM_CARSHOPPING_TITLE_SHOPPINGPROFILES'),
			'index.php?option=com_carshopping&view=shoppingprofiles',
			$vName == 'shoppingprofiles'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_CARSHOPPING_TITLE_SURVEYS'),
			'index.php?option=com_carshopping&view=surveys',
			$vName == 'surveys'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_CARSHOPPING_TITLE_DILEMMAS'),
			'index.php?option=com_carshopping&view=dilemmas',
			$vName == 'dilemmas'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_CARSHOPPING_TITLE_BRANDS'),
			'index.php?option=com_carshopping&view=brands',
			$vName == 'brands'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_CARSHOPPING_TITLE_DEALERS'),
			'index.php?option=com_carshopping&view=dealers',
			$vName == 'dealers'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_CARSHOPPING_TITLE_PRODUCTADVISORS'),
			'index.php?option=com_carshopping&view=productadvisors',
			$vName == 'productadvisors'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_CARSHOPPING_TITLE_CUSTOMERS'),
			'index.php?option=com_carshopping&view=customers',
			$vName == 'customers'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_CARSHOPPING_TITLE_CITIES'),
			'index.php?option=com_carshopping&view=cities',
			$vName == 'cities'
		);
    }

    /**
     * Gets a list of the actions that can be performed.
     *
     * @return	JObject
     * @since	1.6
     */
    public static function getActions() {
        $user = JFactory::getUser();
        $result = new JObject;

        $assetName = 'com_carshopping';

        $actions = array(
            'core.admin', 'core.manage', 'core.create', 'core.edit', 'core.edit.own', 'core.edit.state', 'core.delete'
        );

        foreach ($actions as $action) {
            $result->set($action, $user->authorise($action, $assetName));
        }

        return $result;
    }


}
