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
<h2>Buy</h2>

	<?php if(!empty($this->vehicle->image_link)):?>
		<img  src="components/com_vehiclemanager/photos/<?php echo $this->escape($this->vehicle->image_link);?>"><br />
	<?php endif;?>				
	<p>
		<strong><?php echo $this->escape($this->info->vehicle_name);?></strong><br />
		<strong>Price:</strong> $ <?php echo $this->escape($this->info->price);?><br />
		<strong>Note:</strong> <?php echo $this->escape($this->info->note1);?></p>
    <p>Congratulations you have made an excellent decision! Please call us to discuss the arrangements. We will ask you to leave a deposit to finalize the deal so please have a credit card number ready. Thank you for your business.</p>
    <?php if(!empty($this->photourl)):?>
		<img title="Call Us Now" src="<?php echo $this->photourl; ?>" class="img-responsive" width="85" height="100" />
	<?php endif;?>
	<h3><?php echo $this->escape($this->product_advisor->name);?></h3>
	<h2>Call: <?php echo $this->escape($this->product_advisor->phone);?></h2>
</div>
