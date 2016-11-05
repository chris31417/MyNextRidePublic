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
?>

<form class="surveys" action="<?php echo JRoute::_('index.php?option=com_carshopping&task=registration.save'); ?>" method="post" name="adminForm" id="adminForm">
	<fieldset>
		<legend>User Registration</legend>
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
				<label id="jform_username-lbl" for="jform_username" class="hasTooltip required" title="&lt;strong&gt;Username&lt;/strong&gt;&lt;br /&gt;Enter your username">Username:<span class="star">&#160;*</span></label>																				
			</div>
			<div class="controls">
				<input type="text" name="username" class="required" id="jform_username" value="" size="30" required aria-required="true" pattern="^[a-zA-Z0-9]+$" title="Use only alpha numeric character" />			
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">				
				<label id="jform_email1-lbl" for="jform_email1" class="hasTooltip required" title="&lt;strong&gt;Email Address&lt;/strong&gt;&lt;br /&gt;Enter your email address">Email Address:<span class="star">&#160;*</span></label>																				
			</div>
			<div class="controls">
				<input type="email" name="email" class="validate-email required" id="jform_email1" value="" size="30" required aria-required="true" />			
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">				
				<label id="jform_name-lbl" for="jform_name" class="hasTooltip required" title="&lt;strong&gt;Full Name&lt;/strong&gt;&lt;br /&gt;Enter your full name">Full Name:<span class="star">&#160;*</span></label>																				
			</div>
			<div class="controls">
				<input type="text" name="name" class="required" id="jform_name" value="" size="30" required aria-required="true" />			
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">				
				<label id="jform_password1-lbl" for="jform_password1" class="hasTooltip required" title="&lt;strong&gt;Password&lt;/strong&gt;&lt;br /&gt;Enter your desired password.">Password:<span class="star">&#160;*</span></label>
			</div>
			<div class="controls">
				<input type="password" name="password1" id="jform_password1" value="" autocomplete="off" class="validate-password required" size="30" maxlength="99" required aria-required="true" />
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">				
				<label id="jform_password2-lbl" for="jform_password2" class="hasTooltip required" title="&lt;strong&gt;Confirm Password&lt;/strong&gt;&lt;br /&gt;Confirm your password">Confirm Password:<span class="star">&#160;*</span></label>
			</div>
			<div class="controls">
				<input type="password" name="password2" id="jform_password2" value="" autocomplete="off" class="validate-password required" size="30" maxlength="99" required aria-required="true" />
			</div>
		</div>
	</fieldset>
	
    <?php echo JHtml::_('form.token'); ?>
	<div class="clearfix" ></div>
    
    <div class="control-group">
		<div class="controls">
			<button type="submit" class="btn btn-primary validate">Register</button>			
		</div>
	</div>
    
</form>
