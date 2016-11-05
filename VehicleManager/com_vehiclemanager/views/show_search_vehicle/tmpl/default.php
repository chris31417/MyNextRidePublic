<?php
if (!defined('_VALID_MOS') && !defined('_JEXEC'))
    die('Direct Access to ' . basename(__FILE__) . ' is not allowed.');

/**
 *
 * @package  VehicleManager
 * @copyright 2012 Andrey Kvasnevskiy-OrdaSoft(akbet@mail.ru); Rob de Cleen(rob@decleen.com);
 * Homepage: http://www.ordasoft.com
 * @version: 2.2 Free
 *
 * */
global $hide_js, $Itemid, $mainframe, $mosConfig_live_site, $doc, $vehiclemanager_configuration;
$doc->addStyleSheet($mosConfig_live_site . '/components/com_vehiclemanager/includes/vehiclemanager.css');
//$doc->addScript($mosConfig_live_site.'/includes/js/joomla.javascript.js');
?>

<!--[if IE]>
<style type="text/css">
  .basictable {
    zoom: 1;     /* triggers hasLayout */
    }  /* Only IE can see inside the conditional comment
    and read this CSS rule. Don't ever use a normal HTML
    comment inside the CC or it will close prematurely. */
</style>
<![endif]-->

<?php positions_vm($params->get('showsearch01')); ?>
<div class="span6 componentheading<?php echo $params->get('pageclass_sfx'); ?>">
    <h3><?php echo $currentcat->header; ?></h3>
</div>
<?php positions_vm($params->get('showsearch02')); ?>
<div class="basictable_39 basictable">
    <div class="row_01">
<?php
if ($currentcat->img != null && $currentcat->align == 'left') {
    ?>
      <span class="col_01">
          <img src="<?php echo $currentcat->img; ?>" alt="img" align="<?php echo $currentcat->align; ?>" />
      </span>
       <?php
        }
        ?>
        <span class="col_02">
        <?php //echo $currentcat->descrip; ?>
        </span>
        <?php
        if ($currentcat->img != null && $currentcat->align == 'right') {
            ?>
            <span class="col_03">
                <img src="<?php echo $currentcat->img; ?>" align="<?php echo $currentcat->align; ?>"  alt = "?"/>
            </span>
            <?php
        }
        ?>
    </div>
</div>
<br />

<script type="text/javascript">
    function vm_showDate()
    {
        if(document.userForm1.search_date_box.checked )
        {
            var x=document.getElementById("search_date_from");
            document.userForm1.search_date_from.type="text";

            var x=document.getElementById("search_date_until");
            document.userForm1.search_date_until.type="text";

        }
        else
        {
            var x=document.getElementById("search_date_from");
            document.userForm1.search_date_from.type="hidden";

            var x=document.getElementById("search_date_until");
            document.userForm1.search_date_until.type="hidden";
        }

    }

</script>
<?php positions_vm($params->get('showsearch03')); ?>

<?php $path = "index.php?option=" . $option . "&amp;task=search_vehicle&amp;Itemid=" . $Itemid; ?>

