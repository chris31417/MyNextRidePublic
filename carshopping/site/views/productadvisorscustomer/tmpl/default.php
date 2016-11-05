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
<?php if(count($this->customers)==0):?>
<p>Empty</p>
<?php else:?>
<h2>Customer List</h2>
<table border="1" cellpadding="10">
	<thead>
		<tr>
			<th>Name</th>		
			<th>Shopping Profile</th>
			<th>Online</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach($this->customers as $cust):?>
		<tr>
			<td>
				<a title="<?php echo $this->escape($cust->name);?>.<br />Click to chat" href="<?php echo JRoute::_('index.php?option=com_carshopping&task=Matches.chat&c='.$cust->id);?>">
				<?php echo $this->escape($cust->name);?>
				</a>
			</td>		
			<td>
				<?php if($cust->shopping_profile!=NULL){ echo $this->escape($cust->shopping_profile->q1);}?>
			</td>	
			<td><?php if($cust->loggedin){ echo 'Yes';}else{ echo 'No';}?></td>
		</tr>
		<?php endforeach;?>
	</tbody>
</table>
<?php endif;?>
