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
<p>Please tell us a little about yourself and what you are looking for. </p>
<form class="surveys" action="<?php echo JRoute::_('index.php?option=com_carshopping&task=shoppingprofiles.save'); ?>" method="post" name="adminForm" id="adminForm">	
	<textarea name="q1" rows="5" cols="20"><?php echo $this->q1;?></textarea>
	<?php echo JHtml::_('form.token'); ?>
	<div class="clearfix" ></div>
    <input type="submit" value="Save" />    
</form>
<p>What you enter here will be seen by all product advisors. Your survey data will only be seen by the advisors you choose to talk to</p>




