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
<h2>My Recommendations: Edit</h2>
<form class="surveys" action="<?php echo JRoute::_('index.php?option=com_carshopping&task=myrecommendation.update'); ?>" method="post" name="adminForm" id="adminForm"  enctype="multipart/form-data">	
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
			<label>Vehicle Name:</label>												
		</div>
		<div class="controls">
			<?php echo $this->escape($this->recommendation->vtitle);?>
		</div>
	</div>
	<div class="control-group">
		<div class="control-label">
			<label>Price:</label>												
		</div>
		<div class="controls">
			<input id="price" type="text" name="price" value="<?php echo $this->escape($this->recommendation->price);?>" />	
		</div>
	</div>    
	<div class="control-group">
		<div class="control-label">
			<label>Note:</label>												
		</div>
		<div class="controls">
			<textarea name="note" id="note"><?php echo $this->escape($this->recommendation->note1);?></textarea>			
		</div>
	</div>    
	<div class="clearfix" ></div>	
	<?php echo JHtml::_('form.token'); ?>
    <input type="hidden" name="id" value="<?php echo $this->recommendation->id;?>" />
    <div class="control-group">
		<div class="controls">
			<button type="submit" class="btn btn-primary validate">Save</button>			
		</div>
	</div>
    
</form>
