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
<h2>My Recommendations</h2>

<div>
	<form class="surveys" action="<?php echo JRoute::_('index.php?option=com_carshopping&view=productadvisorrecommendation&m='.$this->match_id); ?>" method="post" name="selectCustomerForm" id="selectCustomerForm"  enctype="multipart/form-data">
	<label>Select customer:</label>
	<?php 
	$dropdown = JHTML::_('select.genericlist', $this->ddlcustomers, 'selectcustomer', 'class="inputbox required" onchange="document.getElementById(\'selectCustomerForm\').submit();"', 'value', 'text', $this->customer->id);
	echo $dropdown;
	?>	
	</form>
	<hr />
	<h3><?php echo $this->escape($this->profile->name);?> for 	<?php echo $this->escape($this->customer->name);?></h3>
	<?php //var_dump($this->recommendations);?>
	<table border="1" cellpadding="8">
		<tbody>
			<?php foreach($this->recommendations as $rec):?>
			<tr>
				<td>					
					<form class="surveys" action="<?php echo JRoute::_('index.php?option=com_carshopping&task=myrecommendation.action'); ?>" method="post" name="recommendationForm" id="recommendationForm"  enctype="multipart/form-data">
					<?php if(!empty($rec->image_link)):?>
					<img width="120" src="components/com_vehiclemanager/photos/<?php echo $this->escape($rec->image_link);?>"><br />
					<?php endif;?>
					<div class="control-group">
						<div class="controls">
							<button onclick="return confirm('Are you sure?');" type="submit" name="action" class="btn validate" value="remove" >Remove from this list</button>
							<button type="submit" name="action" class="btn validate btn-primary " value="propose" >Propose this vehicle</button>							
							<input type="hidden" value="<?php echo $rec->id;?>" name="id" />
							<input type="hidden" value="<?php echo $this->customer->id;?>" name="customer" />
							<input type="hidden" value="<?php echo $this->match_id;?>" name="match_id" />
							 <?php echo JHtml::_('form.token'); ?>
						</div>
					</div>
					
					<strong>Vehicle:</strong> <?php echo $this->escape($rec->vtitle);?><br />
					<strong>Notes:</strong>  <?php echo $this->escape($rec->note1);?><br />
					<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=productadvisorrecommendation&layout=edit');?>&id=<?php echo $rec->id;?>&m=<?php echo $this->match_id;?>#note">Update note</a>
					</form>
				</td>
				<td>
					<strong>Price:</strong> <?php echo $this->escape($rec->price);?><br />
					<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=productadvisorrecommendation&layout=edit');?>&id=<?php echo $rec->id;?>&m=<?php echo $this->match_id;?>#price">Update price</a>
				</td>
			</tr>
			<?php endforeach;?>
		</tbody>
	</table>
   
	<div class="clearfix" ></div>
    
    
    
</div>
