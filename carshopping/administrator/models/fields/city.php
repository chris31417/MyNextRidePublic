<?php
// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die('Restricted access');
 
jimport('joomla.form.formfield');
 
class JFormFieldCity extends JFormField {
 
	protected $type = 'City';
 
	// getLabel() left out
 
	public function getInput() {
		$db  = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('*');
		$query->from($db->quoteName('#__carshopping_city'));		
		$db->setQuery($query);
		$cities = $db->loadObjectList();
		$html = '';
		if($cities!=NULL){
			$options = array();
			foreach($cities as $city){
				$options[] = JHTML::_('select.option', $city->id, $city->name);
			}
			$html = JHTML::_('select.genericlist', $options, $this->name, 'class="inputbox required"', 'value', 'text', $this->value);
		}
		return $html;
	}
}
