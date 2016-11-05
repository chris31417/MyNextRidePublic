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
//var_dump($this->infos);

?>
<h2>Buying Information</h2>

<div>	
	<?php if(!empty($this->photourl)):?>
	<div class="clearfix">
		<img title="Here is what we are considering" src="<?php echo $this->photourl; ?>" class="img-responsive" width="85" height="100" />
	</div>	
	<?php endif;?>
	<h3><?php echo $this->escape($this->product_advisor->name);?></h3>
	<?php //var_dump($this->recommendations);?>
	<table border="1" cellpadding="8">
		<tbody>
			<?php 
			$i = 0;
			foreach($this->infos as $rec):?>
			<tr>
				<td>										
					<?php if(!empty($rec->image_link)):?>
					<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=buy');?>?id=<?php echo $rec->id;?>&m=<?php echo $this->match_id;?>&v=<?php echo $rec->vehicle_id;?>" title="Buy now"><img width="<?php if($i==0){echo "240";}else{echo "120";}?>" src="components/com_vehiclemanager/photos/<?php echo $this->escape($rec->image_link);?>"></a><br />
					<?php endif;?>					
					<?php echo $this->escape($rec->vehicle_name);?><br />
					<strong>Notes:</strong><br />  <?php echo $this->escape($rec->note1);?><br />										
				</td>
				<td>
					<strong>Price:</strong><br /> $<?php echo $this->escape($rec->price);?><br />					
				</td>
			</tr>
			<?php $i++;?>
			<?php endforeach;?>
		</tbody>
	</table>
   
	<div class="clearfix" ></div>
</div>
