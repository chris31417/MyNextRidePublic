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

<form class="surveys" action="<?php echo JRoute::_('index.php?option=com_carshopping&task=dealersproductadvisor.certify'); ?>" method="post" name="adminForm" id="adminForm">
	<fieldset>
		<legend>Product advisor profile: </legend>		
		<div class="control-group">
			<div class="control-label">
				<label>Username:</label>												
			</div>
			<div class="controls">
				<label><?php echo $this->profile->username;?></label>	
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">				
				<label id="city-lbl" for="city_id" class="hasTooltip required" title="City">City:<span class="star">&#160;*</span></label>																				
			</div>
			<div class="controls">
				<?php 
				$dropdown = JHTML::_('select.genericlist', $this->ddlcities, 'city_id', 'class="inputbox required" disabled', 'value', 'text', $this->profile->city_id);
				echo $dropdown;
				?>				
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">
				<label>Year Experiences:</label>												
			</div>
			<div class="controls">
				<label><?php echo $this->escape($this->profile->year_of_experience);?></label>
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">				
				<label id="dealer-lbl" for="certified" class="hasTooltip required" title="Certified">Certified</label>																				
			</div>
			<div class="controls">
				<input type="hidden" name="productadvisor_id" value="<?php echo $this->profile->created_by;?>" />
				<input type="checkbox" name="certified" id="certified" <?php if($this->profile->certified==1)echo 'checked'; ?> />
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
