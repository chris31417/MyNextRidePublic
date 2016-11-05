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
$listOrder = $this->state->get('list.ordering');
$listDirn = $this->state->get('list.direction');
$canCreate = $user->authorise('core.create', 'com_carshopping');
$canEdit = $user->authorise('core.edit', 'com_carshopping');
$canCheckin = $user->authorise('core.manage', 'com_carshopping');
$canChange = $user->authorise('core.edit.state', 'com_carshopping');
$canDelete = $user->authorise('core.delete', 'com_carshopping');
?>

<form class="dilemmas" action="<?php echo JRoute::_('index.php?option=com_carshopping&task=dilemmas.save'); ?>" method="post" name="adminForm" id="adminForm">
	<table border="1" cellpadding="10">
<tbody>
	<?php  
	$d = 1;
	foreach($this->items as $item):?>
		<?php
		$checked = '';
		if($this->prevdilemma!=NULL && in_array($item->id,$this->prevdilemma)){
			$checked = "checked";
		}
		?>
		<?php if($d==1):?>
		<tr>
		<?php endif;?>	
		<td><input type="checkbox" id="d<?php echo $item->id;?>" value="<?php echo $item->id;?>" <?php echo $checked;?> name="dilemma[]"> <label for="d<?php echo $item->id;?>" title="<?php echo $this->escape($item->tooltip);?>"><?php echo $this->escape($item->title);?></label></td>
		<?php if($d==2):?>
		</tr>
		<?php endif;?>	
		<?php
		$d++;
		if($d==3)$d=1;
		?>
		
	<?php endforeach;?>
</tbody>
</table>

<br />
    <?php echo JHtml::_('form.token'); ?>
	<div class="clearfix" ></div>
    <input id="btnSave" type="submit" value="Save" />
    
</form>
<script type="text/javascript">

    jQuery(document).ready(function () {
        jQuery('.dilemmas').submit(saveDilemma);
    });

    function saveDilemma() {
        var selected = jQuery('.dilemmas :checkbox:checked');
        if(selected.length==0){
			if(confirm('Are you sure there is nothing you want to discuss?')){
				return true;
			}else{
				return false;
			}
		}
        if(selected.length>3){
			alert('Please select not more than 3 choices');
			return false;
		}
		return true;
    }
</script>
