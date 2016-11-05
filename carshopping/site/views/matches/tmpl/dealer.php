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
<h2>Product Advisors Matches</h2>
<?php if($this->productAdvisors!=NULL):?>
	<?php foreach($this->productAdvisors as $pa):?>
		<h3><?php echo $pa->name;?>'s Matches:</h3>
		<div class="matchlist">
		<?php if(count($pa->matches)==0):?>
			<p>Empty</p>
		<?php else: ?>			
			<?php foreach($pa->matches as $match):?>
				<div class="matchitem clearfix">
					<div class="span4">
						<div class="matchsender">
							<p><strong><?php echo $this->escape($match->name);?></strong><br />
							<span><?php echo $this->escape($match->user_type_text);?></span><br />
							<em><?php echo $this->escape($match->created_time_text);?></em></p>
						</div>		
						<div class="matchtalkto">
							<p>with: <?php echo $this->escape($match->customer_name);?></p>
						</div>
					</div>
					<div class="span8">
						<div class="messages">
							<?php echo $this->escape($match->message);?>
							<p><a href="<?php echo JRoute::_('index.php?option=com_carshopping&task=Matches.chat&c='.$match->customer_id.'&pa='.$match->product_advisor_id);?>">Click here to chat</a></p>
						</div>
					</div>
				</div>
				<hr />
			<?php endforeach;?>
		<?php endif; ?>	
	</div>

	<?php endforeach;?>
<?php endif;?>
