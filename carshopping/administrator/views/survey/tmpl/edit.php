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
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
JHtml::_('formbehavior.chosen', 'select');
JHtml::_('behavior.keepalive');

// Import CSS
$document = JFactory::getDocument();
$document->addStyleSheet('components/com_carshopping/assets/css/carshopping.css');
?>
<script type="text/javascript">
    js = jQuery.noConflict();
    js(document).ready(function() {
        
    });

    Joomla.submitbutton = function(task)
    {
        if (task == 'survey.cancel') {
            Joomla.submitform(task, document.getElementById('survey-form'));
        }
        else {
            
            if (task != 'survey.cancel' && document.formvalidator.isValid(document.id('survey-form'))) {
                
                Joomla.submitform(task, document.getElementById('survey-form'));
            }
            else {
                alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED')); ?>');
            }
        }
    }
</script>

<form action="<?php echo JRoute::_('index.php?option=com_carshopping&layout=edit&id=' . (int) $this->item->id); ?>" method="post" enctype="multipart/form-data" name="adminForm" id="survey-form" class="form-validate">

    <div class="form-horizontal">
        <?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'general')); ?>

        <?php echo JHtml::_('bootstrap.addTab', 'myTab', 'general', JText::_('COM_CARSHOPPING_TITLE_SURVEY', true)); ?>
        <div class="row-fluid">
            <div class="span10 form-horizontal">
                <fieldset class="adminform">

                    				<input type="hidden" name="jform[id]" value="<?php echo $this->item->id; ?>" />
				<input type="hidden" name="jform[ordering]" value="<?php echo $this->item->ordering; ?>" />
				<input type="hidden" name="jform[state]" value="<?php echo $this->item->state; ?>" />
				<input type="hidden" name="jform[checked_out]" value="<?php echo $this->item->checked_out; ?>" />
				<input type="hidden" name="jform[checked_out_time]" value="<?php echo $this->item->checked_out_time; ?>" />

				<?php if(empty($this->item->created_by)){ ?>
					<input type="hidden" name="jform[created_by]" value="<?php echo JFactory::getUser()->id; ?>" />

				<?php } 
				else{ ?>
					<input type="hidden" name="jform[created_by]" value="<?php echo $this->item->created_by; ?>" />

				<?php } ?>			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('q1'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('q1'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('q11'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('q11'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('q2'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('q2'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('q3'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('q3'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('q4'); ?></div>
				<div class="controls">
					<?php
					$q4 = $this->form->getValue('q4');
					if(!empty($q4) && $q4!='nocar'){
						$q4s = explode(',',$q4);
						$q4t1 = $q4s[0];
						$q4t2 = $q4s[1];
						?>
						a <input onfocus="jQuery('input[name=q4]').attr('checked',false);" type="text" name="q4t1"  value="<?php echo $this->escape($q4t1);?>" /> with <input onfocus="jQuery('input[name=q4]').attr('checked',false);" type="text"  name="q4t2" value="<?php echo $this->escape($q4t2);?>" />KM
						<?php
					}else{	
					?>
					<label>I dont have a car</label>
					<?php
					}
					?>
				</div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('q5'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('q5'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('q6'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('q6'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('q7'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('q7'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('q8'); ?></div>
				<div class="controls"><textarea name="jform[q8]" id="jform[q8]"><?php 
				$f = json_decode($this->form->getValue('q8'),TRUE); 
				echo implode("\n",$f);
				?></textarea></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('q9'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('q9'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('q10'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('q10'); ?></div>
			</div>

				<?php echo $this->form->getInput('created_time'); ?>

                </fieldset>
            </div>
        </div>
        <?php echo JHtml::_('bootstrap.endTab'); ?>
        
        

        <?php echo JHtml::_('bootstrap.endTabSet'); ?>

        <input type="hidden" name="task" value="" />
        <?php echo JHtml::_('form.token'); ?>

    </div>
</form>