<form action="<?php echo sefRelToAbs($path); //JRoute::_($path);?>" method="get" name="userForm1" id="userForm1">
    <input type="hidden" name="option" value="<?php echo $option; ?>" />
    <input type="hidden" name="Itemid" value="<?php echo $Itemid; ?>" />
    <input type="hidden" name="task" value="search_vehicle" />

    <div class="search_filter">

        <div class="row_01">

            <div class="fix_width_3">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_SEARCH_KEYWORD; ?></span>
                <input class="inputbox" type="text" name="searchtext" size="20" maxlength="20"/>
		<br />
                <input type="submit" name="submit" value="<?php echo _VEHICLE_MANAGER_LABEL_SEARCH_BUTTON; ?>" class="button search_f" />
            </div>

            <div class="fix_width_3">
                <span class="col_04"><?php echo _VEHICLE_MANAGER_LABEL_AVAILABLE_FOR_RENT; ?></span>

		<div class="col_05_06">
		  <span class="col_05"><?php echo _VEHICLE_MANAGER_LABEL_AVAILABLE_FOR_RENT_FROM; ?></span>
		  <span class="search_date_from"><?php echo JHtml::_('calendar', '', 'search_date_from', 'search_date_from', '%Y-%m-%d', array('size' => '17')); ?></span>
		</div>

		<div class="col_07_08">
		  <span class="col_07"><?php echo _VEHICLE_MANAGER_LABEL_AVAILABLE_FOR_RENT_UNTIL; ?></span>
		  <span class="search_date_until"><?php echo JHtml::_('calendar', '', 'search_date_until', 'search_date_until', '%Y-%m-%d', array('class' => 'inputbox', 'size' => '17')); ?></span> 
		</div>
	    </div>

            <div class="fix_width_3">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_YEAR; ?></span>
		    <br />
                 <?php echo $years['yearlist']; ?>
		    <br />
                 <?php echo $years['yearlistto']; ?>
            </div>

            <div class="fix_width_3">
                <span class="col_04"><?php echo _VEHICLE_MANAGER_LABEL_PRICE; ?></span>
		    <br />
                  <?php echo $params->get('pricefrom') ?>
		    <br />
                 <?php echo $params->get('priceto') ?>
            </div>

        </div> <!-- row_01 -->

        <div class="row_02">

            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_CONDITION_STATUS; ?></span>
                <?php echo $params->get('condition_status_list') ?>
            </div>

            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_LISTING_STATUS; ?></span>
                <?php echo $params->get('listing_status_list'); ?>
            </div>

            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_TRANSMISSION_TYPE; ?></span>
                <?php echo $params->get('transmission_type_list'); ?>
            </div>

            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_MAKER; ?></span>
                <?php echo $params->get('maker'); ?>
            </div>

            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_DRIVE_TYPE; ?></span>
                <?php echo $params->get('drive_type_list'); ?>
            </div>

        <script type="text/javascript">
<?php
$arr = $arraymakersmodels;
$makers = $arr[0];
$models = $arr[1];

