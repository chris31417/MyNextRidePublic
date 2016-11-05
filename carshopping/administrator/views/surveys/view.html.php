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

/**
 * View class for a list of Carshopping.
 */
class CarshoppingViewSurveys extends JViewLegacy {

    protected $items;
    protected $pagination;
    protected $state;

    /**
     * Display the view
     */
    public function display($tpl = null) {		
		$this->state = $this->get('State');
        $this->items = $this->get('Items');
        //convert to readable
		$this->convertValuesToText();
        $this->pagination = $this->get('Pagination');

        // Check for errors.
        if (count($errors = $this->get('Errors'))) {
            throw new Exception(implode("\n", $errors));
        }

        CarshoppingHelper::addSubmenu('surveys');

        $this->addToolbar();

        $this->sidebar = JHtmlSidebar::render();
        parent::display($tpl);
    }

    /**
     * Add the page title and toolbar.
     *
     * @since	1.6
     */
    protected function addToolbar() {
        require_once JPATH_COMPONENT . '/helpers/carshopping.php';

        $state = $this->get('State');
        $canDo = CarshoppingHelper::getActions($state->get('filter.category_id'));

        JToolBarHelper::title(JText::_('COM_CARSHOPPING_TITLE_SURVEYS'), 'surveys.png');

        //Check if the form exists before showing the add/edit buttons
        $formPath = JPATH_COMPONENT_ADMINISTRATOR . '/views/survey';
        if (file_exists($formPath)) {

            if ($canDo->get('core.create')) {
               // JToolBarHelper::addNew('survey.add', 'JTOOLBAR_NEW');
            }

            if ($canDo->get('core.edit') && isset($this->items[0])) {
                JToolBarHelper::editList('survey.edit', 'JTOOLBAR_EDIT');
            }
        }

        if ($canDo->get('core.edit.state')) {

            if (isset($this->items[0]->state)) {
                //JToolBarHelper::divider();
                //JToolBarHelper::custom('surveys.publish', 'publish.png', 'publish_f2.png', 'JTOOLBAR_PUBLISH', true);
                //JToolBarHelper::custom('surveys.unpublish', 'unpublish.png', 'unpublish_f2.png', 'JTOOLBAR_UNPUBLISH', true);
            } else if (isset($this->items[0])) {
                //If this component does not use state then show a direct delete button as we can not trash
                //JToolBarHelper::deleteList('', 'surveys.delete', 'JTOOLBAR_DELETE');
            }

            if (isset($this->items[0]->state)) {
                //JToolBarHelper::divider();
                //JToolBarHelper::archiveList('surveys.archive', 'JTOOLBAR_ARCHIVE');
            }
            if (isset($this->items[0]->checked_out)) {
                JToolBarHelper::custom('surveys.checkin', 'checkin.png', 'checkin_f2.png', 'JTOOLBAR_CHECKIN', true);
            }
        }

        //Show trash and delete for components that uses the state field
        if (isset($this->items[0]->state)) {
            if ($state->get('filter.state') == -2 && $canDo->get('core.delete')) {
                //JToolBarHelper::deleteList('', 'surveys.delete', 'JTOOLBAR_EMPTY_TRASH');
                //JToolBarHelper::divider();
            } else if ($canDo->get('core.edit.state')) {
                //JToolBarHelper::trash('surveys.trash', 'JTOOLBAR_TRASH');
                //JToolBarHelper::divider();
            }
        }

        if ($canDo->get('core.admin')) {
            JToolBarHelper::preferences('com_carshopping');
        }

        //Set sidebar action - New in 3.0
        JHtmlSidebar::setAction('index.php?option=com_carshopping&view=surveys');

        $this->extra_sidebar = '';
        /*
		JHtmlSidebar::addFilter(

			JText::_('JOPTION_SELECT_PUBLISHED'),

			'filter_published',

			JHtml::_('select.options', JHtml::_('jgrid.publishedOptions'), "value", "text", $this->state->get('filter.state'), true)

		);*/

    }

	protected function getSortFields()
	{
		return array(
		'a.id' => JText::_('JGRID_HEADING_ID'),
		'a.ordering' => JText::_('JGRID_HEADING_ORDERING'),
		'a.state' => JText::_('JSTATUS'),
		'a.q1' => JText::_('COM_CARSHOPPING_SURVEYS_Q1'),
		'a.q11' => JText::_('COM_CARSHOPPING_SURVEYS_Q11'),
		'a.q2' => JText::_('COM_CARSHOPPING_SURVEYS_Q2'),
		'a.q3' => JText::_('COM_CARSHOPPING_SURVEYS_Q3'),
		'a.q4' => JText::_('COM_CARSHOPPING_SURVEYS_Q4'),
		'a.q5' => JText::_('COM_CARSHOPPING_SURVEYS_Q5'),
		'a.q6' => JText::_('COM_CARSHOPPING_SURVEYS_Q6'),
		'a.q7' => JText::_('COM_CARSHOPPING_SURVEYS_Q7'),
		'a.created_time' => JText::_('COM_CARSHOPPING_SURVEYS_CREATED_TIME'),
		);
	}
	protected function convertValuesToText(){
		require_once JPATH_COMPONENT . '/helpers/carshopping.php';
		$pathToMyXMLFile = JPATH_COMPONENT_ADMINISTRATOR.DIRECTORY_SEPARATOR.'models'.DIRECTORY_SEPARATOR.'forms'.DIRECTORY_SEPARATOR.'survey.xml';
		$form = JForm::getInstance('survey', $pathToMyXMLFile);
        $col = array('q1','q11','q2','q3','q5','q6','q7');
        foreach($this->items as $item){
			foreach($col as $c){
				$q = $form->getField($c);	
				$item->$c = PublicList::getText($q,$item->$c);
			}			
		}
	}

}
