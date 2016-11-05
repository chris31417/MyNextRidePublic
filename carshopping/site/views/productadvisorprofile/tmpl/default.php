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

<form class="surveys" action="<?php echo JRoute::_('index.php?option=com_carshopping&task=productadvisor.save'); ?>" method="post" name="adminForm" id="adminForm"  enctype="multipart/form-data">
	<fieldset>
		<legend>Product advisor profile: </legend>
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
				<label>Username:<span class="star">&#160;*</span></label>												
			</div>
			<div class="controls">
				<input type="text" class="hasTooltip required"  name="username" value="<?php echo $this->escape($this->profile->username);?>" pattern="^[a-zA-Z0-9]+$" title="Use only alpha numeric character" />	
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">
				<label>Full Name:<span class="star">&#160;*</span></label>												
			</div>
			<div class="controls">
				<input type="text" class="hasTooltip required"  name="name" value="<?php echo $this->escape($this->profile->name);?>" />	
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">
				<label>Email:<span class="star">&#160;*</span></label>												
			</div>
			<div class="controls">
				<input type="email" class="hasTooltip required"  name="email" value="<?php echo $this->escape($this->profile->email);?>" />	
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
		<div class="control-group">
			<div class="control-label">				
				<label id="city-lbl" for="city_id" class="hasTooltip required" title="City">City:<span class="star">&#160;*</span></label>																				
			</div>
			<div class="controls">
				<?php 
				$dropdown = JHTML::_('select.genericlist', $this->ddlcities, 'city_id', 'class="inputbox required"', 'value', 'text', $this->profile->city_id);
				echo $dropdown;
				?>				
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">
				<label>Year Experiences:<span class="star">&#160;*</span></label>												
			</div>
			<div class="controls">
				<input type="text" name="year_of_experience" value="<?php echo $this->escape($this->profile->year_of_experience);?>" />	
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">				
				<label id="dealer-lbl" for="dealer_id" class="hasTooltip required" title="Dealer">Dealer:<span class="star">&#160;*</span></label>																				
			</div>
			<div class="controls">
				<?php 
				$disabled = '';
				if($this->profile->certified==1){
					$disabled = 'disabled';
				}
				$dropdown = JHTML::_('select.genericlist', $this->ddldealers, 'dealer_id', 'class="inputbox required"'.$disabled, 'value', 'text', $this->profile->dealer_id);
				echo $dropdown;
				?>				
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">
				<label>Certified:<span class="star">&#160;*</span></label>												
			</div>
			<div class="controls">
				<label><?php echo $this->profile->certified==1?'Yes':'No';?></label>	
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">
				<label>Phone:<span class="star">&#160;*</span></label>												
			</div>
			<div class="controls">
				<input type="text" name="phone" value="<?php echo $this->escape($this->profile->phone);?>" />	
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">				
				<label id="brand-lbl" for="brand_id[]" class="hasTooltip required" title="Brand">Brand:<span class="star">&#160;*</span></label>																				
			</div>
			<div class="controls">
				<?php 
				$dropdown = JHTML::_('select.genericlist', $this->ddlbrands, 'brand_id[]', 'class="inputbox required" ', 'value', 'text', $this->profile->brand_ids);
				echo $dropdown;
				?>				
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">
				<label>Photo: (*.jpg)<span class="star">&#160;*</span></label>												
			</div>
			<div class="controls">
				<?php if(!empty($this->photourl)):?>
				<div class="clearfix">
					<img src="<?php echo $this->photourl; ?>" class="img-responsive" width="200" />
				</div>	
				<?php endif;?>
				<input type="file" name="file_upload" />
			</div>
		</div>
		<div class="control-group">
			<div class="control-label">				
				<label id="profile-lbl" for="profile_text" class="hasTooltip required" title="Profile">Profile:<span class="star">&#160;*</span></label>																				
			</div>
			<div class="controls">
				<textarea name="profile_text" id="profile_text"><?php echo $this->escape($this->profile->profile_text);?></textarea>			
			</div>
		</div>
	</fieldset>
	
    <?php echo JHtml::_('form.token'); ?>
	<div class="clearfix" ></div>
    
    <div class="control-group">
		<div class="controls">
			<button type="submit" class="btn btn-primary validate">Submit</button>			
		</div>
	</div>
    
</form>
