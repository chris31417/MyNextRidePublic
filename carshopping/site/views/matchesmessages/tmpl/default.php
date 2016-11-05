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
<p><a href="<?php echo JRoute::_($this->backtoconvurl); ?>">Back to Conversations</a></p>

<h2>Conversations:</h2>
<h3><?php echo $this->escape($this->match->customer_name). ' - ' .$this->escape($this->match->product_advisor_name);?></h3>
<hr />
<div class="matchlist">
	<?php if(count($this->messages)==0):?>
		
	<?php else: ?>
		
		<?php foreach($this->messages as $msg):?>
			<div class="matchitem clearfix">
				<div class="span4">
					<div class="matchsender">
						<p><strong><?php echo $this->escape($msg->name);?></strong><br />
						<span><?php echo $this->escape($msg->user_type_text);?></span><br />
						<em><?php echo $this->escape($msg->created_time_text);?></em></p>
					</div>			
				</div>
				<div class="span8">
					<div class="messages">
						<?php echo $this->escape($msg->message);?>
					</div>
				</div>
			</div>
			<hr />
		<?php endforeach;?>
	<?php endif; ?>	
</div>
<div class="matchreply">
	<form class="surveys" action="<?php echo JRoute::_('index.php?option=com_carshopping&task=matches.reply'); ?>" method="post" name="adminForm" id="adminForm"  enctype="multipart/form-data">
		<fieldset>
			<legend>Reply: </legend>
			<textarea name="message"></textarea>			
		</fieldset>
		
		<?php echo JHtml::_('form.token'); ?>
		<div class="clearfix" ></div>
		
		<div class="control-group">
			<div class="controls">
				<button type="submit" class="btn btn-primary validate">Send</button>			
			</div>
		</div>
		
	</form>
</div>

