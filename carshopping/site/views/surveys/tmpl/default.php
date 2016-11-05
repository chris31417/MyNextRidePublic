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

<form class="surveys" action="<?php echo JRoute::_('index.php?option=com_carshopping&task=surveys.save'); ?>" method="post" name="adminForm" id="adminForm">
	<p>1. I am looking for a:</p>
	<input type="radio" name="q1" value="new" <?php if($this->q1=='new') echo 'checked'?> id="q1new"><label for="q1new">New</label>
	<input type="radio" name="q1" value="used" <?php if($this->q1=='used') echo 'checked'?> id="q1used"><label for="q1used">Used</label>
	<input type="radio" name="q1" value="not_sure" <?php if($this->q1=='not_sure') echo 'checked'?> id="q1notsure"><label for="q1notsure">Not Sure</label>
	<p>2. I am looking for a:</p>
	<input type="radio" name="q11" value="sedan" <?php if($this->q11=='sedan') echo 'checked'?> id="q11sedan"><label for="q11sedan">SEDAN</label>
	<input type="radio" name="q11" value="hatchback" <?php if($this->q11=='hatchback') echo 'checked'?> id="q11hatchback"><label for="q11hatchback">HATCHBACK</label>
	<input type="radio" name="q11" value="suv" <?php if($this->q11=='suv') echo 'checked'?> id="q11suv"><label for="q11suv">SUV</label>
	<input type="radio" name="q11" value="truck" <?php if($this->q11=='truck') echo 'checked'?> id="q11truck"><label for="q11truck">TRUCK</label>
	<p>2. I currently drive</p>
	<input type="radio" name="q2" value="l2k" <?php if($this->q2=='l2k') echo 'checked'?> id="q21"><label for="q21">less than 20000km/year</label>
	<input type="radio" name="q2" value="l2.5k" <?php if($this->q2=='l2.5k') echo 'checked'?> id="q22"><label for="q22">20000−25000 km/year</label>
	<input type="radio" name="q2" value="g2.5k" <?php if($this->q2=='g2.5k') echo 'checked'?> id="q23"><label for="q23">more than 25000km/year</label>
	<p>3. I am</p>
	<input type="radio" name="q3" value="rep" <?php if($this->q3=='rep') echo 'checked'?> id="q31"><label for="q31">replacing a vehicle</label>
	<input type="radio" name="q3" value="buy" <?php if($this->q3=='buy') echo 'checked'?> id="q32"><label for="q32">buying an additional vehicle</label>
	<p>4. I currently drive</p>
	<?php
	if(!empty($this->q4) && $this->q4!='nocar'){
		$q4s = explode(',',$this->q4);
		$this->q4t1 = $q4s[0];
		$this->q4t2 = $q4s[1];
	}else{
		$this->q4t1 = '';
		$this->q4t2 = '';
	}	
	?>
	<p>a <input onfocus="jQuery('input[name=q4]').attr('checked',false);" type="text" name="q4t1"  value="<?php echo $this->escape($this->q4t1);?>" /> with <input onfocus="jQuery('input[name=q4]').attr('checked',false);" type="text"  name="q4t2" value="<?php echo $this->escape($this->q4t2);?>" />KM</p>
	<input onclick="jQuery('input[name=q4t1],input[name=q4t2]').val('');" type="radio" name="q4" <?php if($this->q4=='nocar') echo 'checked'?> value="nocar" id="q41"><label for="q41">I dont have a car</label>
	<p>5. I am</p>
	<input type="radio" name="q5" value="up" <?php if($this->q5=='up') echo 'checked'?> id="q51"><label for="q51">upgrading</label>
	<input type="radio" name="q5" value="down" <?php if($this->q5=='down') echo 'checked'?> id="q52"><label for="q52">downsizing</label>
	<input type="radio" name="q5" value="new" <?php if($this->q5=='new') echo 'checked'?> id="q53"><label for="q53">just want a newer vehicle</label>
	<p>6. The vehicle will be mostly used for</p>
	<input type="radio" name="q6" value="commuting" <?php if($this->q6=='commuting') echo 'checked'?> id="q61"><label for="q61">commuting</label>
	<input type="radio" name="q6" value="trip" <?php if($this->q6=='trip') echo 'checked'?> id="q62"><label for="q62">long trips</label>
	<input type="radio" name="q6" value="family" <?php if($this->q6=='family') echo 'checked'?> id="q63"><label for="q63">family all purpose</label>
	<input type="radio" name="q6" value="work" <?php if($this->q6=='work') echo 'checked'?> id="q64"><label for="q64">work</label>
	<input type="radio" name="q6" value="sometime" <?php if($this->q6=='sometime') echo 'checked'?> id="q65"><label for="q65">I dont drive much</label>
	<p>7. I am</p>
	<input type="radio" name="q7" value="dealer" <?php if($this->q7=='dealer') echo 'checked'?> id="q71"><label for="q71">loyal to one dealership</label>
	<input type="radio" name="q7" value="brand" <?php if($this->q7=='brand') echo 'checked'?> id="q72"><label for="q72">loyal to one brand</label>
	<input type="radio" name="q7" value="domestic" <?php if($this->q7=='domestic') echo 'checked'?> id="q73"><label for="q73">usually buy domestic</label>
	<input type="radio" name="q7" value="import" <?php if($this->q7=='import') echo 'checked'?> id="q74"><label for="q74">usually buy imports</label>
	<p>8. My vehicle must have the following features (5 max)</p>
	<?php 
		if(!empty($this->q8)){
			$q8s = json_decode($this->q8,true);			
		}
		for($q=0;$q<8;$q++){
	?>
	<input type="text" name="q8[]" value="<?php if(isset($q8s[$q]))echo $q8s[$q];?>"><br />
	<?php 
	}
	?>	
	<p>9. The vehicle is</p>
	<input type="radio" name="q9" value="myself" <?php if($this->q9=='myself') echo 'checked'?> id="q91"><label for="q91">just for myself</label>
	<input type="radio" name="q9" value="someone" <?php if($this->q9=='someone') echo 'checked'?> id="q92"><label for="q92">I’m shopping for someone else</label>
	<input type="radio" name="q9" value="family" <?php if($this->q9=='family') echo 'checked'?> id="q93"><label for="q93">family vehicle</label>
	<p>10. I know exactly which car I want</p>
	<input type="radio" name="q10" value="yes" <?php if($this->q10=='yes') echo 'checked'?> id="q101"><label for="q101">Yes</label>
	<input type="radio" name="q10" value="no" <?php if($this->q10=='no') echo 'checked'?> id="q102"><label for="q102">No</label>
	<input type="radio" name="q10" value="dprice" <?php if($this->q10=='dprice') echo 'checked'?> id="q103"><label for="q103">Depends on price</label>
	
    <?php echo JHtml::_('form.token'); ?>
	<div class="clearfix" ></div>
    <input type="submit" value="Save" />
    
</form>

<script type="text/javascript">

    jQuery(document).ready(function () {
        jQuery('.delete-button').click(deleteItem);
    });

    function deleteItem() {
        var item_id = jQuery(this).attr('data-item-id');
        if (confirm("<?php echo JText::_('COM_CARSHOPPING_DELETE_MESSAGE'); ?>")) {
            window.location.href = '<?php echo JRoute::_('index.php?option=com_carshopping&task=surveyform.remove&id=', false, 2) ?>' + item_id;
        }
    }
</script>


