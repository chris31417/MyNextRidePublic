<?php
if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' );

/**
*
* @package  VehicleManager
* @copyright 2012 Andrey Kvasnevskiy-OrdaSoft(akbet@mail.ru); Rob de Cleen(rob@decleen.com);
* Homepage: http://www.ordasoft.com
* @version: 2.2 Free
*
**/

        global $Itemid, $mosConfig_live_site, $option, $vehiclemanager_configuration, $my, $database, $doc, $acl;
        $session = JFactory::getSession();
        $arr = $session->get("array", "default");
        $doc->addScript($mosConfig_live_site.'/components/com_vehiclemanager/includes/functions.js');
        $doc->addStyleSheet( $mosConfig_live_site.'/components/com_vehiclemanager/includes/custom.css' );
positions_vm($params->get('my01'));

/*********************************************get max count car************************************************/               
                $count_car_all = getCountCarForSingleUserVM($my,$database,$vehiclemanager_configuration);
                $count_car_single_user = $count_car_all[0];
                $count_car_for_single_group = $count_car_all[1];
                
/****************************************************************************************************************/
                
?>
<script>
function vm_buttonClick(button){
    
    if(button.name=='addvehicle'){
        vm_submitform('show_add_vehicle');
        return;
    }

    var c = document.getElementsByName('vid[]');
    for(var i=0;i<c.length;i++){
        if(c[i].checked){
            var checkedvehicles = true;
            break;
        }
    }

    if(!checkedvehicles){
        alert("<?php echo _VEHICLE_MANAGER_ERROR_NOT_SELECTED;?>")
        return;
    }

    if(button.name=='publish'){
        var maxCountCar = <?php echo ($count_car_for_single_group + 0) ?>;
        var countCar = <?php echo ($count_car_single_user + 0) ?>;       
/***************************************** cheack for max count car ****************************************************/
        
        if(countCar >= maxCountCar){
            alert('You have: ' + countCar + ' cars, ' + 'maximum count cars for your group: ' + maxCountCar);
            return;
        }   
        
/**********************************************************************************************************************/       
        
        vm_submitform('publish_vehicle');
        return;
    
    }

    if(button.name=='unpublish'){
        vm_submitform('unpublish_vehicle');
        return;
    }

    if(button.name=='delete'){
        resultat = confirm("<?php echo _VEHICLE_MANAGER_DELETE_VEHICLES;?>");
        if (resultat) vm_submitform('delete_vehicle');
        return;
    }
}
</script>

<!--[if IE]>
<style type="text/css">
  .basictable {
    zoom: 1;     /* triggers hasLayout */
    }  /* Only IE can see inside the conditional comment
    and read this CSS rule. Don't ever use a normal HTML
    comment inside the CC or it will close prematurely. */
</style>
<![endif]-->


<?php
    PHP_vehiclemanager::showTabs();
    if ($option=="com_vehiclemanager"){
?>
        <div class="componentheading"><?php echo $params->get('title');?></div>
<?php
    }
?>
    <br/>
