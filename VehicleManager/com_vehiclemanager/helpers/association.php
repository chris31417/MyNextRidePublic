<?php

defined('_JEXEC') or die;

JLoader::register('ContentHelper', JPATH_ADMINISTRATOR . '/components/com_content/helpers/content.php');
JLoader::register('CategoryHelperAssociation', JPATH_ADMINISTRATOR . '/components/com_categories/helpers/association.php');

abstract class VehiclemanagerHelperAssociation extends CategoryHelperAssociation{


	public static function getAssociations($id = 0, $view = null){
          if(isset($_REQUEST['task'])){
                
                $task = $_REQUEST['task'];
		JLoader::import('helpers.route', JPATH_COMPONENT_SITE);

		if($_REQUEST[task] == 'showCategory'){

			//$catid = $_REQUEST[catid];
			$catid = intval(mosGetParam($_REQUEST, 'catid', 0));
		 	$itemId = $_REQUEST['Itemid'];

			if($catid){
				$rederectUrlArr = VehiclemanagerHelperRoute::getVmCategoryRoute($catid, $itemId);
				return $rederectUrlArr;
			}			
		}

		if($_REQUEST[task] == 'view'){		

			//$id = $_REQUEST[id];
		 	$itemId = $_REQUEST['Itemid'];
		 	$id = intval(mosGetParam($_REQUEST, 'id', 0));
		 	
		 	
			if ($id){
				$rederectUrlArr = VehiclemanagerHelperRoute::getVmAssocRoute($id, $itemId);
				return $rederectUrlArr;
			}
		}
          }

		return array();
	}
}