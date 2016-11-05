<?php
/**
 * @version     1.0.0
 * @package     mod_carshopping_login
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      aldo <aldopraherda@gmail.com> - http://www.aldoapp.com
 */
defined('_JEXEC') or die;

/**
 * Helper for mod_carshopping_login
 *
 */
class ModCarShoppingLoginHelper
{
	/**
	 * Retrieve the url where the user should be returned after logging in
	 *
	 * @param   JRegistry  $params  module parameters
	 * @param   string     $type    return type
	 *
	 * @return string
	 */
	public static function getReturnURL($params, $type)
	{
		$app	= JFactory::getApplication();
		$router = $app::getRouter();
		$url = null;

		if ($itemid = $params->get($type))
		{
			$db		= JFactory::getDbo();
			$query	= $db->getQuery(true)
				->select($db->quoteName('link'))
				->from($db->quoteName('#__menu'))
				->where($db->quoteName('published') . '=1')
				->where($db->quoteName('id') . '=' . $db->quote($itemid));

			$db->setQuery($query);

			if ($link = $db->loadResult())
			{
				if ($router->getMode() == JROUTER_MODE_SEF)
				{
					$url = 'index.php?Itemid=' . $itemid;
				}
				else
				{
					$url = $link . '&Itemid=' . $itemid;
				}
			}
		}

		if (!$url)
		{
			// Stay on the same page
			$uri = clone JUri::getInstance();
			$vars = $router->parse($uri);
			unset($vars['lang']);

			if ($router->getMode() == JROUTER_MODE_SEF)
			{
				if (isset($vars['Itemid']))
				{
					$itemid = $vars['Itemid'];
					$menu = $app->getMenu();
					$item = $menu->getItem($itemid);
					unset($vars['Itemid']);

					if (isset($item) && $vars == $item->query)
					{
						$url = 'index.php?Itemid=' . $itemid;
					}
					else
					{
						$url = 'index.php?' . JUri::buildQuery($vars) . '&Itemid=' . $itemid;
					}
				}
				else
				{
					$url = 'index.php?' . JUri::buildQuery($vars);
				}
			}
			else
			{
				$url = 'index.php?' . JUri::buildQuery($vars);
			}
		}

		return base64_encode($url);
	}

	/**
	 * Returns the current users type
	 *
	 * @return string
	 */
	public static function getType()
	{
		$user = JFactory::getUser();

		return (!$user->get('guest')) ? 'logout' : 'login';
	}

	/**
	 * Get list of available two factor methods
	 *
	 * @return array
	 */
	public static function getTwoFactorMethods()
	{
		require_once JPATH_ADMINISTRATOR . '/components/com_users/helpers/users.php';

		return UsersHelper::getTwoFactorMethods();
	}
	/**
	 * check whether this user is produc advisor or not
	 * @param $user juser
	 * return boolean
	 */
	public static function isProductAdvisor($user){
		$model = JModelLegacy::getInstance('Productadvisorprofile','CarshoppingModel');
		if(null==$model)
			return FALSE;
		if($model->inProductAdvisorGroup($user)){
			return TRUE;
		}
		return FALSE;
	}
	/**
	 * check whether this user is a dealer or not
	 * @param $user juser
	 * return boolean
	 */
	public static function isDealer($user){		
		$model = JModelLegacy::getInstance('Dealerprofile','CarshoppingModel');
		if(null==$model)
			return FALSE;
		if($model->inDealerGroup($user)){
			return TRUE;
		}
		return FALSE;
	}
}