<form action="index.php" method="post" id = "adminForm" name="adminForm">
<?php

      if(count($vehicles)) {
?>

	<div class="my_vehicles_table basictable">
		  <div class="vm_check_all">
		      <input type="checkbox" name="toggle" onClick="vm_checkAll(this);" />
		      <p><?php echo ('check All');?></p>
		  </div>

		<?php 
		    foreach ($vehicles as $i=>$vehicle){
			$v_item = new mosVehicleManager($database);
			$v_item->load($vehicle->id);
			$v_item->setCatIds();
			$vehicle->catid = $v_item->catid;
		?>

		<div class="row_my_vehicles">

		      <div class="col_check_id">
			<span class="col_check">
			      <input type="checkbox" value="<?php echo $vehicle->id;?>" name="vid[]" id="cb<?php echo $i;?>" /> 
			</span>
			<span class="col_id">
			      <?php echo _VEHICLE_MANAGER_LABEL_ID;?>
			</span>
			<span class="col_num">
			      <?php echo $vehicle->vehicleid;?>
			</span>
		      </div>
			<span class="col_edit">
				<?php
					  if ($option!="com_vehiclemanager"){
				?>
					<a href="index.php?option=<?php echo $option;?>&task=edit_vehicle&tab=getmyvehiclesTab&is_show_data=1&id=<?php echo $vehicle->id;?>&Itemid=<?php echo $Itemid;?>">
				<?php
					} else{
				?>
					<a href="index.php?option=<?php echo $option;?>&task=edit_vehicle&id=<?php echo $vehicle->id;?>&Itemid=<?php echo $Itemid;?>">
				<?php
					}
				?>
					<?php echo "<img src='" . $mosConfig_live_site . "/components/com_vehiclemanager/images/edit.png' name='image' border='0' align='middle' />";?>
					<?php //echo _VEHICLE_MANAGER_LABEL_EDIT;?>
				</a>
			</span>
		      <div class="vmodel_vtitle">
			<span class="col_vtitle">
				<?php
				  if ($option!="com_vehiclemanager"){
				?>
					<a href="index.php?option=<?php echo $option;?>&task=view_vehicle&tab=getmyvehiclesTab&is_show_data=1&id=<?php echo $vehicle->id;?>&catid=<?php echo $vehicle->catid[0];?>&Itemid=<?php echo $Itemid;?>" alt="">
				<?php
					} else{
				?>
					<a href="index.php?option=<?php echo $option;?>&task=view_vehicle&id=<?php echo $vehicle->id;?>&catid=<?php echo $vehicle->catid[0];?>&Itemid=<?php echo $Itemid;?>" alt="">
				<?php
					}
				?>
                                        <?php echo $vehicle->vtitle;?>
                               </a>
			</span>
			      <br />
			<span class="col_vmodel">
				<?php //echo _VEHICLE_MANAGER_LABEL_MAKER,', ',_VEHICLE_MANAGER_LABEL_MODEL;?>
				<?php if($vehicle->vmodel=='') echo $vehicle->maker; else echo $vehicle->maker,', ',$vehicle->vmodel; ?>
			</span>
		      </div>

		      <div class="aprowed_public">
			<span class="col_public">
				<span class="col_08"><?php echo _VEHICLE_MANAGER_LABEL_PUBLIC;?></span>
				<?php $img = ($vehicle->published)? 'available.png' : 'not_available.png'; ?>
				<img src="components/com_vehiclemanager/images/<?php echo $img?>" alt="<?php echo $img?>"/>
			</span>
			<br />
			<span class="col_aprowed">
				<span class="col_09"><?php echo _VEHICLE_MANAGER_LABEL_APPROVED;?></span>
				<?php $img = ($vehicle->approved)? 'available.png' : 'not_available.png';?>
				<img src="components/com_vehiclemanager/images/<?php echo $img?>" alt="<?php echo $img?>"/>
			</span>
			<br />
			<span class="col_rentout">
				<?php
				      if($vehicle->listing_type == '1'){
				      if ($vehicle->rent_from == null) {
					?>
					  <span class="col_06"><?php echo _VEHICLE_MANAGER_LABEL_RENT;?></span> 
					<a href="javascript: void(0);" onClick="return vm_listItemTask('cb<?php echo $i;?>','rent_vehicle','adminForm')">
					<img src='<?php echo $mosConfig_live_site; ?>/administrator/components/com_vehiclemanager/images/lend_f2.png' align='middle' width='15' height='15' border='0' alt='Rent out' />
					  <br />
					</a>
				      <?php
				      } else{
				      ?>
				  <a href="javascript: void(0);" onClick="return vm_listItemTask('cb<?php echo $i;?>','rent_return_vehicle','adminForm')"> 
				  <img src='<?php echo $mosConfig_live_site; ?>/administrator/components/com_vehiclemanager/images/lend_return_f2.png' align='middle' width='15' height='15' border='0' alt='Return vehicle' />
				      <br />
				      </a>
				      <?php
				      }
				}?>
			</span>
		      </div>
		      <div class="col_hits">
			  <span class="col_1">
			      <?php echo "<img src='" . $mosConfig_live_site . "/components/com_vehiclemanager/images/hits.png' name='image' border='0' align='middle' />" . "&nbsp;" . _VEHICLE_MANAGER_LABEL_HITS; ?>
			  </span>
			  <span class="col_2">
			      <?php echo $vehicle->hits;?>
			  </span>
		      </div>
		</div>
                  <?php
                  }//endfor vehicle
                  ?>
		<div class="page_navigation">
			<div class="row_02">
			    <?php 
                            $paginations = $arr;
                            if($pageNav->total>$pageNav->limit){
                                echo $pageNav->getPagesLinks();
                            }
			    ?>
			</div>
		</div>
		<div class="row_04">
			<span class="col_01">
				<?php positions_vm($params->get('my02'));?>
					  <input type="button" name="addvehicle" value="<?php echo _VEHICLE_MANAGER_LABEL_ADD_VEHICLE;?>" onclick="vm_buttonClick(this)"/>
					  <input type="button" name="publish" value="<?php echo _VEHICLE_MANAGER_LABEL_PUBLISH;?>" onclick="vm_buttonClick(this)"/>
					  <input type="button" name="unpublish" value="<?php echo _VEHICLE_MANAGER_LABEL_UNPUBLISH;?>" onclick="vm_buttonClick(this)"/>
					  <input type="button" name="delete" value="<?php echo _VEHICLE_MANAGER_LABEL_DELETE;?>" onclick="vm_buttonClick(this)"/>
				<?php positions_vm($params->get('my03'));?>
						<input type="button" name="rentout" value="<?php echo _VEHICLE_MANAGER_LABEL_BUTTON_RETURN_VEHICLE_FROM_RENT;?>" onclick="vm_buttonClickRent(this)"/>
						<input type="button" name="rent" value="<?php echo _VEHICLE_MANAGER_LABEL_BUTTON_RENT;?>" onclick="vm_buttonClickRent(this)"/>
			</span>
			<span class="col_02">
				<input type="hidden" name="option" value="<?php echo $option;?>"/>
				<input type="hidden" id="adminFormTaskInput" name="task" value="" />
				<?php
					      if ($option!="com_vehiclemanager"){
				?>
					<input type="hidden" name="tab" value="getmyvehiclesTab"/>
					<input type="hidden" name="is_show_data" value="1"/>
				<?php
				      }
				?>
				<input type="hidden" name="Itemid" value="<?php echo $Itemid;?>"/>
			</span>
		</div>
        </div>
      </form>

<?php positions_vm($params->get('my04'));
 }
      else {
echo _VEHICLE_MANAGER_ERROR_HAVENOT_VEHICLES;
?>
    <form action="index.php" method="get" name="adminForm" id="adminForm">
        <input type="button" name="addvehicle" value="<?php echo _VEHICLE_MANAGER_LABEL_ADD_VEHICLE;?>" onclick="vm_buttonClick(this)"/>  
        <input type="hidden" name="option" value="<?php echo $option;?>"/>
        <input type="hidden" id="adminFormTaskInput" name="task" value="" />
<?php
  if ($option!="com_vehiclemanager"){
?>
            <input type="hidden" name="tab" value="getmyvehiclesTab"/>
            <input type="hidden" name="is_show_data" value="1"/>
<?php
        }
?>
        <input type="hidden" name="Itemid" value="<?php echo $Itemid;?>"/>
    </form>
      <?php
    }
?>