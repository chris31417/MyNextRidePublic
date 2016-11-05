<?php

/**
 * @version     1.0.0
 * @package     com_carshopping
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      aldo <aldopraherda@gmail.com> - http://www.aldoapp.com
 */
// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.view');

/**
 * View to edit
 */
class CarshoppingViewDilemma extends JViewLegacy {

    protected $state;
    protected $item;
    protected $form;

    /**
     * Display the view
     */
    public function display($tpl = null) {
		$this->setModel(JModelLegacy::getInstance('Dilemmas','CarshoppingModel'));
		
        $this->state = $this->get('State');
        $this->item = $this->get('Item');
        $this->form = $this->get('Form');
		//convert choices id to text
		$this->convertValues();
        // Check for errors.
        if (count($errors = $this->get('Errors'))) {
            throw new Exception(implode("\n", $errors));
        }

        $this->addToolbar();
        parent::display($tpl);
    }

    /**
     * Add the page title and toolbar.
     */
    protected function addToolbar() {
        JFactory::getApplication()->input->set('hidemainmenu', true);

        $user = JFactory::getUser();
        $isNew = ($this->item->id == 0);
        if (isset($this->item->checked_out)) {
            $checkedOut = !($this->item->checked_out == 0 || $this->item->checked_out == $user->get('id'));
        } else {
            $checkedOut = false;
        }
        $canDo = CarshoppingHelper::getActions();

        JToolBarHelper::title(JText::_('COM_CARSHOPPING_TITLE_DILEMMA'), 'dilemma.png');

        // If not checked out, can save the item.
        /*
        if (!$checkedOut && ($canDo->get('core.edit') || ($canDo->get('core.create')))) {

            JToolBarHelper::apply('dilemma.apply', 'JTOOLBAR_APPLY');
            JToolBarHelper::save('dilemma.save', 'JTOOLBAR_SAVE');
        }
        
        if (!$checkedOut && ($canDo->get('core.create'))) {
            JToolBarHelper::custom('dilemma.save2new', 'save-new.png', 'save-new_f2.png', 'JTOOLBAR_SAVE_AND_NEW', false);
        }
        // If an existing item, can save to a copy.
        if (!$isNew && $canDo->get('core.create')) {
            JToolBarHelper::custom('dilemma.save2copy', 'save-copy.png', 'save-copy_f2.png', 'JTOOLBAR_SAVE_AS_COPY', false);
        }
        */ 
        if (empty($this->item->id)) {
            JToolBarHelper::cancel('dilemma.cancel', 'JTOOLBAR_CANCEL');
        } else {
            JToolBarHelper::cancel('dilemma.cancel', 'JTOOLBAR_CLOSE');
        }
    }
    public function convertValues(){
		$model = $this->getModel('Dilemmas');
		$choices = $model->getDilemmaChoices();
		//var_dump($choices);
		$currentchoices  = json_decode($this->item->q1,TRUE);
		$text = '<ul>';
		foreach($currentchoices as $c){
			$cx = $choices[$c];
			$text .= '<li>'.$cx->title. '</li>' ;
		}
		$text .= '</ul>';
		$this->dilemmahtml = $text;
	}

}