echo 'var modelscars = [];';
for ($c = 0; $c < count($makers); $c++) {
    $makers[$c] = '\'' . $makers[$c] . '\'';
    foreach ($models[$c] as $temp => $model)
        $models[$c][$temp] = '\'' . $model . '\'';
    echo 'var temp=new Array("' . _VEHICLE_MANAGER_LABEL_ALL . '",' . implode(',', $models[$c]) . ");\n";
    echo 'modelscars[' . $c . "]=temp;\n";
}
echo 'var makers=new Array(' . implode(',', $makers) . ');';
?>
                      function vm_changedMaker(maker){
                          var id = vm_in_array(maker.value,makers);
                          var model = document.getElementsByName('model')[0]
                
                          vm_clearSelectModel();
                          if(maker.value=='<?php echo _VEHICLE_MANAGER_LABEL_ALL; ?>'){
                              vm_setAllmodels();
                              return;
                          }
                          for(var c=0;c<modelscars[id].length;c++){
                              vm_createOptionModel(modelscars[id][c],modelscars[id][c]);
                          }

                      }
                      function vm_clearSelectModel(){
                          var objSelect=document.getElementsByName('model')[0];
                          while(objSelect.options.length > 0){objSelect.remove(0);}
                          return objSelect;
                      }
                      function vm_in_array(what, where) {
                          for(var i=0; i<where.length; i++)
                              if(what == where[i])
                                  return i;
                          return false;
                      }
                      function vm_createOptionModel(newValue,newText){

                          var objSelect = document.getElementsByName('model')[0];
                          var objOption = document.createElement("option");
                          objOption.text = newText
                          objOption.value = newValue

                          if(document.all && !window.opera)
                          {objSelect.add(objOption);}
                          else
                          {objSelect.add(objOption, null);};

                      }
                      function vm_setAllmodels(){
                          vm_createOptionModel('<?php echo _VEHICLE_MANAGER_LABEL_ALL; ?>','<?php echo _VEHICLE_MANAGER_LABEL_ALL; ?>');
                      }

        </script>

            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_MODEL; ?></span>
		<?php echo $params->get('models'); ?>
            </div>

            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_NUMBER_CYLINDERS; ?></span>
		<?php echo $params->get('cylinder_list'); ?>
            </div>

            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_VEHICLE_TYPE; ?></span>
		<?php echo $params->get('vehicle_type_list'); ?>
            </div>

            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_NUMBER_SPEEDS; ?></span>
		<?php echo $params->get('num_speed_list'); ?>
            </div>

            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_LISTING_TYPE; ?></span>
		<?php echo $params->get('listing_type_list'); ?>
            </div>

            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_FUEL_TYPE; ?></span>
		<?php echo $params->get('fuel_type_list'); ?>
            </div>

            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_PRICE_TYPE; ?></span>
		<?php echo $params->get('price_type_list'); ?>
            </div>

            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_NUMBER_DOORS; ?></span>
		<?php echo $params->get('doors_list'); ?>
            </div>

		<!--start extra fields-->       
          <?php
              for($i=6;$i<=10;$i++){
            if ($vehiclemanager_configuration['extra'.$i] != 0){
              ?>
            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTRA.$i; ?></span>
		<?php echo $params->get('extrafield'.$i); ?>
            </div>
            <?php }
            } ?>
        <!--end extra fields-->
        
            <div class="fix_width_2">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_CATEGORY; ?></span>
                <?php echo $clist; ?>
            </div>

      </div> <!-- row_02 -->

      <div class="row_03">
            
            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_VEHICLEID; ?></span>
                <input type="checkbox" name="Vehicleid" id="Vehicleid" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_COMMENT; ?></span>
                <input type="checkbox" name="Description" id="Description" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_TITLE; ?></span>
                <input type="checkbox" name="Title" id="Title" checked = "checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_ADDRESS; ?></span>
                <input type="checkbox" name= "Address" id="Address" checked = "checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_COUNTRY; ?></span>
                <input type="checkbox" name="Country" id="Country" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_REGION; ?></span>
                <input type="checkbox" name="Region" id="Region" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_CITY; ?></span>
                <input type="checkbox" name="City" id="City" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_DISTRICT; ?></span>
                <input type="checkbox" name="District" id="District" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_ZIPCODE; ?></span>
		<input type="checkbox" name="Zipcode" id="Zipcode" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_OWNER; ?></span>
                <input type="checkbox" name="Ownername" id="Ownername" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_MILEAGE; ?></span>
                <input type="checkbox" name="Mileage" id="Mileage" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_CONTACTS; ?></span>
                <input type="checkbox" name="Contacts" id="Contacts" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_ENGINE_TYPE; ?></span>
                <input type="checkbox" name="Engine_type" id="Engine_type" checked ="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_CITY_FUEL_MPG; ?></span>
                <input type="checkbox" name="City_fuel_mpg" id="City_fuel_mpg" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_HIGHWAY_FUEL_MPG; ?></span>
                <input type="checkbox" name="Highway_fuel_mpg" id="Highway_fuel_mpg" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_WHEELBASE; ?></span>
                <input type="checkbox" name="Wheelbase" id="Wheelbase" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_WHEELTYPE; ?></span>
                <input type="checkbox" name="Wheeltype" id="Wheeltype" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_REARAXE_TYPE; ?></span>
                <input type="checkbox" name="Rear_axe_type" id="Rear_axe_type" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_BRAKES_TYPE; ?></span>
                <input type="checkbox" name="Brakes_type" id="Brakes_type" checked="checked"/>
            </div>
            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTERIOR_COLORS; ?></span>
                <input type="checkbox" name="Exterior_colors" id="Exterior_colors" checked="checked"/>
            </div>
            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTERIOR_EXTRAS; ?></span>
                <input type="checkbox" name="Exterior_extras" id="Exterior_extras" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_INTERIOR_COLORS; ?></span>
                <input type="checkbox" name="Interior_colors" id="Interior_colors" checked="checked"/>
            </div>
            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_DASHBOARD_OPTIONS; ?></span>
		<input type="checkbox" name="Dashboard_options" id="Dashboard_options" checked="checked"/>
            </div>
            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_INTERIOR_EXTRAS; ?></span>
                <input type="checkbox" name="Interior_extras" id="Interior_extras" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_SAFETY_OPTIONS; ?></span>
                <input type="checkbox" name="Safety_options" id="Safety_options" checked="checked"/>
            </div>

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_WARRANTY_OPTIONS; ?></span>
                <input type="checkbox" name="Warranty_options" id="Warranty_options" checked="checked"/>
            </div>

<?php
for ($i = 1; $i <= 5; $i++):
    $key = 'extra' . $i;
    if ($vehiclemanager_configuration[$key] == 1):
        ?>
            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTRA . $i; ?></span>
                <input type="checkbox" name="extra<?php echo $i; ?>" id="extra<?php echo $i; ?>" checked="checked"/>
            </div>
                <?php endif; endfor; ?>    

            <div class="fix_width">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXACTLY; ?></span>
                <input type="checkbox" name="exactly" id="exactly"/>
            </div>

    </div> <!-- row_03 -->

 </div> <!--  search_filter  -->
    <br />

    <div class="basictable_41 basictable">
        <?php mosHTML::BackButton($params, $hide_js); ?>
    </div>

</form>
<?php positions_vm($params->get('showsearch04')); ?>
