<?php
defined('_JEXEC') or die;

abstract class VehiclemanagerHelperRoute{

	public static function getVmAssocRoute($id, $itemId){

        $database = JFactory::getDBO();
        $link = array();

        if(isset($id) && isset($itemId)){
            $query = "SELECT parent_id FROM #__vehiclemanager_vehicles WHERE id = $id";
            $database->setQuery($query);
            $parent_id = $database->loadResult();  
          
            if($parent_id > 0){
                $query = "SELECT id, language
                            FROM #__vehiclemanager_vehicles  
                             WHERE parent_id = $parent_id";
                $database->setQuery($query);
                $assocVehicle = $database->loadAssocList(); 

                foreach ($assocVehicle as $value) {
                    $lang = $value['language'];
                    $CurId = $value['id'];
                    
                    if(isset($assocVehicle)){
                        $query = "SELECT idcat
                                      FROM #__vehiclemanager_categories  
                                      WHERE iditem = $CurId";
                        $database->setQuery($query);
                        $assocVehicleCat = $database->loadResult();                        
                    }     
                    $link[$lang] = "index.php?option=com_vehiclemanager&task=view&catid=$assocVehicleCat&id=$CurId&Itemid=$itemId";
                }
            }
        } 
        return $link;
	}

	public static function getVmCategoryRoute($catid, $itemId){

        $database = JFactory::getDBO();
        $link = array();
        $parent_id = array();

        if(isset($catid) && isset($itemId)){
            $catIdArr = array();
            $query = "SELECT associate_category FROM #__vehiclemanager_main_categories WHERE id = $catid";
            $database->setQuery($query);
            $parent_ids = $database->loadResult();  
            if($parent_ids != "" ) $parent_id = unserialize($parent_ids);
            if(count($parent_id) > 0){
                foreach($parent_id as $oneCat){
                    if($oneCat != 0){
                        $catIdArr[] = $oneCat;
                    }
                } 
     
                $catIdStr = implode(',', $catIdArr);
                $query = "SELECT id, language
                            FROM #__vehiclemanager_main_categories  
                             WHERE associate_category in ($catIdStr)";
                $database->setQuery($query);
                $assocCategory = $database->loadAssocList();
       
                foreach ($assocCategory as $value) {
                    $lang = $value['language'];
                    $CurId = $value['id'];
                        
                    $link[$lang] = "index.php?option=com_vehiclemanager&task=showCategory&catid=$CurId&Itemid=$itemId";
                }
            }
        } 
    
        return $link; 
	}
}