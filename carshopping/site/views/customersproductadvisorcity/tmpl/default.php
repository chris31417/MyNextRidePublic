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
//var_dump($this->productAdvisors);

?>
<h2>Product Advisor List - by city</h2>
<form >
<table>
		<tr>
			<td>Filter:</td>
			<td>
			<?php 
				$dropdown = JHTML::_('select.genericlist', $this->ddlcities, 'city_id', 'onchange="this.form.submit()" class="inputbox required"', 'value', 'text', $this->city_id);
				echo $dropdown;						
			?></td>
		</tr>
</table>
</form>
<?php if(count($this->productAdvisors)==0):?>
	<p>There is no Product Advisor. Please select a city from dropdown above</p>
<?php else:?>
<table border="1" cellpadding="10" width="80%">
	<thead>
		<tr>
			<th>Name</th>
			<th>City</th>
			<th>Brand</th>
			<th>Dealer</th>
			<th>Phone</th>			
			<th>Online</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach($this->productAdvisors as $pa):?>
		<tr>
			<td>
				<a title="<?php echo $this->escape($pa->profile_text);?>.<br />Click to chat" href="<?php echo JRoute::_('index.php?option=com_carshopping&task=Matches.chat&pa='.$pa->created_by);?>">
				<?php if(!empty($pa->photourl)): ?>			
				<img src="<?php echo $pa->photourl;?>" width="60" height="50" />
				<?php endif;?>
				<?php echo $this->escape($pa->name); ?></a>
			</td>
			<td><?php echo $this->escape($pa->city);?></td>
			<td><?php echo $this->escape($pa->brand);?></td>
			<td><?php echo $this->escape($pa->dealername);?></td>
			<td><?php echo $this->escape($pa->phone);?></td>			
			<td><?php if($pa->loggedin){ echo 'Yes';}else{ echo 'No';}?></td>
		</tr>
		<?php endforeach;?>
	</tbody>
</table>
<?php endif;?>
