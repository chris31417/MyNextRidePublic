<?php
/**
 * @version     1.0.0
 * @package     com_carshopping
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      aldo <aldopraherda@gmail.com> - http://www.aldoapp.com
 */
// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
JHtml::_('bootstrap.tooltip');
JHtml::_('behavior.multiselect');
JHtml::_('formbehavior.chosen', 'select');

$user = JFactory::getUser();
$userId = $user->get('id');

$canCreate = $user->authorise('core.create', 'com_carshopping');
$canEdit = $user->authorise('core.edit', 'com_carshopping');
$canCheckin = $user->authorise('core.manage', 'com_carshopping');
$canChange = $user->authorise('core.edit.state', 'com_carshopping');
$canDelete = $user->authorise('core.delete', 'com_carshopping');

?>
<h2>Customer's Data: <?php echo $this->escape($this->match->customer_name);?></h2>
<ul>
	<li>
		<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=Productadvisorscustomerdata&layout=shoppingprofile&m='.$this->match_id);?>">Shopping profile</a>
	</li>
	<li><a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=Productadvisorscustomerdata&layout=survey&m='.$this->match_id);?>">Survey</a></li>
	<li><a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=Productadvisorscustomerdata&layout=dilemma&m='.$this->match_id);?>">Dilemma</a></li>
</ul>
