<?php
// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die('Restricted access');
 
jimport('joomla.form.formfield');
 
class JFormFieldDealer extends JFormField {
 
	protected $type = 'Dealer';
 
	// getLabel() left out
 
	public function getInput() {
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('*, b.id as dealerid');
		$query->from($db->quoteName('#__carshopping_dealer_profile','a'));		
		$query->join('LEFT', $db->quoteName('#__users', 'b') . ' ON (' . $db->quoteName('a.created_by') . ' = ' . $db->quoteName('b.id') . ')');
		$query->order('name ASC');
		$db->setQuery($query);
		$dealers = $db->loadObjectList();
		$html = '';
		if($dealers!=NULL){
			$html .= '<select id="'.$this->id.'" name="'.$this->name.'">';
			foreach($dealers as $d){
				$html .= '<option value="'.$d->dealerid.'" >'.$d->username.'</option>';
			}
			$html .= '</select>';
		}
		return $html;
	}
}
