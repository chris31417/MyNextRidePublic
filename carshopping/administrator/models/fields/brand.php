<?php
// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die('Restricted access');
 
jimport('joomla.form.formfield');
 
class JFormFieldBrand extends JFormField {
 
	protected $type = 'Brand';
 
	// getLabel() left out
 
	public function getInput() {
		
		$db = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('*');
		$query->from($db->quoteName('#__carshopping_brand','a'));				
		$query->order('brand_name ASC');
		$db->setQuery($query);
		$brands = $db->loadObjectList();
		$html = '';
		if($brands!=NULL){			
			$optBrands = array();
			foreach($brands as $brand){
				$optBrands[] = JHTML::_('select.option', $brand->id, $brand->brand_name);
			}
			$html = JHTML::_('select.genericlist', $optBrands, $this->name.'[]', 'class="inputbox required" multiple', 'value', 'text', $this->value);
		}
		return $html;
		
	}
}
