<?php
/**
 * @version     1.0.0
 * @package     mod_carshopping_login
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      aldo <aldopraherda@gmail.com> - http://www.aldoapp.com
 */

defined('_JEXEC') or die;

JHtml::_('behavior.keepalive');
?>

<?php if($isProductAdvisor):?>
	<p>
		<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=productadvisorscustomer'); ?>">Customer List</a><br />
		<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=productadvisorprofile'); ?>">Product Advisor Profile</a><br />
		<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=matches&layout=productadvisor'); ?>">Conversations</a>
	</p>
<?php elseif($isDealer):?>
<p>
	<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=dealerprofile'); ?>">Dealer Profile</a><br />
	<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=dealersproductadvisor'); ?>">Dealer's Product Advisors</a>
	<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=dealerspendingproductadvisor'); ?>">Pending Product Advisors</a>
	<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=matches&layout=dealer'); ?>">Conversations</a>
</p>
<?php else: //customer?>
<p>
	<a href="/choose">Choose</a><br />
	<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=customersproductadvisorbrands'); ?>">Product Advisor List by Brands</a><br />
	<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=customersproductadvisorcity'); ?>">Product Advisor List by City</a><br />
	<a href="<?php echo JRoute::_('index.php?option=com_carshopping&view=matches&layout=customer'); ?>">Conversations</a></p>
</p>
<?php endif;?>


<form action="<?php echo JRoute::_('index.php', true, $params->get('usesecure')); ?>" method="post" id="login-form" class="form-vertical">
<?php if ($params->get('greeting')) : ?>
	<div class="login-greeting">
	<?php if ($params->get('name') == 0) : {
		echo JText::sprintf('Hi %s', htmlspecialchars($user->get('name')));
	} else : {
		echo JText::sprintf('Hi %s', htmlspecialchars($user->get('name')));
	} endif; ?>
	</div>
<?php endif; ?>
	<div class="logout-button">
		<input type="submit" name="Submit" class="btn btn-primary" value="<?php echo JText::_('JLOGOUT'); ?>" />
		<input type="hidden" name="option" value="com_users" />
		<input type="hidden" name="task" value="user.logout" />
		<input type="hidden" name="return" value="<?php echo $return; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>
