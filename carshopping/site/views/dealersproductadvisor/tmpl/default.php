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
<h2>Dealer's Product Advisors</h2>
<?php if(count($this->productAdvisors)==0):?>
	<p>Empty</p>
<?php else:?>
<table border="1" cellpadding="10">
	<thead>
		<tr>
			<th>Username</th>
			<th>City</th>
			<th>Year Experience</th>
			<th>Verified</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach($this->productAdvisors as $pa):?>
		<tr>
			<td><?php echo $this->escape($pa->username);?></td>
			<td><?php echo $this->escape($pa->city);?></td>
			<td><?php echo $this->escape($pa->year_of_experience);?></td>
			<td>
				<?php 
				$certified = '';
				if(intval($pa->certified)==1){
					$certified = 'Yes';
				}else{
					$certified = 'No';
				}
								
			?>
				<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=dealersproductadvisor&layout=edit&id='.$pa->created_by);?>"><?php echo $this->escape($certified); ?></a>
			</td>
		</tr>
		<?php endforeach;?>
	</tbody>
</table>
<?php endif;?>
