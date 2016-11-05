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
<h2>My Vehicle Choice</h2>
<?php if(count($this->vehicles)==0):?>
	<p>Please Choose a Vehicle .</p>
<?php else:?>
<table border="1" cellpadding="10" width="80%">
	<thead>
		<tr>
			<th>Vehicle Name</th>			
		</tr>
	</thead>
	<tbody>
		<?php foreach($this->vehicles as $v):?>
		<tr>
			<td>				
				<?php echo $this->escape($v->vehicle_name); ?></a>
			</td>			
		</tr>
		<?php endforeach;?>
	</tbody>
</table>
<?php endif;?>
