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
<h2>Shopping Profile: <?php echo $this->escape($this->match->customer_name);?></h2>
<?php if($this->shopping_profile==null):?>
	<p>Empty</p>
<?php else:?>
	<?php echo $this->escape($this->shopping_profile->q1);?>
<?php endif;?>
<br />
<p><a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=Productadvisorscustomerdata&m='.$this->match_id);?>">Back</a></p>
