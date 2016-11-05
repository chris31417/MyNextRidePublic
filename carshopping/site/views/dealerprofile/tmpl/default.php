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
//var_dump($this->profile);

?>
<h2>Dealer's Product Advisors</h2>
<form class="surveys" action="<?php echo JRoute::_('index.php?option=com_carshopping&task=dealerprofile.save'); ?>" method="post" name="adminForm" id="adminForm">
	<fieldset>
		<legend>Dealer profile: </legend>
		<div class="control-group">
			<div class="control-label">
				<span class="spacer">
					<span class="before"></span>
					<span class="text">
						<label id="jform_spacer-lbl" class=""><strong class="red">*</strong> Required field</label>
					</span>
					<span class="after"></span>
				</span>														
			</div>
			<div class="controls">
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">
				<label>Username:</label>												
			</div>
			<div class="controls">
				<input type="text" name="username" value="<?php echo $this->profile->username;?>" />	
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">
				<label>Full Name:</label>												
			</div>
			<div class="controls">
				<input type="text" name="name" value="<?php echo $this->profile->name;?>" />	
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">
				<label>Email:</label>												
			</div>
			<div class="controls">
				<input type="email" name="email" value="<?php echo $this->profile->email;?>" />	
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">
				<label>Show Room Name:</label>												
			</div>
			<div class="controls">
				<input type="text" name="showroom_name" value="<?php echo $this->profile->showroom_name;?>" />	
			</div>
		</div>
		
	</fieldset>
	
    <?php echo JHtml::_('form.token'); ?>
	<div class="clearfix" ></div>
    
    <div class="control-group">
		<div class="controls">
			<button type="submit" class="btn btn-primary validate">Save</button>			
		</div>
	</div>
    
</form>
