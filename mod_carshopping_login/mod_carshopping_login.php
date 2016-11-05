<?php
/**
 * @version     1.0.0
 * @package     mod_carshopping_login
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      aldo <aldopraherda@gmail.com> - http://www.aldoapp.com
 */

defined('_JEXEC') or die;

// Include the login functions only once
require_once __DIR__ . '/helper.php';

$params->def('greeting', 1);

$type	          = ModCarShoppingLoginHelper::getType();
$return	          = ModCarShoppingLoginHelper::getReturnURL($params, $type);
$twofactormethods = ModCarShoppingLoginHelper::getTwoFactorMethods();
$user	          = JFactory::getUser();
$layout           = $params->get('layout', 'default');
jimport('joomla.application.component.model');
JModelLegacy::addIncludePath(JPATH_SITE.'/components/com_carshopping/models');

// Logged users must load the logout sublayout
if (!$user->guest)
{
	$layout .= '_logout';
}
$isProductAdvisor = ModCarShoppingLoginHelper::isProductAdvisor($user);
$isDealer = ModCarShoppingLoginHelper::isDealer($user);

require JModuleHelper::getLayoutPath('mod_carshopping_login', $layout);
