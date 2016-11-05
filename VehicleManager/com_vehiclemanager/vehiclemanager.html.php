<?php
if (!defined('_VALID_MOS') && !defined('_JEXEC'))
    die('Direct Access to ' . basename(__FILE__) . ' is not allowed.');

/**
 *
 * @package  VehicleManager
 * @copyright 2013 Andrey Kvasnevskiy-OrdaSoft(akbet@mail.ru); Rob de Cleen(rob@decleen.com);
 * Homepage: http://www.ordasoft.com
 * @version: 3.2 Pro 
 * Shifted to J 1.6 on June 2011
 * */
//require_once($mosConfig_absolute_path . "/libraries/joomla/plugin/helper.php");
jimport( 'joomla.plugin.helper' );
///require_once($mosConfig_absolute_path . "/includes/HTML_toolbar.php");
require_once($mosConfig_absolute_path . "/administrator/includes/toolbar.php");
if (version_compare(JVERSION, "3.0.0", "lt"))
    require_once($mosConfig_absolute_path . "/libraries/joomla/html/toolbar.php");

require_once($mosConfig_absolute_path . "/components/com_vehiclemanager/vehiclemanager.php");
require_once($mosConfig_absolute_path . "/components/com_vehiclemanager/functions.php");
require_once($mosConfig_absolute_path . "/administrator/components/com_vehiclemanager/menubar_ext.php");

$doc = JFactory::getDocument();
$GLOBALS['doc'] = $doc;
$g_item_count = 0;

class HTML_vehiclemanager
{

//-----------------------------------start new/edit------------------------------
    /**
     * Writes the edit form for new and existing records
     *
     */
//--------------------------------start ADD----------------------------------
    static function editVehicle($option, & $row, & $clist, & $rating, & $delete_edoc, 
            & $test_list, & $vehicle_type_list, & $listing_status_list, & $condition_status_list, 
            & $transmission_type_list, & $listing_type_list, & $drive_type_list, & $fuel_type_list, 
            & $num_speed_list, & $num_cylinder_list, & $num_doors_list, & $vehicle_photo, & $vehicle_photos, 
            & $maker, & $arr, & $currentmodel, &$modellist, &$vehicle_rent_sal, &$vehicle_feature, & $currency, 
            & $languages, & $extra_list, & $currency_spacial_price, & $associateArray)
    {
	
        global $vehiclemanager_configuration;
        global $my, $mosConfig_live_site, $mainframe, $Itemid, $hide_js, $database;
        //global $doc, $css;

                
        if (version_compare(JVERSION, '3.0', 'ge'))
        {
            $menu = new JTableMenu($database);
            $menu->load($Itemid);
            $params = new JRegistry;
            $params->loadString($menu->params);
        } else
        {
            $menu = new mosMenu($database);
            $menu->load($GLOBALS['Itemid']);
            $params = new mosParameters($menu->params);
        }

        $menu_name = set_header_name_vm($menu, $Itemid);

        $params->def('header', $menu_name);
        $params->def('pageclass_sfx', '');
        $params->def('show_search', '1');
        $params->def('back_button', $mainframe->getCfg('back_button'));

        $doc = JFactory::getDocument();
        $doc->addScript($mosConfig_live_site . '/components/com_vehiclemanager/includes/functions.js');
        $doc->addStyleSheet($mosConfig_live_site . '/components/com_vehiclemanager/includes/custom.css');
	$doc->addStyleSheet($mosConfig_live_site . '/components/com_vehiclemanager/includes/vehiclemanager.css');
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

        <?php 
        if ($option != "com_vehiclemanager")
        {
            $form_action = "index.php?option=" . $option . "&task=save_add_vehicle&is_show_data=1&tab=getmyvehiclesTab&Itemid=" . $Itemid;
        }
        else
            $form_action = "index.php?option=com_vehiclemanager&task=save_add_vehicle&Itemid=" . $Itemid;
        ?>

        <form action="<?php echo sefRelToAbs($form_action); ?>" method="post" name="vm_save_add" id="vm_save_add" enctype="multipart/form-data">
            <div class="adminform_table_1">

                <div class="admin_row_01 admin_row">
                    <span class="admin_col_01">
                        <?php if (!isset($my->email)) : ?>
                            <?php echo _VEHICLE_MANAGER_WARNING_NO_LOGIN; ?>
                        <?php else: ?>
                            <input type="hidden" name="owneremail" value="<?php echo $my->email; ?>" />
		      <?php endif; ?>
                    </span>

                    <span class="admin_col_02"><input type="hidden" name="id" value="<?php echo $row->id; ?>" /></span>
                    <span class="admin_col_02"><input type="hidden" name="owner_id" value="<?php echo $owner_id; ?>" /></span>
                </div>
                <div class="admin_row_02 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_VEHICLEID; ?>:</span>
                    <span class="admin_col_02" id="vehicleid_label" ><input class="inputbox" type="text" name="vehicleid" size="20" maxlength="20" value="<?php echo $row->vehicleid; ?>" /></span>
                </div>
                 <table class="adminform adminform_07"> 
                <?php
/*********************************************************************************************/
  
    if(!empty($associateArray) && !empty($row->language) && $row->language != '' && $row->language != '*'){
?>
                <tr> 
                    <td width="15%"><?php echo 'language associate vehicle' ?>:</td>                        
                </tr>   
            
<?php
        $j =1;
        
        foreach ($associateArray as $lang=>$value) {
            $displ = '';
            if(!$value['list']){
                $displ = 'none';
            }
?>    
                <tr style="display: <?php echo $displ?>">
                    <td width="15%"><?php echo $lang; ?>:</td>
                    <td width="60%"><?php echo $value['list']; ?> 
                    <input class="inputbox" id="associate_vehicle" type="text" name="associate_vehicle<?php echo $j;?>" size="20" readonly="readonly" maxlength="20" style="width:25px; margin-bottom: -4px;" value="<?php echo $value['assocId']; ?>" />
                    <input style="display: none" name="associate_vehicle_lang<?php echo $j;?>" value="<?php echo $lang; ?>"/>  
                    </td>                          
                </tr>
<?php
        
        $j++;
        }
   }else{
?>
                <tr> 
                    <td width="15%"><?php echo 'language associate vehicle' ?>:</td> 
                    <td width="60%"><?php echo 'this property only for vehicle with language' ?> 
                </tr> 
                
<?php
   }
/*********************************************************************************************/
?>        
           </table>      
                <div class="admin_row_03 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_LANGUAGE; ?>:</span>
                    <span class="admin_col_02"><?php echo $languages; ?></span>
                </div>
                <div class="admin_row_04 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_COMMENT; ?>:</span>
                    <?php editorArea('editor1', $row->description, 'description', '', '200', '60', '10', false); ?>
                </div>
                        <?php if ($vehiclemanager_configuration['edocs']['allow']) {
                            ?>
                    <div class="admin_row_05 admin_row">
                        <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EDOCUMENT_UPLOAD; ?>:</span>
                        <span class="admin_col_02"><input class="inputbox" type="file" name="edoc_file" value="" size="25" maxlength="250" onClick="document.vm_save_add.edok_link.value ='';"/></span>
                    </div>
                    <div class="admin_row_06 admin_row">
                        <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EDOCUMENT_UPLOAD_URL; ?>:</span>
                        <span class="admin_col_02"><input class="inputbox" type="text" name="edocument_Link" value="<?php echo $row->edok_link; ?>" size="50" maxlength="250"/></span>
                    </div>
		  <?php } if (strlen($row->edok_link) > 0) {
		    ?>
                    <div class="admin_row_07 admin_row">
                        <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EDOCUMENT_DELETE; ?>:</span>
                        <span class="admin_col_02"><?php echo $delete_edoc; ?></span>
                    </div>
	<?php } ?>
                <div style="clear: both;"></div>

                <div class="admin_row_09 admin_row"><h2><?php echo _VEHICLE_MANAGER_HEADER_REQUIREMENT_FIELDS; ?></h2></div>
                <div class="admin_row_10 admin_row">
                    <span class="admin_col_01" id="category_label" ><input type="hidden" name="Itemid" id="Itemid " value="<?php echo $Itemid; ?>" /><?php echo _VEHICLE_MANAGER_LABEL_CATEGORY; ?>:</span>
                    <span class="admin_col_02"><?php echo $clist; ?></span>
                </div>
                <div class="admin_row_11 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_VEHICLE_TITLE; ?>:</span>
                    <span class="admin_col_02" id="title_label" ><input class="inputbox" type="text" name="vtitle" size="60" value="<?php echo $row->vtitle; ?>" /></span>
                </div>

                <div style="clear: both;"></div>

                <div class="admin_row_13 admin_row">
		    <h2><?php echo _VEHICLE_MANAGER_HEADER_ADDRESS_FIELDS; ?></h2>
                </div>
                <div class="admin_row_14 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_ADDRESS; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" id="vlocation" name="vlocation" size="50" value="<?php echo $row->vlocation; ?>" /></span>
                </div>
                <div class="admin_row_15 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_COUNTRY; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" id="country" name="country" size="50" value="<?php echo $row->country; ?>" /></span>
                </div>
                <div class="admin_row_16 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_REGION; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" id="region" name="region" size="50" value="<?php echo $row->region; ?>" /></span>
                </div>
                <div class="admin_row_17 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_CITY; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" id="city" name="city" size="50" value="<?php echo $row->city; ?>" /></span>
                </div>
                <div class="admin_row_18 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_DISTRICT; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="district" size="50" value="<?php echo $row->district; ?>" /></span>
                </div>
                <div class="admin_row_19 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_ZIPCODE; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" id="zipcode" name="zipcode" size="50" value="<?php echo $row->zipcode; ?>" /></span>
                </div>
                <div class="admin_row_20 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_LATITUDE; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" id="vlatitude" name="vlatitude" size="20" value="<?php echo $row->vlatitude; ?>" readonly/></span>
                </div>
                <div class="admin_row_21 admin_row">      
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_LONGITUDE; ?>:</span>
                    <span class="admin_col_02">
                        <input class="inputbox" type="text" id="vlongitude" name="vlongitude" size="20" value="<?php echo $row->vlongitude; ?>" readonly/>
                        <input type="hidden" id="map_zoom" name="map_zoom" value="<?php echo $row->map_zoom; ?>" />
                    </span>
                </div>
                <div class="admin_row_22 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_GEOCOOR; ?></span>
                    <span class="admin_col_02"><input type="button" value="<?php echo _VEHICLE_MANAGER_BUTTON_SHOW_ADDRESS; ?>" onclick="codeAddress()"></span>
                </div>
                <div class="admin_row_23 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_CLICKMAP; ?></span>
                    <span class="admin_col_02">
                        <div id="map_canvas" class="vm_map_canvas"></div>
                        <!--Image google map-->	
                        <script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script>
                        <script type="text/javascript">
                            var map;
                            var lastmarker = null;
                            var marker = null;
                            var mapOptions;
        					    
                            var myOptions = {
                                zoom: <?php if($row->map_zoom) echo $row->map_zoom;
                                             else echo 1;?>,
                                center: new google.maps.LatLng(<?php if ($row->vlatitude) echo $row->vlatitude; else echo 0; ?>,<?php if ($row->vlongitude) echo $row->vlongitude; else echo 0; ?>),
                                scrollwheel: false,
                                zoomControlOptions: {
                                    style: google.maps.ZoomControlStyle.LARGE
                                },
                                mapTypeId: google.maps.MapTypeId.ROADMAP
                            };
                            var geocoder = new google.maps.Geocoder();
                            var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
                            var bounds = new google.maps.LatLngBounds ();
			<?php if ($row->vlatitude && $row->vlongitude)
		      { ?>
                                                    //Set the marker coordinates
                                                    var lastmarker = new google.maps.Marker({
                                                        position: new google.maps.LatLng(<?php echo $row->vlatitude; ?>, <?php echo $row->vlongitude; ?>)
                                                    });
                                                    lastmarker.setMap(map);
		    <?php } ?>   
                                                //If the zoom, then store it in the field map_zoom
                                                google.maps.event.addListener(map,"zoom_changed", function(){
                                                    document.getElementById("map_zoom").value=map.getZoom();
                                                });
                                                google.maps.event.addListener(map,"click", function(e){
                                                    //Initialize marker
                                                    marker = new google.maps.Marker({
                                                        position: new google.maps.LatLng(e.latLng.lat(),e.latLng.lng())
                                                    });
                                                    //Delete marker
                                                    if(lastmarker) lastmarker.setMap(null);;
                                                    //Add marker to the map
                                                    marker.setMap(map);
                                                    //Output marker information
                                                    document.getElementById("vlatitude").value=e.latLng.lat();
                                                    document.getElementById("vlongitude").value=e.latLng.lng();
                                                    //Memory marker to delete
                                                    lastmarker = marker;
                                                });
        								
                                                function updateCoordinates(latlng)
                                                {
                                                    if(latlng) 
                                                    {
                                                        document.getElementById('vlatitude').value = latlng.lat();
                                                        document.getElementById('vlongitude').value = latlng.lng();
                                                        document.getElementById("map_zoom").value=map.getZoom();
                                                    }
                                                }

                                                function toggleBounce() {

                                                    if (marker.getAnimation() != null) {
                                                        marker.setAnimation(null);
                                                    } else {
                                                        marker.setAnimation(google.maps.Animation.BOUNCE);
                                                    }
                                                }

                                                function codeAddress() {
                                                    myOptions = {
                                                        zoom:14,
                                                        scrollwheel: false,
                                                        zoomControlOptions: {
                                                            style: google.maps.ZoomControlStyle.LARGE
                                                        },
                                                        mapTypeId: google.maps.MapTypeId.ROADMAP
                                                    }
                                                    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
                                                    //var address = document.getElementById('vlocation').value + " " + document.getElementById('country').value+ " " + document.getElementById('region').value+ " " + document.getElementById('city').value+ " " + document.getElementById('zipcode').value;
                                                    var address = document.getElementById('vlocation').value + " " + document.getElementById('country').value+ " " + document.getElementById('region').value+ " " + document.getElementById('city').value+ " " + document.getElementById('zipcode').value + " " + document.getElementById('vlatitude').value + " " + document.getElementById('vlongitude').value;
                                                    geocoder.geocode( { 'address': address}, function(results, status) {
                                                        if (status == google.maps.GeocoderStatus.OK) {
                                                            map.setCenter(results[0].geometry.location);
                                                            updateCoordinates(results[0].geometry.location);
                                                            if (marker) marker.setMap(null);
                                                            marker = new google.maps.Marker({
                                                                map: map,
                                                                position: results[0].geometry.location,
                                                                draggable: true,
                                                                animation: google.maps.Animation.DROP
                                                            });
                                                            google.maps.event.addListener(marker, 'click', toggleBounce);
                                                            google.maps.event.addListener(marker, "dragend", function() {
                                                                updateCoordinates(marker.getPosition());
                                                            });

                                                        } else {
                                                            alert("Please check the accuracy of Address");
                                                        }
                                                    });
                                                }

                        </script> 
                        <!--End google map.Желательно выгружать google �? пам�?ти �? помощью функции onunload="GUnload()"   -->
                    </span>
                </div>

                <div style="clear: both;"></div>

      <script type="text/javascript">
        <?php
        $makers = $arr[0];
        $models = $arr[1];
        echo 'var modelscars = [];';
        for ($c = 0; $c < count($makers); $c++):
            $makers[$c] = '\'' . $makers[$c] . '\'';
            foreach ($models[$c] as $temp => $model)
                $models[$c][$temp] = '\'' . $model . '\'';
            echo 'var temp=new Array(' . implode(',', $models[$c]) . ",'other');\n";
            echo 'modelscars[' . $c . "]=temp;\n";
        endfor;
        echo 'var makers=new Array(' . implode(',', $makers) . ');';
        ?>

                          function changedMaker(maker){
                              var id = in_array(maker.value,makers);
                              //<select onchange="setCurentModel(this)" size="1" class="inputbox" id="maker" name="maker">
                              var model = document.getElementsByName('vmodel')[0]
                              if(model.tagName.toLowerCase()=='input'){
                                  var select =  document.createElement('select');
                                  select.name='vmodel';
                                  select.setAttribute('onchange','changedModel(this)');
                                  model.parentNode.appendChild(select);
                                  model.parentNode.removeChild(model);
                              }
                              if((maker.value=='other')||(maker.value=='')){
                                  setTextfield();
                                  return;
                              }
                              clearSelectModel();
                              for(var c=0;c<modelscars[id].length;c++){
                                  //modelscars+id[c]
                                  createOptionModel(modelscars[id][c],modelscars[id][c]);
                              }
                          }
                          function clearSelectModel(){
                              var objSelect=document.getElementsByName('vmodel')[0];
                              while(objSelect.options.length > 0){objSelect.remove(0);}
                              return objSelect;
                          }
                          function in_array(what, where) {
                              for(var i=0; i<where.length; i++)
                                  if(what == where[i])
                                      return i;
                              return false;
                          }
                          function setTextfield(){
                              var select=document.getElementsByName('vmodel')[0];
                              var textfield = document.createElement('input');
                              select.parentNode.appendChild(textfield);
                              select.parentNode.removeChild(select);
                              textfield.name='vmodel';
                              textfield.size='35';
                              if (maker.value=='') textfield.disabled=true;

                          }
                          function createOptionModel(newValue,newText){

                              var objSelect = document.getElementsByName('vmodel')[0];
                              var objOption = document.createElement("option");
                              objOption.text = newText
                              objOption.value = newValue

                              if(document.all && !window.opera)
                              {objSelect.add(objOption);}
                              else
                              {objSelect.add(objOption, null);};

                          }
                          function changedModel(select){
                              if(select.value=='other'){
                                  setTextfield();
                              }
                          }
                          function onloadPage(){
                              var maker = document.getElementsByName('maker')[0];
                              var model = document.getElementsByName('vmodel')[0];
                              if((maker.value!='other')&&(maker.value!='')){
                                  changedMaker(maker);
                              }
                              setModel();
                          }
                          function setModel(){
                              var model = document.getElementsByName('vmodel')[0];
                              model.value='<?php echo $currentmodel; ?>';
                          }
                    </script>
                    </span>
                </div> 
                <div class="admin_row_29 admin_row">
                    <h2><?php echo _VEHICLE_MANAGER_HEADER_RECOMMENDED_FIELDS; ?></h2>
                </div>

	<div class="tabl_row">

                <div class="admin_row_30 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_MAKER; ?>:</span>
                    <span class="admin_col_02"><?php echo $maker; ?></span>
                </div>
                <div class="admin_row_31 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_MODEL; ?>:</span>
                    <span class="admin_col_02"><?php echo $modellist; ?></span>
                </div>
          <script type="text/javascript">
        <?php
        $makers = $arr[0];
        $models = $arr[1];
        echo 'var modelscars = [];';
        for ($c = 0; $c < count($makers); $c++):
            $makers[$c] = '\'' . $makers[$c] . '\'';
            foreach ($models[$c] as $temp => $model)
                $models[$c][$temp] = '\'' . $model . '\'';
            echo 'var temp=new Array(' . implode(',', $models[$c]) . ",'other');\n";
            echo 'modelscars[' . $c . "]=temp;\n";
        endfor;
        echo 'var makers=new Array(' . implode(',', $makers) . ');';
        ?>
                    function vm_changedMaker(maker){
                        var id = vm_in_array(maker.value,makers);
                        var model = document.getElementsByName('vmodel')[0]
                        if(model.tagName.toLowerCase()=='input'){
                            var select =  document.createElement('select');
                            select.name='vmodel';
                            select.setAttribute('onchange','vm_changedModel(this)');
                            model.parentNode.appendChild(select);
                            model.parentNode.removeChild(model);
                        }
                        if((maker.value=='other')||(maker.value=='')){
                            vm_setTextfield(maker.value);
                            return;
                        }
                        vm_clearSelectModel();
                        for(var c=0;c<modelscars[id].length;c++){
                            vm_createOptionModel(modelscars[id][c],modelscars[id][c]);
                        }
                    }
                    function vm_clearSelectModel(){
                        var objSelect=document.getElementsByName('vmodel')[0];
                        while(objSelect.options.length > 0){objSelect.remove(0);}
                        return objSelect;
                    }
                    function vm_in_array(what, where) {
                        for(var i=0; i<where.length; i++)
                            if(what == where[i])
                                return i;
                        return false;
                    }
                    function vm_setTextfield(makerr){
                        var select=document.getElementsByName('vmodel')[0];
                        var textfield = document.createElement('input');
                        select.parentNode.appendChild(textfield);	  
                        select.parentNode.removeChild(select);
                        textfield.name='vmodel';
                        textfield.size='35';
                        if(makerr=='') textfield.readOnly=true;
                    }
                    function vm_createOptionModel(newValue,newText){
                        var objSelect = document.getElementsByName('vmodel')[0];
                        var objOption = document.createElement("option");
                        objOption.text = newText
                        objOption.value = newValue

                        if(document.all && !window.opera)
                        {objSelect.add(objOption);}
                        else
                        {objSelect.add(objOption, null);};
                    }
                    function vm_changedModel(select){
                        if(select.value=='other') vm_setTextfield();
                    }
                    function vm_setModel(){
                        var model = document.getElementsByName('vmodel')[0];
                        model.value='<?php echo $currentmodel; ?>';
                    }
                </script>
                <div class="admin_row_32 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_VEHICLE_TYPE; ?>:</span>
                    <span class="admin_col_02"><?php echo $vehicle_type_list; ?></span>
                </div>
                <div class="admin_row_33 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_LISTING_TYPE; ?>:</span>
                    <span class="admin_col_02"><?php echo $listing_type_list; ?></span>
                </div>
                <div class="admin_row_34 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_PRICE; ?>:</span>
                    <span class="admin_col_02">
                        <input class="inputbox" type="text" name="price" size="15" value="<?php echo $row->price; ?>" />
                        <?php //echo $row->priceunit; ?>
			<?php echo $currency; ?>
                    </span>
                </div>
                <div class="admin_row_35 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_PRICE_TYPE; ?>:</span>
                    <span class="admin_col_02"><?php echo $test_list; ?></span>
                </div>
                <div class="admin_row_36 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_ISSUE_YEAR; ?>:</span>
                    <span class="admin_col_02">
                        <select name="year" id="year" class="inputbox" size="1">
                            <?php
                            print_r("<option value=''>");
                            print_r(_VEHICLE_MANAGER_OPTION_SELECT);
                            print_r("</option>");
                            $num = 1900;
                            for ($i = 0; $num <= date('Y'); $i++) {
                                print_r("<option value=\"");
                                print_r($num);
                                print_r("\"");
                                if ($num == $row->year)
                                {
                                    print(" selected= \"true\" ");
                                }
                                print_r(">");
                                print_r($num);
                                print_r("</option>");
                                $num++;
                            }
                            ?>
                        </select>
                    </span>
                </div>
                <div class="admin_row_37 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_CONDITION_STATUS; ?>:</span>
                    <span class="admin_col_02"><?php echo $condition_status_list; ?></span>
                </div>
                <div class="admin_row_38 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_MILEAGE; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="mileage" size="30" value="<?php echo $row->mileage; ?>" /></span>
                </div>
                <div class="admin_row_39 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_LISTING_STATUS; ?>:</span>
                    <span class="admin_col_02"><?php echo $listing_status_list; ?></span>
                </div>
                <div class="admin_row_40 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_CONTACTS; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="contacts" size="60" value="<?php echo $row->contacts; ?>" /></span>
                </div>
                
                <div class="admin_row_41 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_OWNER; ?>:</span>
                    <span class="admin_col_02">
                    <?php if ($my->guest): ?>
                         <input type="text" name="name" readonly/>
                    <?php else: ?>
                         <input type="text" name="name" value="<?php echo $my->name;?>" readonly/>
                    <?php endif; ?>  
                    </span>
                </div>

		<div style="clear: both;"></div>

                <div class="admin_row_42 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_OWNER_CUSTOM_EMAIL; ?>:</span>
                    <span class="admin_col_02">
                        <?php if (trim($row->owneremail) != ""): ?>
                                    <input type='text' name='owneremail' value="<?php echo $row->owneremail; ?>"/>
                        <?php else: ?>
                                    <input type='text' name='owneremail' value="<?php echo $my->email; ?>"/>
                        <?php endif; ?>
                    </span>
                </div>

                <hr />
                <div class="admin_row_42 admin_row"><h2><?php echo _VEHICLE_MANAGER_HEADER_TECHNICAL_OPTIONS ?></h2></div>
                <div class="admin_row_43 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_ENGINE_TYPE; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="engine" size="60" value="<?php echo $row->engine; ?>" /></span>
                </div>
                <div class="admin_row_44 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_TRANSMISSION_TYPE; ?>:</span>
                    <span class="admin_col_02"><?php echo $transmission_type_list; ?></span>
                </div>
                <div class="admin_row_45 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_DRIVE_TYPE; ?>:</span>
                    <span class="admin_col_02"><?php echo $drive_type_list; ?></span>
                </div>
                <div class="admin_row_46 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_NUMBER_CYLINDERS; ?>:</span>
                    <span class="admin_col_02"><?php echo $num_cylinder_list; ?></span>
                </div>
                <div class="admin_row_47 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_NUMBER_SPEEDS; ?>:</span>
                    <span class="admin_col_02"><?php echo $num_speed_list; ?></span>
                </div>
                <div class="admin_row_48 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_FUEL_TYPE; ?>:</span>
                    <span class="admin_col_02"><?php echo $fuel_type_list; ?></span>
                </div>
                <div class="admin_row_49 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_CITY_FUEL_MPG; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="city_fuel_mpg" size="30" value="<?php echo $row->city_fuel_mpg; ?>" /></span>
                </div>
                <div class="admin_row_50 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_HIGHWAY_FUEL_MPG; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="highway_fuel_mpg" size="30" value="<?php echo $row->highway_fuel_mpg; ?>" /></span>
                </div>
                <div class="admin_row_51 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_WHEELBASE; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="wheelbase" size="20" value="<?php echo $row->wheelbase; ?>" /></span>
                </div>
                <div class="admin_row_52 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_WHEELTYPE; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="wheeltype" size="60" value="<?php echo $row->wheeltype; ?>" /></span>
                </div>
                <div class="admin_row_53 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_REARAXE_TYPE; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="rear_axe_type" size="60" value="<?php echo $row->rear_axe_type; ?>" /></span>
                </div>
                <div class="admin_row_54 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_BRAKES_TYPE; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="brakes_type" size="60" value="<?php echo $row->brakes_type; ?>" /></span>
                </div>
                <hr />
                <div class="admin_row_56 admin_row"><h2><?php echo _VEHICLE_MANAGER_HEADER_EXTERIOR_OPTIONS ?></h2></div>
                <div class="admin_row_57 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTERIOR_COLORS; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="exterior_color" size="30" value="<?php echo $row->exterior_color; ?>" /></span>
                </div>
                <div class="admin_row_58 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_NUMBER_DOORS; ?>:</span>
                    <span class="admin_col_02"><?php echo $num_doors_list; ?></span>
                </div>
                <div class="admin_row_59 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTERIOR_EXTRAS; ?>:</span>
                    <span class="admin_col_02"><textarea name="exterior_amenities" cols="50" rows="8" ><?php echo $row->exterior_amenities; ?></textarea></span>
                </div>
                <hr />
                <div class="admin_row_61 admin_row"><h2><?php echo _VEHICLE_MANAGER_HEADER_INTERIOR_OPTIONS ?></h2></div>
                <div class="admin_row_62 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_INTERIOR_COLORS; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="interior_color" size="30" value="<?php echo $row->interior_color; ?>" /></span>
                </div>
                <div class="admin_row_63 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_NUMBER_SEATINGS; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="seating" size="30" value="<?php echo $row->seating; ?>" /></span>
                </div>
                <div class="admin_row_64 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_DASHBOARD_OPTIONS; ?>:</span>
                    <span class="admin_col_02"><textarea name="dashboard_options" cols="50" rows="8"><?php echo $row->dashboard_options; ?></textarea></span>
                </div>
                <div class="admin_row_65 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_INTERIOR_EXTRAS; ?>:</span>
                    <span class="admin_col_02"><textarea name="interior_amenities" cols="50" rows="8" ><?php echo $row->interior_amenities; ?></textarea></span>
                </div>
                <hr />
                <div class="admin_row_67 admin_row"><h2><?php echo _VEHICLE_MANAGER_HEADER_OTHER_OPTIONS ?></h2></div>
                <div class="admin_row_68 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_SAFETY_OPTIONS; ?>:</span>
                    <span class="admin_col_02"><textarea name="safety_options" cols="50" rows="8"><?php echo $row->safety_options; ?></textarea></span>
                </div>
                <div class="admin_row_69 admin_row"><h2><?php echo _VEHICLE_MANAGER_LABEL_WARRANTY_OPTIONS; ?></h2></div>
                <div class="admin_row_70 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_WARRANTY_BASIC; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="w_basic" size="30" value="<?php echo $row->w_basic; ?>" /></span>
                </div>
                <div class="admin_row_71 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_WARRANTY_DRIVETRAIN; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="w_drivetrain" size="30" value="<?php echo $row->w_drivetrain; ?>" /></span>
                </div>
                <div class="admin_row_72 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_WARRANTY_CORROSION; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="w_corrosion" size="30" value="<?php echo $row->w_corrosion; ?>" /></span>
                </div>
                <div class="admin_row_73 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_WARRANTY_ROADSIDE_ASSISTANCE; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="text" name="w_roadside_ass" size="30" value="<?php echo $row->w_roadside_ass; ?>" /></span>
                </div>

</div> <!-- tabl_row -->

                <hr />
                <div class="admin_row_75 admin_row"><h2><?php echo _VEHICLE_MANAGER_HEADER_PHOTO_MANAGE; ?></h2></div>
                <div class="admin_row_76 admin_row">
                    <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_PICTURE_URL_UPLOAD; ?>:</span>
                    <span class="admin_col_02"><input class="inputbox" type="file" name="image_link" value="<?php echo $row->image_link; ?>" size="30" maxlength="250" /></span>
                </div>
                <div class="admin_row_77 admin_row">
                    <?php
                    if ($row->image_link != '')
                        echo '<span class="admin_col_01">Select photo if it is necessary to remove:</span>';
                    else
                        echo '<span class="admin_col_01">&nbsp</span>';
                    ?>

                    <span class="admin_col_02">
                        <?php
                        if ($row->image_link != '')
                        {
                            $main_phot = pathinfo($row->image_link);
                            $main_photo_type = '.' . $main_phot['extension'];
                            $main_photo_name = basename($row->image_link, $main_photo_type);
                        } else
                        {
                            echo 'The main image is absent';
                            $main_photo_name = '';
                            $main_photo_type = '';
                        }
                        if ($vehicle_photo != '')
                        {
                            echo '<input type="checkbox" name="del_main_photo" value="' . $vehicle_photo[0] . '" />';
                            ?>
                            <img alt="photo" src="<?php echo $mosConfig_live_site; ?>/components/com_vehiclemanager/photos/<?php echo $vehicle_photo[1]; ?>"/>
        <?php } ?>
                    </span>
                </div>
                        <?php
                        if (count($vehicle_photos) != 0)
                        {
                            ?>
                    <div class="admin_row_79 admin_row">
                        <span class="admin_col_01"><?php echo "Select photos which are necessary to remove from photo gallery" ?>:</span>
                        <span class="admin_col_02">
                    <?php
                    for ($i = 0; $i < count($vehicle_photos); $i++) {
// 				$photo_inf=pathinfo($vehicle_photos[$i]->main_img);
// 				$photo_type='.'.$photo_inf['extension'];
// 				$photo_name=basename($vehicle_photos[$i]->main_img,$photo_type);
                        if (($i % 7) == 0)
                        {
                            echo "<br>";
                        }
                        ?>
                                <input type="checkbox" name="del_photos[]" value="<?php echo $vehicle_photos[$i][0]; ?>" />
                                <img src="<?php echo $mosConfig_live_site; ?>/components/com_vehiclemanager/photos/<?php echo $vehicle_photos[$i][1]; ?>" alt="no such file"/> &nbsp
            <?php } ?>
                        </span>
                    </div>
        <?php } ?>
                
                <?php
/************************************** get count photo for group user*******************************************/               
                count($vehicle_photos);
                $user_group = userGID_VM($my->id);       
                $user_group_mas = explode(',', $user_group);
                $max_count_foto = 0;
                
                foreach ($user_group_mas as $value) {            
                    $count_foto_for_single_group = $vehiclemanager_configuration['user_manager_vm'][$value]['count_foto'];
                    if($count_foto_for_single_group>$max_count_foto){
                        $max_count_foto = $count_foto_for_single_group;
                    }            
                }
                
                $count_foto_for_single_group = $max_count_foto;
                
                //print_r($count_foto_for_single_group);exit;
/******************************************************************************************************************/ 
                ?>
                <script language="javascript" type="text/javascript">
                    function findPosY(obj){
                        var curtop = 0;
                        if (obj.offsetParent){
                            while (1){
                                curtop+=obj.offsetTop;
                                if (!obj.offsetParent) break;
                                obj=obj.offsetParent;
                            }
                        } else if (obj.y) curtop+=obj.y;
                        return curtop-20;
                    }

                    function trim(string){
                        return string.replace(/(^\s+)|(\s+$)/g, "");
                    }


                    function vm_submitbutton(pressbutton){
                        
                                      
                        var form = document.vm_save_add;                     
                        
                        if (pressbutton == 'submit2'){
                            
                            if (trim(form.vehicleid.value) == ''){
                                window.scrollTo(0,findPosY(document.getElementById('vehicleid_label')));
                                alert("<?php echo _VEHICLE_MANAGER_ADMIN_INFOTEXT_JS_EDIT_VEHICLEID_CHECK; ?>");
                                return;
                            }
                            
                            else if (form.catid.value == ''){
                                window.scrollTo(0,findPosY(document.getElementById('category_label')));
                                alert("<?php echo _VEHICLE_MANAGER_ADMIN_INFOTEXT_JS_EDIT_CATEGORY; ?>");
                                return;
                            } 
                            
                            else if (form.vtitle.value == ''){
                                window.scrollTo(0,findPosY(document.getElementById('title_label')));
                                alert("<?php echo _VEHICLE_MANAGER_ADMIN_INFOTEXT_JS_EDIT_TITLE; ?>");
                                return;
                                
                            } else {
                                form.submit();
                            }
                        } 
                        form.submit();
                    }

                    var photos=0;
                    function vm_new_photos(){ 
                        div= document.getElementById("items");
                        button= document.getElementById("add");
                        photos++;                    
                        var allowed_files = <?php echo $count_foto_for_single_group;?>;
                        if (<?php echo count($vehicle_photos); ?> < allowed_files) {
                            newitem="" + "<?php echo _VEHICLE_MANAGER_ADMIN_NEW_PHOTO ?>" + photos + ": ";
                            newitem+="<input type=\"file\" multiple='true' name=\"new_photo_file[]";
                            newitem+="\" value=\"\"size=\"45\"><br>";
                        newnode= document.createElement("span");
                        newnode.innerHTML= newitem;
                        div.appendChild(newnode);
                        //div.insertBefore(newnode,button); 
                       }
                        if( photos + <?php echo count($vehicle_photos); ?> >= allowed_files ) {
                           // button.value = 'You have max photo';
                            button.onclick = function(){

                               return false; 
                            };         
                          //button.setAttribute("style","display:none");
                        }
                    }
                </script>
                <?php
                $max_foto=$count_foto_for_single_group-(count($vehicle_photos));
                ?>

                <div class="admin_row_80 admin_row">
                    <table>
                        <tr>
                            <td valign ="bottom">
                                <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_OTHER_PICTURES_URL_UPLOAD; ?>:</span>    
                                <span class="admin_col_02"><div ><input id="add" class="inputbox" type="button" name="new_photo" value="<?php echo 'Add new photo'; ?>" onClick="javascript:vm_new_photos()" /></div></span>
                            </td>
                            <td id ="items">                    
                            </td>
                        </tr>                    
                    </table>
                </div>           
                <hr />
                <div class="admin_row_82 admin_row"><h2><?php echo _VEHICLE_MANAGER_LABEL_FEATURED_MANAGER_FEATURE_MANAGER; ?></h2></div>    
                <div class="admin_row_83 admin_row">
                        <?php
                        for ($i = 0; $i < count($vehicle_feature); $i++) {
                            if ($i != 0)
                            {
                                if ($vehicle_feature[$i]->categories !== $vehicle_feature[$i - 1]->categories)

                                 echo "<br><span class=\"vehicle_feature_1\">" . $vehicle_feature[$i]->categories . "</span><br>";

                            } else
				  echo "<br><span class=\"vehicle_feature_2\">" . $vehicle_feature[$i]->categories . "</span><br>";
                            ?>         

			<div class="input_feature">
                            <input type="checkbox" 
			      <?php 
				  if ($vehicle_feature[$i]->check) 
				  echo "checked"; ?> name="feature[]" value="<?php echo $vehicle_feature[$i]->id; ?>">
			      </input>
				    <span class="name_inp">
					<?php echo $vehicle_feature[$i]->name; ?>
				    </span>
			</div>

                    <?php if ($vehicle_feature[$i]->image_link != '')
                    { ?>       
                                <img alt="photo" src="<?php echo "$mosConfig_live_site/components/com_vehiclemanager/featured_ico/" . $vehicle_feature[$i]->image_link; ?>"></img>      
                    <?php } ?>

			  <?php 
		      } 
                      ?>
<!-- begin sp price -->
 <script language="javascript" src="http://ajax.googleapis.com/ajax/libs/mootools/1.2.3/mootools.js"> </script>
                <script language="javascript" type="text/javascript">
                if ( typeof window.jQuery != 'undefined' ) {
                 jQuery.noConflict();
                    jQuery(document).ready(function() { 
                        jQuery("#subPrice").bind("click ", function( event ) { 
                            var rent_from = jQuery("#price_from_veh").val();
                            var rent_to = jQuery("#price_to_veh").val();
                            var special_price = jQuery("#special_price").val();
                            var comment_price = jQuery("#comment_price").val();
                            var currency_spacial_price = jQuery("#currency_spacial_price").val();
                            var id = <?php echo (0 + $row->id);?> ;
                            if(id && id > 0){
                              jQuery.ajax({
                                type: "POST",
                                url: "index.php?option=com_vehiclemanager&task=ajax_rent_price&bid="+id+ 
                                    "&rent_from="+rent_from+"&rent_until="+rent_to+
                                    "&special_price="+special_price+"&comment_price="+comment_price+
                                    "&currency_spacial_price="+currency_spacial_price,
                                data: { " #do " : " #1 " },
                                update: jQuery(" #SpecialPriseBlock "),
                                success: function( data ) {
                                jQuery("#SpecialPriseBlock_veh").html(data);
                  
                                }
                                });
                            } else{
                                alert("To add special prices, you must save!");
                            }
                        });
                    }); 
                } else {
                  window.addEvent('domready', function() {
                        $('subPrice').addEvent('click', function(event) { 
                            var rent_from = document.getElementById('price_from_veh').value;
                            var rent_to = document.getElementById('price_to_veh').value;
                            var special_price = document.getElementById('special_price').value;
                            var comment_price = document.getElementById('comment_price').value;
                            var currency_spacial_price = document.getElementById('currency_spacial_price').value;
                            var id = <?php echo (0 + $row->id);?> ;
                            
                            if(id && id > 0){
                                var req = new Request.HTML({
                                    method: 'post',
                                    url: "index.php?option=com_vehiclemanager&task=ajax_rent_price&vid="+id+
                                    "&rent_from="+rent_from+"&rent_until="+rent_to+
                                        "&special_price="+special_price+"&comment_price="+comment_price+
                                        "&currency_spacial_price="+currency_spacial_price,
                                    data: { 'do' : '1' },
                                    update: $('SpecialPriseBlock_veh'),
                                    onComplete: function(response) { 
                                    }
                                }).send();                                
                            } else{
                                alert('To add special prices, you must save!');
                            }

                        });
                   });                  
               }  
                       
                </script> 
                    <p>
                    <div id ='SpecialPriseBlock_veh'>
                        <table class="adminlist adminlist_04">
                            <tr>
                                <th class="title" width ="35%"><?php echo _VEHICLE_MANAGER_LABEL_CALENDAR_SELECT_DELETE; ?></th>
                                <th class="title" ><?php echo _VEHICLE_MANAGER_FROM; ?></th>
                                <th class="title" ><?php echo _VEHICLE_MANAGER_TO; ?></th>
                                <th class="title" ><?php echo _VEHICLE_MANAGER_RENT_PRICE_PER_DAY; ?></th>
                                <th class="title" ><?php echo _VEHICLE_MANAGER_LABEL_REVIEW_COMMENT; ?></th>
                            </tr>
                                                <?php
                                                
                    for ($i = 0; $i < count($vehicle_rent_sal); $i++) {
                        
                        ?>
                                    <tr>
                                        <td align ='center'><input type="checkbox" name="del_rent_sal[]" value="<?php echo $vehicle_rent_sal[$i]->id; ?>" /></td>
                                        <td align ='center'><?php echo $vehicle_rent_sal[$i]->price_from; ?></td>
                                        <td align ='center'><?php echo $vehicle_rent_sal[$i]->price_to; ?></td>
                                        <td align ='center'><?php echo $vehicle_rent_sal[$i]->special_price. ' '.$vehicle_rent_sal[$i]->priceunit; ?></td>
                                        <td><?php echo $vehicle_rent_sal[$i]->comment_price; ?></td>                                        
                                    </tr>
                    <?php } ?>  
                        </table>
                        <p>
                        <div id ="message-here" style ='color: red; font-size: 18px;' ></div>
                        <p>                      
                    </div>
                  
                    <span class="col_02">
                    <p>
			<?php echo _VEHICLE_MANAGER_LABEL_RENT_REQUEST_FROM; ?>:<br />
			<?php echo JHtml::_('calendar', date("Y-m-d"), 'price_from_veh', 'price_from_veh', $vehiclemanager_configuration['date_format']); ?>
                    </p>
                    <p>
                        
		      <?php echo _VEHICLE_MANAGER_LABEL_RENT_REQUEST_UNTIL; ?>:<br />
		      <?php //echo JHtml::_('calendar', date("Y-m-d"), 'rent_until', 'rent_until', $vehiclemanager_configuration['date_format'],'onchange="vm_rent_request_cout_day(this.value);"'); ?>
                      <?php echo JHtml::_('calendar', date("Y-m-d"), 'price_to_veh', 'price_to_veh', $vehiclemanager_configuration['date_format']); ?> 
                        
                    </p>
                    <p><?php echo _VEHICLE_MANAGER_LABEL_PRICE; ?><br/>
                    <input id="special_price" class="inputbox price" type="text" name="special_price" size="15" value="" />
                    <?php echo $currency_spacial_price; ?>
                    </p>
                    <p><?php echo _VEHICLE_MANAGER_LABEL_REVIEW_COMMENT;?>
                    <br /><textarea id="comment_price" rows="5" cols="25" name="comment_price"></textarea></p><br />
                    <p>
                    <input id="subPrice" class="inputbox" type="button" name="new_price" value="<?php echo _VEHICLE_MANAGER_RENT_ADD_SPECIAL_PRICE; ?>"/>
                    </p>
                    </span>
<!-- end sp price -->                                                    
                </div>

                <!--*********************************************************************************************************************-->
        <?php
        $month = date("m", mktime(0, 0, 0, date('m'), 1, date('Y')));
        $year = date("Y", mktime(0, 0, 0, date('m'), 1, date('Y')));
        $placeholder = $vehiclemanager_configuration['calendar']['placeholder'];
        ?>

                <script language="javascript" type="text/javascript">

                    var itW=0;
                    function new_calen_rent(){
                        div=document.getElementById("itemsW");
                        button=document.getElementById("addW");
                        itW++;
                        newitem="" + "<?php echo _VEHICLE_MANAGER_LABEL_CALENDAR_NEW_PRICE; ?>" + itW + ": <br />";
                        newitem+="<select name=\"yearW[]\"><option value=\"2012\" " + " <?php if ($year == '2012') echo "selected" ?> " + " >2012</option><option value=\"2013\" " + " <?php if ($year == '2013') echo "selected" ?> " + " >2013</option><option value=\"2014\" " + " <?php if ($year == '2014') echo "selected" ?> " + " >2014</option><option value=\"2015\" " + " <?php if ($year == '2015') echo "selected" ?> " + " >2015</option><option value=\"2016\" " + " <?php if ($year == '2016') echo "selected" ?> " + " >2016</option><option value=\"2017\" " + " <?php if ($year == '2017') echo "selected" ?> " + " >2017</option></select>";
                        newitem+="<select name=\"monthW[]\"><option value=\"1\" " + " <?php if ($month == '1') echo "selected" ?> " + " ><?php echo JText::_('JANUARY'); ?>" + "</option><option value=\"2\" " + " <?php if ($month == '2') echo "selected" ?> " + " ><?php echo JText::_('FEBRUARY'); ?>" + "</option><option value=\"3\" " + " <?php if ($month == '3') echo "selected" ?> " + " >" + "<?php echo JText::_('MARCH'); ?>" + "</option><option value=\"4\" " + " <?php if ($month == '4') echo "selected" ?> " + " >April</option><option value=\"5\" " + " <?php if ($month == '5') echo "selected" ?> " + " >" + "<?php echo JText::_('MAY'); ?>" + "</option><option value=\"6\" " + " <?php if ($month == '6') echo "selected" ?> " + " >" + "<?php echo JText::_('JUNE'); ?>" + "</option><option value=\"7\" " + " <?php if ($month == '7') echo "selected" ?> " + " >" + "<?php echo JText::_('JULY'); ?>" + "</option>";
                        newitem+="<option value=\"8\" " + " <?php if ($month == '8') echo "selected" ?> " + "  >" + "<?php echo JText::_('AUGUST'); ?>" + "</option><option value=\"9\" " + " <?php if ($month == '9') echo "selected" ?> " + " >" + "<?php echo JText::_('SEPTEMBER'); ?>" + "</option><option value=\"10\" " + " <?php if ($month == '10') echo "selected" ?> " + " >" + "<?php echo JText::_('OCTOBER'); ?>" + "</option><option value=\"11\" " + " <?php if ($month == '11') echo "selected" ?> " + " >" + "<?php echo JText::_('NOVEMBER'); ?>" + "</option><option value=\"12\" " + " <?php if ($month == '12') echo "selected" ?> " + " >" + "<?php echo JText::_('DECEMBER'); ?>" + "</option></select><br />";
                        newitem+="<b>Week</b><br /><textarea rows=\"5\" cols=\"25\" name=\"week[]\">" + "<?php echo $placeholder; ?>" + "</textarea><br /><b>Weekend</b><br /><textarea rows=\"5\" cols=\"25\" name=\"weekend[]\">" + "<?php echo $placeholder; ?>" + "</textarea><br /><b>Midweek</b><br /><textarea rows=\"5\" cols=\"25\" name=\"midweek[]\">" + "<?php echo $placeholder; ?>" + "</textarea><br /><br /><br />";
                        newnode=document.createElement("span");
                        newnode.innerHTML=newitem;
                        div.insertBefore(newnode,button);
                    }

                </script>

                

                <!--********************************************************************************************************************************-->
		    <br />
                <?php
                if ($vehiclemanager_configuration['extra1'] == 0 && $vehiclemanager_configuration['extra2'] == 0 && $vehiclemanager_configuration['extra3'] == 0 && $vehiclemanager_configuration['extra4'] == 0
                        && $vehiclemanager_configuration['extra5'] == 0 && $vehiclemanager_configuration['extra6'] == 0 && $vehiclemanager_configuration['extra7'] == 0 && $vehiclemanager_configuration['extra8'] == 0
                        && $vehiclemanager_configuration['extra9'] == 0 && $vehiclemanager_configuration['extra10'] == 0)
                {
                    
                } else
                {
                    ?>
                    <div class="admin_row_93 admin_row"><h2><?php echo _VEHICLE_MANAGER_LABEL_EXTRA; ?></h2></div>
                <?php } ?>
        <?php if ($vehiclemanager_configuration['extra1'] == 1)
        { ?>
                    <div class="admin_row_94 admin_row">
                        <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTRA1; ?>:</span>
                        <span class="admin_col_01"><input class="inputbox" type="text" name="extra1" size="30" value="<?php echo $row->extra1; ?>" /></span>
                    </div>
                <?php
                }
                if ($vehiclemanager_configuration['extra2'] == 1)
                {
                    ?>
                    <div class="admin_row_95 admin_row">
                        <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTRA2; ?>:</span>
                        <span class="admin_col_01"><input class="inputbox" type="text" name="extra2" size="30" value="<?php echo $row->extra2; ?>" /></span>
                    </div>
        <?php
        }
        if ($vehiclemanager_configuration['extra3'] == 1)
        {
            ?>
                    <div class="admin_row_96 admin_row">
                        <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTRA3; ?>:</span>
                        <span class="admin_col_01"><input class="inputbox" type="text" name="extra3" size="30" value="<?php echo $row->extra3; ?>" /></span>
                    </div>
        <?php
        }
        if ($vehiclemanager_configuration['extra4'] == 1)
        {
            ?>
                    <div class="admin_row_97 admin_row">
                        <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTRA4; ?>:</span>
                        <span class="admin_col_01"><input class="inputbox" type="text" name="extra4" size="30" value="<?php echo $row->extra4; ?>" /></span>
                    </div>
                        <?php
                        }
                        if ($vehiclemanager_configuration['extra5'] == 1)
                        {
                            ?>
                    <div class="admin_row_98 admin_row">
                        <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTRA5; ?>:</span>
                        <span class="admin_col_01"><input class="inputbox" type="text" name="extra5" size="30" value="<?php echo $row->extra5; ?>" /></span>
                    </div>
                <?php
                }
                if ($vehiclemanager_configuration['extra6'] == 1)
                {
                    ?>
                    <div class="admin_row_99 admin_row">
                        <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTRA6; ?>:</span>
                        <span class="admin_col_01"><?php echo $extra_list[0]; ?></span>
                    </div>
                <?php
                }
                if ($vehiclemanager_configuration['extra7'] == 1)
                {
                    ?>
                    <div class="admin_row_100 admin_row">
                        <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTRA7; ?>:</span>
                        <span class="admin_col_01"><?php echo $extra_list[1]; ?></span>
                    </div>
        <?php
        }
        if ($vehiclemanager_configuration['extra8'] == 1)
        {
            ?>
                    <div class="admin_row_101 admin_row">
                        <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTRA8; ?>:</span>
                        <span class="admin_col_01"><?php echo $extra_list[2]; ?></span>
                    </div>
        <?php
        }
        if ($vehiclemanager_configuration['extra9'] == 1)
        {
            ?>
                    <div class="admin_row_102 admin_row">
                        <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTRA9; ?>:</span>
                        <span class="admin_col_01"><?php echo $extra_list[3]; ?></span>
                    </div>
        <?php
        }
        if ($vehiclemanager_configuration['extra10'] == 1)
        {
            ?>
                    <div class="admin_row_103 admin_row">
                        <span class="admin_col_01"><?php echo _VEHICLE_MANAGER_LABEL_EXTRA10; ?>:</span>
                        <span class="admin_col_01"><?php echo $extra_list[4]; ?></span>
                    </div>
        <?php } ?>

                <div class="admin_row_104 admin_row">
                   <input  type="button" name="submit2" value="<?php echo _VEHICLE_MANAGER_LABEL_BUTTON_SAVE; ?>"  class="button" onclick="javascript:vm_submitbutton('submit2');"/>
                </div>

                <div class="basictable_02 basictable">
        <?php mosHTML::BackButton($params, $hide_js); ?>
                </div>
        <?php
        //************publish on add begin
        $acl = JFactory::getACL();
        if ($vehiclemanager_configuration['approve_on_add']['show'])
        {
            if (checkAccess_VM($vehiclemanager_configuration['approve_on_add']['registrationlevel'], 'RECURSE', userGID_VM($my->id), $acl))
            {
                ?><input type="hidden" name="approved" value="1"/><?php
            } else
            {
                ?><input type="hidden" name="approved" value="0"/><?php
            }
        } else
        {
            ?><input type="hidden" name="approved" value="0"/><?php } ?>
        <?php
        if ($vehiclemanager_configuration['publish_on_add']['show'])
        {
            if (checkAccess_VM($vehiclemanager_configuration['publish_on_add']['registrationlevel'], 'RECURSE', userGID_VM($my->id), $acl))
            {
                ?><input type="hidden" name="published" value="1"/><?php
            } else
            {
                ?><input type="hidden" name="published" value="0"/><?php
            }
        } else
        {
            ?><input type="hidden" name="published" value="0"/><?php } ?>

        </form>
        <?php
    }

////------------------------end ADD----------------------------------

    static function displayLicense($id)
    {
        global $mosConfig_live_site, $Itemid;
        $session = JFactory::getSession();
        $pas = $session->get("ssmid", "default");
        $sid_1 = $session->getId();
        $vehicle = $session->get("obj_vehicle", "default");
        if (!($session->get("ssmid", "default")) ||
                $pas == "" ||
                $pas != $sid_1 ||
                $_COOKIE['ssd'] != $sid_1 ||
                !array_key_exists("HTTP_REFERER", $_SERVER) ||
                $_SERVER["HTTP_REFERER"] == "" ||
                strpos($_SERVER["HTTP_REFERER"], $_SERVER['SERVER_NAME']) === false)
        {
            echo '<H3 align="center">Link failure</H3>';
            exit;
        }
        echo '<style type="text/css"><!--#frm {width: 95%;height: 200px;border-width: thin;}--></style>';
        echo '<Form name="dlform" method="POST" action="' . sefRelToAbs($mosConfig_live_site . '/index.php?option=com_vehiclemanager&amp;task=downitsf&amp;id=' . @$vehicle->id . '&amp;Itemid=' . $Itemid) . ' ">';
        echo '<H2 align = "center" style="text-align: center;">' . _VEHICLE_MANAGER_LICENSE_AGREEMENT_TITLE . '</H2>';
        echo '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
        echo '<IFRAME src="' . $mosConfig_live_site . '/components/com_vehiclemanager/mylicense.php" width="95%" height="230" name="frm" id="frm" SCROLLING="auto" noresize>';
        echo '</IFRAME>';
        echo '<input type="hidden" name="id" value="' . $id . '" />';
        echo '<input type="hidden" name="task" value="downitsf" />';
        echo '<input type="hidden" name="ssidPost" value="' . $session->getId() . '" >';
        echo '<DIV align="right" style="text-align:right;>';
        echo '<BR /> <font size="3">' . _VEHICLE_MANAGER_LICENSE_AGREEMENT_ACCEPT . '</font> <input type="radio" name="choice" checked="checked" onclick="document.getElementById(\'DBB\').disabled=true;" />';
        echo _VEHICLE_MANAGER_NO;
        echo '<input type="radio" name="choice" onclick="document.getElementById(\'DBB\').removeAttribute(
\'disabled\');" >';
        echo _VEHICLE_MANAGER_YES . '&nbsp;&nbsp;&nbsp;';
        echo '<input type="submit" ID="DBB" name="downbutton" disabled="disabled" value="download" />&nbsp;&nbsp;&nbsp;&nbsp;';
        echo '<br /><br /><br /><br />';
        echo '</div>';
        echo '</form>';
    }

    static function showRentRequest(& $vehicles, & $currentcat, & $params, & $tabclass, & $catid, & $sub_categories, $is_exist_sub_categories)
    {
        
        ///require_once( $GLOBALS['mosConfig_absolute_path'] . '/includes/pageNavigation.php' );
        ///$pageNav = new mosPageNav(0, 0, 0);
        $pageNav = new JPagination(0, 0, 0); // for J 1.6
        HTML_vehiclemanager::displayVehicles($vehicles, $currentcat, $params, $tabclass, $catid, $sub_categories, $is_exist_sub_categories, $pageNav);
        // add the formular for send to :-)
    }

    static function displayVehicles(&$rows, $currentcat, &$params, $tabclass, $catid, $categories, $is_exist_sub_categories, &$pageNav, $layout = "list")
    {   
        global $mosConfig_absolute_path;
        $type = 'alone_category';
        require getLayoutPath::getLayoutPathCom('com_vehiclemanager',$type, $layout);
        
    }

    static function displayAllVehicles(&$rows, &$params, $tabclass, &$pageNav, $layout = "list")
    {
        global $mosConfig_absolute_path;
        $type = 'all_vehicle';
        require getLayoutPath::getLayoutPathCom('com_vehiclemanager',$type, $layout);
        
    }

    static function displayVehPdf(&$rows, $currentcat, &$params, $tabclass, $catid, $categories, $is_exist_sub_categories, &$pageNav)
    {
        $session = &JFactory::getSession();
        $arr = $session->get("array", "default");
        global $hide_js, $Itemid, $mosConfig_live_site, $mosConfig_absolute_path;
        global $limit, $total, $limitstart, $task, $paginations, $mainframe, $vehiclemanager_configuration;

        ob_end_clean();
        ob_start();
        ?>

        <div class="componentheading<?php echo $params->get('pageclass_sfx'); ?>">
           <?php
              if (/* !$params->get('wrongitemid') */1)
               {
          echo $currentcat->header;
               } else
                {
               $parametrs = $mainframe->getParams();
          echo $parametrs->_registry['_default']['data']->page_title;
               }
            ?>
        </div>

        <div id="list">

            <table class="basictable_03" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="10%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
			<?php echo _VEHICLE_MANAGER_LABEL_COVER; ?>
                    </td>
                    <td width="40%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
			<?php echo _VEHICLE_MANAGER_LABEL_TITLE; ?>
                    </td>
                    <td width="16%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
                        <?php echo _VEHICLE_MANAGER_LABEL_MAKER . ", " . _VEHICLE_MANAGER_LABEL_MODEL; ?>
                    </td>
<?php
        if ($params->get('show_pricerequest')) {
?>  
                    <td width="14%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
                        <?php echo _VEHICLE_MANAGER_LABEL_PRICE; ?>
                    </td>
        <?php
        }
        if ($params->get('hits'))
        {
            ?>
                        <td width="5%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
			    <?php echo _VEHICLE_MANAGER_LABEL_HITS; ?>
                        </td>
                        <?php
                    }
                    if ($params->get('show_rentstatus'))
                    {
                        ?>
                        <td align="center" width="15%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
			    <?php echo _VEHICLE_MANAGER_LABEL_AVAILABLE_FOR_RENT; ?>
                        </td>
                            <?php
                        }
                        ?>
                </tr>
                        <?php
                        $available = false;
                        $k = 0;
//****************************************   add my perenos
                        $total = count($rows);
                        $g_item_count = 0;
                        if (isset($_GET['lang']))
                            $lang = $_GET['lang']; else
                            $lang = '*';
                        foreach ($rows as $row) {
                            if ($row->language == $lang or $row->language == '*' or $lang == '*')
                            {
//****************************************   add my perenos
                                $link = 'index.php?option=com_vehiclemanager&amp;task=view_vehicle&amp;id=' . $row->id . '&amp;catid=' . $row->catid . '&amp;Itemid=' . $Itemid;
                                $g_item_count++;
                                ?>
                        <tr class="<?php echo $tabclass[($g_item_count % 2)]; ?>" >
                            <td style="padding-left:5px; padding-top:5px; padding-right:10px;">
                <?php
                $vehicle = $row;
                //for local images
                $imageURL = urlencode($vehicle->image_link);
                if ($imageURL != '')
                {
                    $file_pth = pathinfo($imageURL);
                    $file_type = '.' . $file_pth['extension'];
                    if (array_key_exists('filename', $file_pth))
                        $file_name = $file_pth['filename'];
                    else
                        $file_name = substr($imageURL, 0, strlen($imageURL) - strlen($file_pth['extension']) - 1);
                    echo '<img src="./components/com_vehiclemanager/photos/'
                    . $file_name . $file_type . '" border="0" class="little">';
                } else
                {
                    echo '<img src="' .
                    $mosConfig_live_site . '/components/com_vehiclemanager/images/';
                    echo _VEHICLE_MANAGER_NO_PICTURE;
                    echo '" alt="no-img_eng.gif" border="0"  />&nbsp;';
                }
                ?>
                            </td>
                            <td >
                                <a href="<?php echo sefRelToAbs($link); ?>" class="category<?php echo $params->get('pageclass_sfx'); ?>">
				    <?php echo $row->vtitle; ?>
                                </a>

                            </td>
                            <td>
                                <?php
                                if ($row->maker == '0' || $row->maker == 'other')
                                    echo $row->vmodel;
                                else
                                    echo $row->maker, ', ', $row->vmodel;
                                ?>
                            </td>
<?php
                          if ($params->get('show_pricerequest')) {
?>                              
                            <td >
                                   <?php echo $row->price, ' ', $row->priceunit; ?>
                            </td>
<?php
                          }
?>                              
                                    <?php
                                    if ($params->get('hits'))
                                    {
                                    ?>
                                <td align="left">
                                       <?php echo $row->hits; ?>
                                </td>
                                    <?php
                                    }
                                    ?>
                                
                                <td align="left">
                    <?php
                    if ($params->get('show_rentstatus'))
                    {
                        if (($row->listing_type == 1) && !isset($rents1[0]->rent_until))
                        {
                            ?>
                            <?php
                            echo "YES";
                        } else if ($row->fk_rentid != 0 && isset($rents1[0]->rent_until))
                        {
                            echo _VEHICLE_MANAGER_LABEL_RENT_FROM_UNTIL . "<br />";
                            for ($a = 0; $a < count($rents1); $a++) {
                                $from_until = substr($rents1[$a]->rent_from, 0, 10) .
                                        "&nbsp;/&nbsp;" .
                                        substr($rents1[$a]->rent_until, 0, 10) . "\n";
                                print_r($from_until);
                            }
                        } else
                            echo "NO";
                    }
                    ?>
                                </td>
                            </tr>
                            <?php 
                        }
                    } ?>
            </table>
        </div> <!-- list -->

                    <?php
                    $tbl = ob_get_contents();
                    ob_end_clean();

                    require_once($mosConfig_absolute_path . "/components/com_vehiclemanager/tcpdf/config/lang/eng.php");
                    require_once($mosConfig_absolute_path . "/components/com_vehiclemanager/tcpdf/tcpdf.php");

                    $pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8', false);

                    $pdf->SetTitle('Vehicle manager');
                    $pdf->SetFont('freesans', 'B', 20);
                    $pdf->AddPage();
                    $pdf->SetFont('freesans', '', 10);
                    $pdf->writeHTML($tbl, true, false, false, false, '');
                    //$pdf->writeHTML($tbl, true, false, false, false, true);
                    $pdf->Output('Vehicle_manager.pdf', 'I');
                    exit;
                }

                static function displayVehPrint(&$rows, $currentcat, &$params, $tabclass, $catid, $categories, $is_exist_sub_categories, &$pageNav)
                {
                    $session = JFactory::getSession();
                    $arr = $session->get("array", "default");

                    global $hide_js, $Itemid, $mosConfig_live_site, $mosConfig_absolute_path;
                    global $limit, $total, $limitstart, $task, $paginations, $mainframe, $vehiclemanager_configuration;
                    ?>
        <div class="componentheading<?php echo $params->get('pageclass_sfx'); ?>">
            <table class="basictable_04">
                <tr>
                    <td>
                        <?php
                        if (/* !$params->get('wrongitemid') */1)
                        {
                            echo $currentcat->header;
                        } else
                        {
                            $parametrs = $mainframe->getParams();
                            echo $parametrs->_registry['_default']['data']->page_title;
                        }
                        ?>
                    </td>
                    <td align="right">
                        <a href="#" onclick="window.print();return false;">
                        <?php
                        if (version_compare(JVERSION, "1.6.0", "lt"))
                        {
                            ?>
                                <img src="<?php echo $mosConfig_live_site; ?>/images/M_images/printButton.png" alt="Print" >
                            <?php
                        } else
                        {
                            ?>
                                <img src="<?php echo $mosConfig_live_site; ?>/media/system/images/printButton.png" alt="Print" >
            <?php
        }
        ?>
                        </a>
                    </td>
                </tr>      
            </table>
        </div>

	<div style="clear: both;"></div>

        <div id="list">
            <table class="basictable_05" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="10%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
                    <?php echo _VEHICLE_MANAGER_LABEL_COVER; ?>
                    </td>
                    <td width="40%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
                    <?php echo _VEHICLE_MANAGER_LABEL_TITLE; ?>
                    </td>
                    <td width="40%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
                        <?php echo _VEHICLE_MANAGER_LABEL_MODEL; ?>
                    </td>
<?php
                 if ($params->get('show_pricerequest')) {
?>      
                  <td width="15%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
                  <?php echo _VEHICLE_MANAGER_LABEL_PRICE; ?>
                  </td>
                <?php
                }
                if ($params->get('hits'))
                {
                    ?>
                        <td height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>" align="right">
			    <?php echo _VEHICLE_MANAGER_LABEL_HITS; ?>
                        </td>
            <?php
        }
            ?>
                </tr>
            <?php
            $available = false;
            $k = 0;
//****************************************   add my perenos
            $total = count($rows);
            if (isset($_GET['lang']))
                $lang = $_GET['lang']; else
                $lang = '*';
            foreach ($rows as $row) {
                if ($row->language == $lang or $row->language == '*' or $lang == '*')
                {
//****************************************   add my perenos
                    $link = 'index.php?option=com_vehiclemanager&amp;task=view_vehicle&amp;id=' . $row->id . '&amp;catid=' . $row->catid . '&amp;Itemid=' . $Itemid;
                    ?>
                        <tr class="<?php echo $tabclass[$k]; ?>" >
                            <td style="padding-left:5px; padding-top:5px; padding-right:10px;">
                <?php
                $vehicle = $row;
                //for local images
                $imageURL = urlencode($vehicle->image_link);

                if ($imageURL != '')
                {
                    $file_pth = pathinfo($imageURL);
                    $file_type = '.' . $file_pth['extension'];
                    if (array_key_exists('filename', $file_pth))
                        $file_name = $file_pth['filename'];
                    else
                        $file_name = substr($imageURL, 0, strlen($imageURL) - strlen($file_pth['extension']) - 1);
                    echo '<img src="' .
                    $mosConfig_live_site . '/components/com_vehiclemanager/photos/'
                    . $file_name . "_70_70" . $file_type . '" border="0" class="little">';
                } else
                {
                    echo '<img src="' .
                    $mosConfig_live_site . '/components/com_vehiclemanager/images/';
                    echo _VEHICLE_MANAGER_NO_PICTURE;
                    echo '" alt="no-img_eng.gif" border="0"  />&nbsp;';
                }
                ?>
                            </td>
                            <td >
                                <a href="<?php echo sefRelToAbs($link); ?>" class="category<?php echo $params->get('pageclass_sfx'); ?>">
                        <?php echo $row->vtitle; ?>
                                </a>

                            </td>
                            <td>
                        <?php
                        if ($row->maker == '0' || $row->maker == 'other')
                            echo $row->vmodel;
                        else
                            echo $row->maker, ', ', $row->vmodel;
                        ?>
                            </td>
                          <?php
                            if ($params->get('show_pricerequest')) {
                          ?>
                            <td >
                                <?php echo $row->price, ' ', $row->priceunit; ?>
                            </td>
                            <?php
                            }
                            if ($params->get('hits'))
                            {
                            ?>
                                <td align="left">
                                <?php echo $row->hits; ?>
                                </td>
                       </tr>
                <?php 
                            }
		  }
		} ?>
            </table>
        </div>
        <?php
       // exit;
    }

    static function displayAllVehPdf(&$rows, &$params, $tabclass, &$pageNav)
    {
        $session = JFactory::getSession();
        $arr = $session->get("array", "default");
        global $hide_js, $Itemid, $mosConfig_live_site, $mosConfig_absolute_path;
        global $limit, $total, $limitstart, $task, $paginations, $mainframe, $vehiclemanager_configuration;

        ob_end_clean();
        ob_start();
        ?>

        <div class="componentheading<?php echo $params->get('pageclass_sfx'); ?>"></div>
        <div id="list">
            <table class="basictable_06" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="10%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
                <?php echo _VEHICLE_MANAGER_LABEL_COVER; ?>
                    </td>
                    <td width="40%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
			<?php echo _VEHICLE_MANAGER_LABEL_TITLE; ?>
                    </td>
                    <td width="16%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
			<?php echo _VEHICLE_MANAGER_LABEL_MAKER . ", " . _VEHICLE_MANAGER_LABEL_MODEL; ?>
                    </td>
<?php
        if ($params->get('show_pricerequest')) {
?>  
                    <td width="14%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
          		      <?php echo _VEHICLE_MANAGER_LABEL_PRICE; ?>
                    </td>
        <?php
        }
        if ($params->get('hits'))
        {
            ?>
                        <td width="5%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
            <?php echo _VEHICLE_MANAGER_LABEL_HITS; ?>
                        </td>
            <?php
        }
        if ($params->get('show_rentstatus'))
        {
            ?>
                        <td align="center" width="15%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
            <?php echo _VEHICLE_MANAGER_LABEL_AVAILABLE_FOR_RENT; ?>
                        </td>
            <?php
        }
        ?>
                </tr>
        <?php
        $available = false;
        $k = 0;
//****************************************   add my perenos
        $total = count($rows);
        $g_item_count = 0;
        if (isset($_GET['lang']))
            $lang = $_GET['lang']; else
            $lang = '*';
        foreach ($rows as $row) {
            if ($row->language == $lang or $row->language == '*' or $lang == '*')
            {
//****************************************   add my perenos
                $link = 'index.php?option=com_vehiclemanager&amp;task=view_vehicle&amp;id=' . $row->id . '&amp;catid=' . $row->catid . '&amp;Itemid=' . $Itemid;
                $g_item_count++;
                ?>
                        <tr class="<?php echo $tabclass[($g_item_count % 2)]; ?>" >
                            <td style="padding-left:5px; padding-top:5px; padding-right:10px;">
                                    <?php
                                    $vehicle = $row;
                                    //for local images
                                    $imageURL = urlencode($vehicle->image_link);
                                    if ($imageURL != '')
                                    {
                                        $file_pth = pathinfo($imageURL);
                                        $file_type = '.' . $file_pth['extension'];
                                        if (array_key_exists('filename', $file_pth))
                                            $file_name = $file_pth['filename'];
                                        else
                                            $file_name = substr($imageURL, 0, strlen($imageURL) - strlen($file_pth['extension']) - 1);
                                        echo '<img src="./components/com_vehiclemanager/photos/'
                                        . $file_name ."_".$vehiclemanager_configuration['foto']['high']."_".$vehiclemanager_configuration['foto']['width']. $file_type . '" border="0" class="little">';
                                    } else
                                    {
                                        echo '<img src="' .
                                        $mosConfig_live_site . '/components/com_vehiclemanager/images/';
                                        echo _VEHICLE_MANAGER_NO_PICTURE;
                                        echo '" alt="no-img_eng.gif" border="0"  />&nbsp;';
                                    }
                                    ?>
                            </td>
                            <td >
                                <a href="<?php echo sefRelToAbs($link); ?>" class="category<?php echo $params->get('pageclass_sfx'); ?>">
                                <?php echo $row->vtitle; ?>
                                </a>

                            </td>
                            <td>
                            <?php
                            if ($row->maker == '0' || $row->maker == 'other')
                                echo $row->vmodel;
                            else
                                echo $row->maker, ', ', $row->vmodel;
                            ?>
                            </td>
                            <td >
<?php
                            if ($params->get('show_pricerequest')) {
?>                              <?php echo $row->price, ' ', $row->priceunit; ?>
                            </td>
                            <?php
                            }
                            if ($params->get('hits'))
                            {
                            ?>
                                <td align="left">
                                <?php echo $row->hits; ?>
                                </td>
                            <?php
                            }
                            ?>
                                <td align="left">
                            <?php
                            if ($params->get('show_rentstatus'))
                            {
                                if (($row->listing_type == 1) && !isset($rents1[0]->rent_until))
                                {
                                    ?>
                                    <?php
                                    echo "YES";
                                } else if ($row->fk_rentid != 0 && isset($rents1[0]->rent_until))
                                {
                                    echo _VEHICLE_MANAGER_LABEL_RENT_FROM_UNTIL . "<br />";
                                    for ($a = 0; $a < count($rents1); $a++) {
                                        $from_until = substr($rents1[$a]->rent_from, 0, 10) .
                                                "&nbsp;/&nbsp;" .
                                                substr($rents1[$a]->rent_until, 0, 10) . "\n";
                                        print_r($from_until);
                                    }
                                } else
                                    echo "NO";
                            }
                            ?>
                                </td>
                            </tr>
                            <?php 
                            }
                        } ?>
		    </table>
		</div>
                        <?php
                        $tbl = ob_get_contents();
                        ob_end_clean();

                        require_once($mosConfig_absolute_path . "/components/com_vehiclemanager/tcpdf/config/lang/eng.php");
                        require_once($mosConfig_absolute_path . "/components/com_vehiclemanager/tcpdf/tcpdf.php");

                        $pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8', false);

                        $pdf->SetTitle('Vehicle manager');
                        $pdf->SetFont('freesans', 'B', 20);
                        $pdf->AddPage();
                        $pdf->SetFont('freesans', '', 10);
                        $pdf->writeHTML($tbl, true, false, false, false, '');
                        //$pdf->writeHTML($tbl, true, false, false, false, true);
                        $pdf->Output('Vehicle_manager.pdf', 'I');
                        exit;
                    }

                    static function displayAllVehPrint(&$rows, &$params, $tabclass, &$pageNav)
                    {

                        $session = JFactory::getSession();
                        $arr = $session->get("array", "default");

                        global $hide_js, $Itemid, $mosConfig_live_site, $mosConfig_absolute_path;
                        global $limit, $total, $limitstart, $task, $paginations, $mainframe, $vehiclemanager_configuration;
                        ?>
        <div class="componentheading<?php echo $params->get('pageclass_sfx'); ?>">
            <table class="basictable_07">
                <tr>
                    <td align="right">
                        <a href="#" onclick="window.print();return false;">
        <?php
        if (version_compare(JVERSION, "1.6.0", "lt"))
        {
            ?>
                                <img src="<?php echo $mosConfig_live_site; ?>/images/M_images/printButton.png" alt="Print" >
            <?php
        } else
        {
            ?>
                                <img src="<?php echo $mosConfig_live_site; ?>/media/system/images/printButton.png" alt="Print" >
            <?php
        }
        ?>
                        </a>
                    </td>
                </tr>      
            </table>
        </div>

	<div style="clear: both;"></div>

        <div id="list">
            <table class="basictable_08" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="10%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
        <?php echo _VEHICLE_MANAGER_LABEL_COVER; ?>
                    </td>
                    <td width="40%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
        <?php echo _VEHICLE_MANAGER_LABEL_TITLE; ?>
                    </td>
                    <td width="40%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
        <?php echo _VEHICLE_MANAGER_LABEL_MODEL; ?>
                    </td>
<?php
                        if ($params->get('show_pricerequest')) {
?>  
                        <td width="15%" height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>">
                        <?php echo _VEHICLE_MANAGER_LABEL_PRICE; ?>
                        </td>
                        <?php
                        }
                        if ($params->get('hits'))
                        {
                            ?>
                        <td height="20" class="sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>" align="right">
                            <?php echo _VEHICLE_MANAGER_LABEL_HITS; ?>
                        </td>
                            <?php
                        }
               ?>
                </tr>
            <?php
            $available = false;
            $k = 0;
//****************************************   add my perenos
            $total = count($rows);
            if (isset($_GET['lang']))
                $lang = $_GET['lang']; else
                $lang = '*';
            foreach ($rows as $row) {
                if ($row->language == $lang or $row->language == '*' or $lang == '*')
                {
//****************************************   add my perenos
                    $link = 'index.php?option=com_vehiclemanager&amp;task=view_vehicle&amp;id=' . $row->id . '&amp;catid=' . $row->catid . '&amp;Itemid=' . $Itemid;
                    ?>
                        <tr class="<?php echo $tabclass[$k]; ?>" >
                            <td style="padding-left:5px; padding-top:5px; padding-right:10px;">
                <?php
                $vehicle = $row;
                //for local images
                $imageURL = urlencode($vehicle->image_link);

                if ($imageURL != '')
                {
                    $file_pth = pathinfo($imageURL);
                    $file_type = '.' . $file_pth['extension'];
                    if (array_key_exists('filename', $file_pth))
                        $file_name = $file_pth['filename'];
                    else
                        $file_name = substr($imageURL, 0, strlen($imageURL) - strlen($file_pth['extension']) - 1);
                    echo '<img src="' .
                    $mosConfig_live_site . '/components/com_vehiclemanager/photos/'
                    . $file_name . "_".$vehiclemanager_configuration['foto']['high']."_".$vehiclemanager_configuration['foto']['width'] . $file_type . '" border="0" class="little">';
                } else
                {
                    echo '<img src="' .
                    $mosConfig_live_site . '/components/com_vehiclemanager/images/';
                    echo _VEHICLE_MANAGER_NO_PICTURE;
                    echo '" alt="no-img_eng.gif" border="0"  />&nbsp;';
                }
                ?>
                            </td>
                            <td >
                                <a href="<?php echo sefRelToAbs($link); ?>" class="category<?php echo $params->get('pageclass_sfx'); ?>">
                <?php echo $row->vtitle; ?>
                                </a>

                            </td>
                            <td>
                    <?php
                    if ($row->maker == '0' || $row->maker == 'other')
                        echo $row->vmodel;
                    else
                        echo $row->maker, ', ', $row->vmodel;
                    ?>
                            </td>
<?php
                if ($params->get('show_pricerequest')) {
?>  
                     <td >
                      <?php echo $row->price, ' ', $row->priceunit; ?>
                     </td>
                    <?php
                }    
                if ($params->get('hits'))
                {
                    ?>
                                <td align="left">
                    <?php echo $row->hits; ?>
                                </td>
                       </tr>
        <?php 
                }
		  }
	      } ?>
          </table>
        </div>
        <?php
      //  exit;
    }

    /**
     * Displays the vehicle
     * rent Status
     */
    static function displayVehicle(& $vehicle, & $tabclass, & $params, & $currentcat, & $rating, & $vehicle_photos, & $id, & $catid, & $vehicle_feature, & $currencys_price, & $layout = 'default')
    {
        if(!$catid) $catid = JRequest::getVar('catid');
        global $mosConfig_absolute_path;
        $type = 'view_vehicle';
        require getLayoutPath::getLayoutPathCom('com_vehiclemanager',$type, $layout);
        
        
    }

// END function displayVehicle

    static function displayVehMainPdf(& $vehicle, & $tabclass, & $params, & $currentcat, & $rating, & $vehicle_photos)
    {

        global $hide_js, $mainframe, $Itemid, $vehiclemanager_configuration, $mosConfig_live_site, $mosConfig_absolute_path, $my;

        JPluginHelper::importPlugin('content');
        $dispatcher = JDispatcher::getInstance();

        ob_end_clean();
        ob_start();
        ?>  

        <table class="basictable_09" align="center">
            <tr  class="vmcolor">
                <td colspan="2" align="center" class="title_td">
                    <?php echo $vehicle->vtitle; ?>
                </td>
            </tr>
            <tr>
                <td nowrap="nowrap" align="center" colspan="2">
                    <div class="img1">
        <?php
        $imageURL = urlencode($vehicle->image_link);
        if ($imageURL != '')
        {
            echo '<img src="./components/com_vehiclemanager/photos/' .
            $imageURL .
            '" height="' . $vehiclemanager_configuration['fotomain']['high'] . '"  >';
        } else
        {
            echo '<img src="./components/com_vehiclemanager/images/' .
            _VEHICLE_MANAGER_NO_PICTURE_BIG .
            '" height="' . $vehiclemanager_configuration['fotomain']['high'] .  '"  >';
        }
        ?></div>

                </td>
            </tr>

            <?php if ($vehicle->maker != '')
            {
                ?>
                <tr  class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_MAKER; ?>
                    </td>
                    <td  align="left" class="last_td">
                         <?php echo $vehicle->maker; ?>
                    </td>
                </tr>
            <?php }
            if ($vehicle->vmodel !== 0 && trim($vehicle->vmodel) !== "")
            {
                ?>
                <tr  class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_MODEL; ?>
                    </td>
                    <td  align="left">
                         <?php echo $vehicle->vmodel; ?>
                    </td>
                </tr>
            <?php
            }
            $vtype[0] = _VEHICLE_MANAGER_OPTION_SELECT;
            $vtype1 = explode(',', _VEHICLE_MANAGER_OPTION_VEHICLE_TYPE);
            $i = 1;
            foreach ($vtype1 as $vtype2) {
                $vtype[$i] = $vtype2;
                $i++;
            }
            if ($vehicle->vtype != 0)
            {
                ?>
                <tr  class="vmcolor" >
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_VEHICLE_TYPE; ?>
                    </td>
                    <td  align="left">
                        <?php echo $vtype[$vehicle->vtype]; ?>
                    </td>
                </tr>
            <?php } if (trim($vehicle->description))
            { ?>
                <tr  class="vmcolor" class="first_td" >
                    <td valign="top" class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_COMMENT; ?>
                    </td>
                    <td  align="justify">
                        <?php
            positions_vm($vehicle->description);
            ?>
                    </td>
                </tr>
                        <?php } if ($vehicle->year != 0)
                        {
                            ?>
                <tr  class="vmcolor" >
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_ISSUE_YEAR; ?>
                    </td>
                    <td  align="left">
                        <?php echo $vehicle->year; ?>
                    </td>
                </tr>
        <?php
        }
        $vcondition[0] = _VEHICLE_MANAGER_OPTION_SELECT;
        $vcondition1 = explode(',', _VEHICLE_MANAGER_OPTION_VEHICLE_CONDITION);
        $i = 1;
        foreach ($vcondition1 as $vcondition2) {
            $vcondition[$i] = $vcondition2;
            $i++;
        }
        if ($vehicle->vcondition != 0)
        {
            ?>
                <tr class="vmcolor" >
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_CONDITION_STATUS; ?>
                    </td>
                    <td align="left">
                        <?php echo $vcondition[$vehicle->vcondition]; ?>
                    </td>
                </tr>
        <?php } if (trim($vehicle->mileage))
        { ?>
                <tr class="vmcolor" >
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_MILEAGE; ?>
                    </td>
                    <td  align="left">
                        <?php echo $vehicle->mileage; ?>
                    </td>
                </tr>
        <?php } if (trim($vehicle->vlocation))
        { ?>

                <tr class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_ADDRESS; ?>
                    </td>
                    <td  align="left">
                        <?php echo $vehicle->vlocation; ?>
                    </td>
                </tr>
                        <?php } if ($vehiclemanager_configuration['owner']['show'] && $vehicle->ownername != '' && $vehicle->owneremail != '')
                        { ?>
                <tr class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_OWNER; ?>
                    </td>
                    <td  align="left">
                        <?php echo $vehicle->ownername, ', ', $vehicle->owneremail; ?>
                        
                    </td>
                </tr>
                        <?php
                        }
                        $listing_type[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                        $listing_type[1] = _VEHICLE_MANAGER_OPTION_FOR_RENT;
                        $listing_type[2] = _VEHICLE_MANAGER_OPTION_FOR_SALE;
                        if ($vehicle->listing_type != 0)
                        {
                            ?>
                <tr class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_LISTING_TYPE; ?>
                    </td>
                    <td align="left">
                        <?php echo $listing_type[$vehicle->listing_type]; ?>
                    </td>
                </tr>
        <?php
        }
        $listing_status[0] = _VEHICLE_MANAGER_OPTION_SELECT;
        $listing_status1 = explode(',', _VEHICLE_MANAGER_OPTION_LISTING_STATUS);
        $i = 1;
        foreach ($listing_status1 as $listing_status2) {
            $listing_status[$i] = $listing_status2;
            $i++;
        }
        if ($vehicle->listing_status != 0)
        {
            ?>
                <tr class="vmcolor">
                    <td nclass="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_LISTING_STATUS; ?>
                    </td>
                    <td align="left">
                        <?php echo $listing_status[$vehicle->listing_status]; ?>
                    </td>
                </tr>

        <?php } if (($vehicle->price) > 0 && $params->get('show_pricerequest') )
        { ?>
                <tr class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_PRICE; ?>
                    </td>
                    <td  align="left">
                        <?php echo $vehicle->price, ' ', $vehicle->priceunit; ?>
                    </td>
                </tr>
                        <?php
                        }
                        $price_type[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                        $price_type1 = explode(',', _VEHICLE_MANAGER_OPTION_PRICE_TYPE);
                        $i = 1;
                        foreach ($price_type1 as $price_type2) {
                            $price_type[$i] = $price_type2;
                            $i++;
                        }
                        if ($vehicle->price_type != 0)
                        {
                            ?>
                <tr class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_PRICE_TYPE; ?>
                    </td>
                    <td align="left">
                        <?php echo $price_type[$vehicle->price_type]; ?>
                    </td>
                </tr>
        <?php } ?>

        <?php
        global $my, $acl, $Itemid;

        $i = checkAccess_VM($vehiclemanager_configuration ['contacts']['registrationlevel'], 'RECURSE', userGID_VM($my->id), $acl);
        if (($GLOBALS['contacts_show']) && $i && trim($vehicle->contacts))
        {
            ?>
                <tr class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_CONTACTS; ?>
                    </td>
                    <td align="left">
                <?php echo $vehicle->contacts; ?>
                    </td>
                </tr>
        <?php } ?>

        <?php
        $num = 0;
        if ($vehicle->listing_type == 1)
        {

            $database = JFactory::getDBO();
            $select = "SELECT rent_from , rent_until FROM #__vehiclemanager_rent AS a " .
                    "WHERE fk_vehicleid=" . $vehicle->id . " AND rent_return IS NULL";
            $database->setQuery($select);
            $rents = $database->loadObjectList();
            $num = count($rents);
            if ($num > 0)
            {
                ?>

                    <tr class="vmcolor">
                        <td class="first_td">
                            <?php echo _VEHICLE_MANAGER_LABEL_RENT_FROM_UNTIL; ?>:
                        </td>
                    </tr>

                    <?php
                    for ($e = 0, $m = count($rents); $e < $m; $e++) {
                        print(" <tr class=\"vmcolor\"><td align=\"left\">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td><td> ");
                        $date = data_transform_vm($rents[$e]->rent_from) . "  =>    " . data_transform_vm($rents[$e]->rent_until);
                        print_r($date);
                        print(" </td></tr>");
                    }
                }
            }    //end if
            if ($params->get('show_edocsrequest') && $vehicle->edok_link != null)
            {
                $session = JFactory::getSession();
                $sid = $session->getId();
                $session->set("ssmid", $sid);
                setcookie('ssd', $sid, mktime() . time() + 60 * 60 * 24, "/");
                ?>
                <tr class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_EDOCUMENT; ?>
                    </td>
                    <td align="left">
                        <a href="<?php echo sefRelToAbs('index.php?option=com_vehiclemanager&amp;Itemid=' . $Itemid . '&amp;task=mdownload&amp;id=' . $vehicle->id); ?>" target="blank">
            <?php echo _VEHICLE_MANAGER_LABEL_EDOCUMENT_DOWNLOAD; ?>
                        </a>
                    </td>
                </tr>
            <?php
        }
        ?>          
        </table>

            <?php
            $tbl = ob_get_contents();
            ob_end_clean();
            require_once($mosConfig_absolute_path . "/components/com_vehiclemanager/tcpdf/config/lang/eng.php");
            require_once($mosConfig_absolute_path . "/components/com_vehiclemanager/tcpdf/tcpdf.php");

            $pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8', false);
            //$pdf->SetAuthor('');
            $pdf->SetTitle('Vehicle manager');
            $pdf->SetFont('freesans', 'B', 20);
            $pdf->AddPage();
            //$pdf->Write(0, 'Vehicle manager', '', 0, 'L', true, 0, false, false, 0);
            $pdf->SetFont('freesans', '', 10);
            $pdf->writeHTML($tbl, true, false, false, false, '');
            $pdf->Output('Vehicle_manager.pdf', 'I');
            exit;
        }

        static function displayVehMainprint(& $vehicle, & $tabclass, & $params, & $currentcat, & $rating, & $vehicle_photos)
        {
            global $hide_js, $mainframe, $Itemid, $vehiclemanager_configuration, $mosConfig_live_site, $mosConfig_absolute_path, $my;
            JPluginHelper::importPlugin('content');
            $dispatcher = JDispatcher::getInstance();
            ?>  
        <table class="basictable_10" align="center">
            <tr  class="vmcolor">
                <td colspan="2" align="center" class="title_td">
                    <?php echo $vehicle->vtitle; ?>
                </td>
                <td>
                    <a href="#" onclick="window.print();return false;"><img src="<?php echo $mosConfig_live_site; ?>/components/com_vehiclemanager/images/printButton.png" alt="Print" ></a>
                </td>

            </tr>
            <tr>
                <td nowrap="nowrap" align="center" colspan="2">
                    <div class="img1">
        <?php
        //for local images
        $imageURL = urlencode($vehicle->image_link);
        if ($imageURL != '')
        {
            echo '<img src="' . $mosConfig_live_site .
            '/components/com_vehiclemanager/photos/' .
            $imageURL .
            '" height="' . $vehiclemanager_configuration['fotomain']['high'] .
             '"  >';
        } else
        {
            echo '<img src="' .
            $mosConfig_live_site . '/components/com_vehiclemanager/images/' .
            _VEHICLE_MANAGER_NO_PICTURE_BIG .
            '" height="' . $vehiclemanager_configuration['fotomain']['high'] . '"  >';
        }
        ?>
	</div>

             </td>
            </tr>

            <?php if ($vehicle->maker != '')
            { ?>
                <tr  class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_MAKER; ?>
                    </td>
                    <td  align="left" class="last_td">
                         <?php echo $vehicle->maker; ?>
                    </td>
                </tr>
            <?php } if ($vehicle->vmodel !== 0 && trim($vehicle->vmodel) !== "")
            { ?>
                <tr  class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_MODEL; ?>
                    </td>
                    <td  align="left">
                         <?php echo $vehicle->vmodel; ?>
                    </td>
                </tr>
        <?php
        }
        $vtype[0] = _VEHICLE_MANAGER_OPTION_SELECT;
        $vtype1 = explode(',', _VEHICLE_MANAGER_OPTION_VEHICLE_TYPE);
        $i = 1;
        foreach ($vtype1 as $vtype2) {
            $vtype[$i] = $vtype2;
            $i++;
        }
        if ($vehicle->vtype != 0)
        {
            ?>
                <tr  class="vmcolor" >
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_VEHICLE_TYPE; ?>
                    </td>
                    <td  align="left">
                        <?php echo $vtype[$vehicle->vtype]; ?>
                    </td>
                </tr>
        <?php } if (trim($vehicle->description))
        { ?>
                <tr  class="vmcolor" class="first_td" >
                    <td valign="top" class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_COMMENT; ?>
                    </td>
                    <td  align="justify">
                        <?php
            positions_vm($vehicle->description);
            ?>
                    </td>
                </tr>
        <?php } if ($vehicle->year != 0)
        { ?>
                <tr  class="vmcolor" >
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_ISSUE_YEAR; ?>
                    </td>
                    <td  align="left">
                        <?php echo $vehicle->year; ?>
                    </td>
                </tr>
        <?php
        }
        $vcondition[0] = _VEHICLE_MANAGER_OPTION_SELECT;
        $vcondition1 = explode(',', _VEHICLE_MANAGER_OPTION_VEHICLE_CONDITION);
        $i = 1;
        foreach ($vcondition1 as $vcondition2) {
            $vcondition[$i] = $vcondition2;
            $i++;
        }
        if ($vehicle->vcondition != 0)
        {
            ?>
                <tr  class="vmcolor" >
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_CONDITION_STATUS; ?>
                    </td>
                    <td align="left">
                        <?php echo $vcondition[$vehicle->vcondition]; ?>
                    </td>
                </tr>
        <?php } if (trim($vehicle->mileage))
        { ?>
                <tr  class="vmcolor" >
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_MILEAGE; ?>
                    </td>
                    <td  align="left">
                        <?php echo $vehicle->mileage; ?>
                    </td>
                </tr>
        <?php } if (trim($vehicle->vlocation))
        { ?>

                <tr class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_ADDRESS; ?>
                    </td>
                    <td  align="left">
                        <?php echo $vehicle->vlocation; ?>
                    </td>
                </tr>
                <?php } if ($vehiclemanager_configuration['owner']['show'] && $vehicle->ownername != '' && $vehicle->owneremail != '')
                {
                    ?>
                <tr class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_OWNER; ?>
                    </td>
                    <td  align="left">
                        <?php echo $vehicle->ownername, ', ', $vehicle->owneremail; ?>
                        
                    </td>
                </tr>
        <?php
        }
        $listing_type[0] = _VEHICLE_MANAGER_OPTION_SELECT;
        $listing_type[1] = _VEHICLE_MANAGER_OPTION_FOR_RENT;
        $listing_type[2] = _VEHICLE_MANAGER_OPTION_FOR_SALE;
        if ($vehicle->listing_type != 0)
        {
            ?>
                <tr class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_LISTING_TYPE; ?>
                    </td>
                    <td align="left">
                        <?php echo $listing_type[$vehicle->listing_type]; ?>
                    </td>
                </tr>
                            <?php
                            }
                            $listing_status[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                            $listing_status1 = explode(',', _VEHICLE_MANAGER_OPTION_LISTING_STATUS);
                            $i = 1;
                            foreach ($listing_status1 as $listing_status2) {
                                $listing_status[$i] = $listing_status2;
                                $i++;
                            }
                            if ($vehicle->listing_status != 0)
                            {
                                ?>
                <tr class="vmcolor">
                    <td nclass="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_LISTING_STATUS; ?>
                    </td>
                    <td align="left">
                        <?php echo $listing_status[$vehicle->listing_status]; ?>
                    </td>
                </tr>
                            <?php } if (($vehicle->price) > 0 && $params->get('show_pricerequest') )
                            { ?>
                <tr class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_PRICE; ?>
                    </td>
                    <td  align="left">
                        <?php echo $vehicle->price, ' ', $vehicle->priceunit; ?>
                    </td>
                </tr>

                            <?php
                            }
                            $price_type[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                            $price_type1 = explode(',', _VEHICLE_MANAGER_OPTION_PRICE_TYPE);
                            $i = 1;
                            foreach ($price_type1 as $price_type2) {
                                $price_type[$i] = $price_type2;
                                $i++;
                            }
                            if ($vehicle->price_type != 0)
                            {
                                ?>
                <tr class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_PRICE_TYPE; ?>
                    </td>
                    <td align="left">
                        <?php echo $price_type[$vehicle->price_type]; ?>
                    </td>
                </tr>
                            <?php
                            }
                            global $my, $acl, $Itemid;

                            $i = checkAccess_VM($vehiclemanager_configuration ['contacts']['registrationlevel'], 'RECURSE', userGID_VM($my->id), $acl);
                            if (($GLOBALS['contacts_show']) && $i && trim($vehicle->contacts))
                            {
                                ?>
                <tr class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_CONTACTS; ?>
                    </td>
                    <td align="left"><?php echo $vehicle->contacts; ?>
                    </td>
                </tr>
        <?php } ?>

        <?php
        $num = 0;
        if ($vehicle->listing_type == 1)
        {

            $database = JFactory::getDBO();
            $select = "SELECT rent_from , rent_until FROM #__vehiclemanager_rent AS a " .
                    "WHERE fk_vehicleid=" . $vehicle->id . " AND rent_return IS NULL";
            $database->setQuery($select);
            $rents = $database->loadObjectList();
            $num = count($rents);
            if ($num > 0)
            {
                ?>

                    <tr class="vmcolor">
                        <td class="first_td">
                            <?php echo _VEHICLE_MANAGER_LABEL_RENT_FROM_UNTIL; ?>:
                        </td>
                        <td></td>
                    </tr>

                                    <?php
                                    for ($e = 0, $m = count($rents); $e < $m; $e++) {
                                        print(" <tr class=\"vmcolor\"><td align=\"left\">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td><td> ");
                                        $date = data_transform_vm($rents[$e]->rent_from) . "  =>    " . data_transform_vm($rents[$e]->rent_until);
                                        print_r($date);
                                        print(" </td></tr>");
                                    }
                                }
                            }    //end if
                            if ($params->get('show_edocsrequest') && $vehicle->edok_link != null)
                            {
                                $session = JFactory::getSession();
                                $sid = $session->getId();
                                $session->set("ssmid", $sid);
                                setcookie('ssd', $sid, mktime() . time() + 60 * 60 * 24, "/");
                                ?>
                <tr class="vmcolor">
                    <td class="first_td">
                        <?php echo _VEHICLE_MANAGER_LABEL_EDOCUMENT; ?>
                    </td>
                    <td align="left">
                        <a href="<?php echo sefRelToAbs('index.php?option=com_vehiclemanager&amp;Itemid=' . $Itemid . '&amp;task=mdownload&amp;id=' . $vehicle->id); ?>" target="blank">
            <?php echo _VEHICLE_MANAGER_LABEL_EDOCUMENT_DOWNLOAD; ?>
                        </a>
                    </td>
                </tr>
                        <?php
                    }
                    ?>          
        </table>

                    <?php
                    exit;
                }

                /**
                 * Display links to categories
                 */
                static function showCategories(&$params, &$categories, &$catid, &$tabclass, &$currentcat, $layout)
                {
                    global $mosConfig_absolute_path;
                    $type = 'all_categories';
                    require getLayoutPath::getLayoutPathCom('com_vehiclemanager',$type, $layout);

                }

//***************   begin  for "add button"   ******************************************


                static function showAddButton()
                {
                    global $mosConfig_live_site, $Itemid;
                    ?>
        <form action="<?php echo sefRelToAbs("index.php?option=com_vehiclemanager&task=show_add_vehicle&Itemid=$Itemid");
                    ?>" method="post" name="show_add" enctype="multipart/form-data">
            <input  type="submit" name="submit" value="<?php echo _VEHICLE_MANAGER_LABEL_ADD_VEHICLE; ?>" class="button"/>
        </form>
        <?php
    }

//*********************************   end for "add button"   ******************************************
//*********************************   begin  for "my cars"   ******************************************


    static function showButtonMyCars()
    {
        global $mosConfig_live_site, $Itemid, $my;
        ?>
        <form action="<?php echo sefRelToAbs("index.php?option=com_vehiclemanager&task=show_my_cars&Itemid=$Itemid&name=$my->name");
        ?>" method="post" name="show_my_cars">
            <input  type="submit" name="submit" value="<?php echo _VEHICLE_MANAGER_LABEL_SHOW_MY_CARS; ?>"class="button"/>
        </form>
        <?php
    }

//*********************************   end for "my cars"   ******************************************
//*********************************   begin  for " owners list"   ******************************************


    static function showOwnersButton()
    {
        global $mosConfig_live_site, $Itemid;
        ?>
        <form action="<?php echo sefRelToAbs("index.php?option=com_vehiclemanager&" . "task=owners_list&Itemid=$Itemid");
            ?>" method="post" name="ownerslist">
            <input  type="submit" name="submit" value="<?php echo _VEHICLE_MANAGER_LABEL_BUTTON_OWNERSLIST; ?>"class="button"/>
        </form>
                    <?php
                }

//*********************************   end for "ownerslist"   ******************************************/*
//*********************************   begin add for suggestion   ******************************************

                static function showSuggestion(& $params, $where, $catid, $Itemid)
                {
                    global $mosConfig_live_site, $my, $Itemid;
                    ?>
        <script language="javascript" type="text/javascript">
            function vm_suggestion_submitbutton() {
                var form = document.suggestion;

                if (form.title.value == "") {
                    alert( "<?php echo _VEHICLE_MANAGER_INFOTEXT_JS_SUGGESTION_TITEL; ?>" );
                } else if (form.comment == "") {
                    alert( "<?php echo _VEHICLE_MANAGER_INFOTEXT_JS_SUGGESTION_COMMENT; ?>" );
                } else { form.submit(); }
            }
            function vm_hidden_suggestion_on(is_hide) {
                var el  = document.getElementById('hidden_suggestion');
                var el2 = document.getElementById('show_suggestion');
                if( is_hide ) {
                    el.style.display = 'none';
                    el2.style.display = 'block';
                } else {
                    el.style.display = 'block';
                    el2.style.display = 'none';
                }
            }
        </script>

        <div id="hidden_suggestion" style="<?php if (isset($_REQUEST['err_msg']))
                {
                    echo 'display:none';
                } ?>">
            <input type="submit" name="submit" value="<?php echo _VEHICLE_MANAGER_LABEL_BUTTON_ADD_SUGGESTION; ?>" class="button" onclick="javascript:vm_hidden_suggestion_on(true)"/>
        </div>

        <div id="show_suggestion" style="<?php if (isset($_REQUEST['err_msg']))
        {
            echo 'display:block';
        } else
        {
            echo 'display:none';
        } ?>" >

            <div class="componentheading<?php echo $params->get('pageclass_sfx'); ?>">
        <h3><?php echo _VEHICLE_MANAGER_LABEL_SUGGESTION; ?></h3>
            </div>

            <form action="<?php echo sefRelToAbs("index.php?option=com_vehiclemanager&" . "task=suggestion&Itemid=$Itemid");
        ?>" method="post" name="suggestion">

                <div class="basictable_11 basictable">
                    <div class="row_01">
                        <span  class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_SUGGESTION_TITLE; ?></span>
                    </div>
                    <div class="row_02">
                        <span clsaa="col_01">
                            <input class="inputbox" type="text" name="title" maxlength="75" size="50" value="<?php if (isset($_REQUEST["title"]))
        {
            echo $_REQUEST["title"];
        } ?>" />
                        </span>
                    </div>
                    <div class="row_03">
                        <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_SUGGESTION_COMMENT; ?></span>
                    </div>
                    <div class="row_04">
                        <span class="col_01">
                        <!--<textarea align= "top" name="comment" id="comment" cols="60" rows="10" style="width:400;height:100;" value="<?php if (isset($_REQUEST["comment"]))
        {
            echo $_REQUEST["comment"];
        } ?>"/></textarea>-->
        <?php
        $comm_val = "";
        if (isset($_REQUEST["comment"]))
        {
            $comm_val = $_REQUEST["comment"];
        }
       
       // editorArea('editor1', $comm_val, 'comment', '410', '200', '60', '10');     //nik ordaSoft
        ?> 
        <textarea name ="comment"><?php echo $comm_val ?></textarea>
                        </span>
                    </div>
                    <!--*****************************   begin add antispam in suggestion   ************************-->
        <?php
        $user_guest = userGID_VM($my->id);
        if (($user_guest == 0) || ($user_guest < 0))
        {
            ?>
                        <div class="row_05">
                            <span class="col_01">
                                <!--********************************   begin insert image   ***********************************-->
            <?php
            // begin create kod
            $st = "      ";
            $algoritm = mt_rand(1, 2);
            switch ($algoritm) {
                case 1:
                    for ($j = 0; $j < 6; $j+=2) {
                        $st = substr_replace($st, chr(mt_rand(97, 122)), $j, 1); //abc
                        $st = substr_replace($st, chr(mt_rand(50, 57)), $j + 1, 1); //23456789
                    }
                    break;
                case 2:
                    for ($j = 0; $j < 6; $j+=2) {
                        $st = substr_replace($st, chr(mt_rand(50, 57)), $j, 1); //23456789
                        $st = substr_replace($st, chr(mt_rand(97, 122)), $j + 1, 1); //abc
                    }
                    break;
            }

            //**************   begin search in $st simbol 'o, l, i, j, t, f'   ********************************
            $st_validator = "olijtf";
            for ($j = 0; $j < 6; $j++) {
                for ($i = 0; $i < strlen($st_validator); $i++) {
                    if ($st[$j] == $st_validator[$i])
                    {
                        $st[$j] = chr(mt_rand(117, 122)); //uvwxyz
                    }
                }
            }

            //**************   end search in $st simbol 'o, l, i, j, t, f'   **********************************
            $session = JFactory::getSession();
            $session->set('captcha_keystring', $st);

            if (isset($_REQUEST['error']) && $_REQUEST['error'] != "")
                echo "<font style='color:red'>" . $_REQUEST['error'] . "</font><br />";
            $name_user = "";
            if (isset($_REQUEST['name_user']))
                $name_user = $_REQUEST['name_user'];

            if (isset($_REQUEST["err_msg"]))
                echo "<script> alert('Error: " . $_REQUEST["err_msg"] . "'); </script>\n";

           echo "<br /><img src='" . JRoute::_( "index.php?option=com_vehiclemanager&amp;task=secret_image&Itemid=$Itemid")."' alt='CAPTCHA_picture'/><br/>";
            ?>
                                <!--****************************   end insert image   ***********************************-->
                            </span>
                        </div>
                        <div class="row_06">
                            <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_REVIEW_KEYGUEST; ?></span>
                        </div>
                        <div class="row_07">
                            <span class="col_01"><input class="inputbox" type="text" name="keyguest" size="6" maxlength="6" /></span>
                        </div>

        <?php } ?>
                    <!--****************************   end add antispam in suggestion   ************************-->
                    <div class="row_08">
                        <span class="col_1">
        <?php
        // displays save button
        ?>
                            <input class="button" type="button" value="<?php echo _VEHICLE_MANAGER_LABEL_BUTTON_SAVE; ?>" onclick="vm_suggestion_submitbutton()"/>
                        </span>
                        <span class="col_2">
                            <input type="hidden" name="where" value="<?php echo $where; ?>" />
                            <input type="hidden" name="catid" value="<?php echo $catid; ?>" />
                            <input type="hidden" name="Itemid" value="<?php echo $Itemid; ?>" />
                            <input type="hidden" name="nado_back" value="0" />
                        </span>
                        <span class="col_3">
        <?php
        // displays hide suggestion button
        ?>
                            <input class="button" type="button" value="<?php echo _VEHICLE_MANAGER_LABEL_BUTTON_SUGGEST_HIDE; ?>" onclick="javascript:vm_hidden_suggestion_on(false)"/>
                        </span>
                    </div>
                </div>
            </form>
        </div>
<?php /* <!-- end <div id="show_suggestion"... --> */ ?>

        <?php
    }

//end showSuggestion()
//********************************   end add for suggestion   **************************************

    static function listCategories(&$params, $cat_all, $catid, $tabclass, $currentcat)
    {
        global $Itemid, $mosConfig_live_site;
        ?>
        <?php positions_vm($params->get('allcategories04')); ?>
        <div class="basictable_12 basictable">
            <div class="row_01">
                <span class=" col_01 sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>"><?php echo _VEHICLE_MANAGER_LABEL_CATEGORY; ?></span>
		      <?php if ($params->get('rss_show')): ?>
                    <span class=" col_02 sectiontableheader">
                        <a href="<?php echo $mosConfig_live_site; ?>/index.php?option=com_vehiclemanager&task=show_rss_categories&Itemid=<?php echo $Itemid; ?>">
                            <img src="./components/com_vehiclemanager/images/rss.png" alt="All categories RSS" align="right" title="All categories RSS"/>
                        </a>
                    </span>
			<?php endif; ?>
                <span class="col_003 sectiontableheader<?php echo $params->get('pageclass_sfx'); ?>"><?php echo _VEHICLE_MANAGER_LABEL_VEHICLES; ?> </span>

            </div>
            <div class="row_02">
                <span class="col_01">
        <?php positions_vm($params->get('allcategories05')); ?>

        <?php
        HTML_vehiclemanager::showInsertSubCategory($catid, $cat_all, $params, $tabclass, $Itemid, 0);
        ?>
                </span>
            </div>
        </div>
        <?php positions_vm($params->get('allcategories06')); ?>

                <?php
            }

            /*
             * function for show subcategory
             */

            static function showInsertSubCategory($id, $cat_all, $params, $tabclass, $Itemid, $deep)
            {
                global $g_item_count, $vehiclemanager_configuration, $mosConfig_live_site;
                $deep++;
                for ($i = 0; $i < count($cat_all); $i++) {
                    if (($id == $cat_all[$i]->parent_id) && ($cat_all[$i]->display == 1))
                    {
                        $g_item_count++;

                        $link = 'index.php?option=com_vehiclemanager&amp;task=alone_category&amp;catid=' . $cat_all[$i]->id . '&amp;Itemid=' . $Itemid;
                        ?>
                <div class="basictable_13 basictable">
                    <div class="row_01 <?php echo $tabclass[($g_item_count % 2)]; ?>">
                        <span class="col_01">
                <?php
                if ($deep != 1)
                {
                    $jj = $deep;
                    while ($jj--) {
                        echo "&nbsp;&nbsp;";
                    }
                    echo "&nbsp;|_";
                }
                ?>
                        </span>
                        <span class="col_01">
                <?php if (($params->get('show_cat_pic')) && ($cat_all[$i]->image != ""))
                { ?>
                                <img src="./images/stories/<?php echo $cat_all[$i]->image; ?>" alt="picture for subcategory" height="48" width="48" />&nbsp;
                    <?php } else
                {
                    ?>
                                <a <?php echo "href=" . sefRelToAbs($link); ?> class="category<?php echo $params->get('pageclass_sfx'); ?>" style="text-decoration: none"><img src="./components/com_vehiclemanager/images/folder.png" alt="picture for subcategory" height="48" width="48" /></a>&nbsp;
                <?php } ?>
                        </span>
                        <span class="col_02">
                <?php
                $count_veh = $cat_all[$i]->vehicles * 1;
                //if ($count_veh != 0)
                //{
                    $disable_link = "";
                    if ($cat_all[$i]->published != 1)
                        $disable_link = "href='#' onClick = 'return false'";
                    else
                        $disable_link = "href='" . sefRelToAbs($link) . "'";
                    ?>            
                                <a <?php echo $disable_link; ?> class="category<?php echo $params->get('pageclass_sfx'); ?>">
                    <?php
                //} else
                //{
                //    echo "";
                //}
                ?>                  
                <?php echo $cat_all[$i]->title; ?>
                            </a>
                        </span>
                        <span class="col_03"><?php if ($cat_all[$i]->vehicles == '') echo "0";else echo $cat_all[$i]->vehicles; ?></span>
                    <?php if ($params->get('rss_show')): ?>
                            <span class="col_04">
                                <a href="<?php echo $mosConfig_live_site; ?>/index.php?option=com_vehiclemanager&task=show_rss_categories&catid=<?php echo $cat_all[$i]->id; ?>&Itemid=<?php echo $Itemid; ?>">
                                    <img src="./components/com_vehiclemanager/images/rss2.png" alt="Category RSS" align="right" title="Category RSS"/>
                                </a>
                            </span>
                    <?php endif; ?>
                    </div>
                </div>
                    <?php
                    if ($GLOBALS['subcategory_show'])
                        HTML_vehiclemanager::showInsertSubCategory($cat_all[$i]->id, $cat_all, $params, $tabclass, $Itemid, $deep);
                }//end if ($id == $cat_all[$i]->parent_id)
            }//end for(...)	
        }

//end function showInsertSubCategory($id, $cat_all)

    static function showSearchVehicles($params, $currentcat, $clist, $option, $years, &$arraymakersmodels, $layout) {
        global $mosConfig_absolute_path;
        // $layout = $params->get('showsearchvehiclelayout', 'default'); // need when not realize layout select from admin
        $type = 'show_search_vehicle';
        require getLayoutPath::getLayoutPathCom('com_vehiclemanager',$type, $layout);
        
    }

        static function showRssCategories(&$categories, &$catid)
        {
            global $hide_js, $Itemid, $acl, $mosConfig_live_site, $my;
            global $limit, $total, $limitstart, $paginations, $mainframe, $vehiclemanager_configuration;
          //  header("Content-Type: application/rss+xml; charset=utf-8");
          //  exit();
            echo '<?xml version="1.0" encoding="UTF-8"?>' . "\n";
            echo '<!-- generator="AdvertisementBoard" -->' . "\n";
            echo '<?xml-stylesheet href="" type="text/css"?>' . "\n";
            echo '<?xml-stylesheet href="" type="text/xsl"?>' . "\n";
            echo '<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">' . "\n";
            echo "    <channel>\n";

            if (!$categories)
            {
                echo "<title>" . $mosConfig_live_site . " - " . _VEHICLE_MANAGER_TITLE . "</title>\n";
                echo "<description>" . _VEHICLE_MANAGER_TITLE . " - " . _VEHICLE_MANAGER_ERROR_HAVENOT_VEHICLES_RSS . "</description>\n";
            } else
            {
                if (!$catid)
                {
                    echo "<title>" . $mosConfig_live_site . " - " . _VEHICLE_MANAGER_TITLE . " - ALL</title>\n";
                    echo "<description>" . _VEHICLE_MANAGER_TITLE . "  " . $categories[0]->cdesc . "</description>\n";
                } else
                {
                    echo "<title>" . $mosConfig_live_site . " - " . _VEHICLE_MANAGER_TITLE . " - " . $categories[0]->ctitle . "</title>\n";
                    echo "<description>" . _VEHICLE_MANAGER_TITLE . "  " . $categories[0]->cdesc . "</description>\n";
                }
            }
            echo "<link>" . $mosConfig_live_site . "</link>\n";
            echo "<lastBuildDate>" . date("Y-m-d H:i:s") . "</lastBuildDate>\n";
            echo "<generator>" . _VEHICLE_MANAGER_TITLE . "</generator>\n";
            for ($i = 0; $i < count($categories); $i++) {
                //Select list for vehicle type
                $vtype[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                $vtype1 = explode(',', _VEHICLE_MANAGER_OPTION_VEHICLE_TYPE);
                $j = 1;
                foreach ($vtype1 as $vtype2) {
                    $vtype[$j] = $vtype2;
                    $j++;
                }
                //Select list for listing type
                $listing_type[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                $listing_type[1] = _VEHICLE_MANAGER_OPTION_FOR_RENT;
                $listing_type[2] = _VEHICLE_MANAGER_OPTION_FOR_SALE;
                //Select list for price type
                $price_type[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                $price_type1 = explode(',', _VEHICLE_MANAGER_OPTION_PRICE_TYPE);
                $j = 1;
                foreach ($price_type1 as $price_type2) {
                    $price_type[$j] = $price_type2;
                    $j++;
                }
                //Select list for condition
                $vcondition[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                $vcondition1 = explode(',', _VEHICLE_MANAGER_OPTION_VEHICLE_CONDITION);
                $j = 1;
                foreach ($vcondition1 as $vcondition2) {
                    $vcondition[$j] = $vcondition2;
                    $j++;
                }
                //Select list for listing status type
                $listing_status_type[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                $listing_status_type1 = explode(',', _VEHICLE_MANAGER_OPTION_LISTING_STATUS);
                $j = 1;
                foreach ($listing_status_type1 as $listing_status_type2) {
                    $listing_status_type[$j] = $listing_status_type2;
                    $j++;
                }
                //Select list for transmission
                $transmission[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                $transmission1 = explode(',', _VEHICLE_MANAGER_OPTION_TRANSMISSION);
                $j = 1;
                foreach ($transmission1 as $transmission2) {
                    $transmission[$j] = $transmission2;
                    $j++;
                }
                //Select list for drive type
                $drive_type[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                $drive_type1 = explode(',', _VEHICLE_MANAGER_OPTION_DRIVE_TYPE);
                $j = 1;
                foreach ($drive_type1 as $drive_type2) {
                    $drive_type[$j] = $drive_type2;
                    $j++;
                }
                //Select list for number of cylinders
                $cylinder[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                $cylinder1 = explode(',', _VEHICLE_MANAGER_OPTION_NUMBER_OF_CYLINDERS);
                $j = 1;
                foreach ($cylinder1 as $cylinder2) {
                    $cylinder[$j] = $cylinder2;
                    $j++;
                }
                //Select list for number of speeds
                $num_speed[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                $num_speed1 = explode(',', _VEHICLE_MANAGER_OPTION_NUMBER_OF_SPEEDS);
                $j = 1;
                foreach ($num_speed1 as $num_speed2) {
                    $num_speed[$j] = $num_speed2;
                    $j++;
                }
                //Select list for fuel type
                $fuel_type[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                $fuel_type1 = explode(',', _VEHICLE_MANAGER_OPTION_NUMBER_OF_SPEEDS);
                $j = 1;
                foreach ($fuel_type1 as $fuel_type2) {
                    $fuel_type[$j] = $fuel_type2;
                    $j++;
                }
                //Select list for number of doors
                $doors[0] = _VEHICLE_MANAGER_OPTION_SELECT;
                $doors1 = explode(',', _VEHICLE_MANAGER_OPTION_NUMBER_OF_DOORS);
                $j = 1;
                foreach ($doors1 as $doors2) {
                    $doors[$j] = $doors2;
                    $j++;
                }

                $category = $categories[$i];
                echo "<item>";
                echo "<title>" . $category->vtitle . "</title>" . "\n";
                echo "<link>" . $mosConfig_live_site . "/index.php?option=com_vehiclemanager&amp;Itemid=" .
                $Itemid . "&amp;task=view_vehicle&amp;id=" . $category->vid . "&amp;catid=" . $category->cid . "</link>" . "\n";
                echo "<description><![CDATA[";
                if ($category->image_link)
                {
                    $imagebase = $category->image_link;
                    $imagemain = explode('.', $imagebase);
                    $image = $mosConfig_live_site . '/components/com_vehiclemanager/photos/' . $imagemain[0] . '_gallery.' . $imagemain[1];
                    echo '<br /><img src="' . $image . '" />';
                }
                if ($category->rent_from != '')
                {
                    echo "<br><lend_from>" . "<b>Lend from: </b>" . $category->rent_from . "</lend_from>";
                    echo "<br><lend_until>" . "<b>Lend until: </b>" . $category->rent_until . "</lend_until>";
                    echo "<br><lend_to>" . "<b>Lend to: </b>" . $category->user_name . "</lend_to>";
                }
                if ($category->maker != 0)
                    echo "<br><maker><b>" . _VEHICLE_MANAGER_LABEL_MAKER . ": </b>" . $category->maker . "</maker>";
                if ($category->vmodel !== 0 && trim($category->vmodel) !== "")
                    echo "<br><model><b>" . _VEHICLE_MANAGER_LABEL_MODEL . ": </b>" . $category->vmodel . "</model>";
                if ($category->vtype != 0)
                    echo "<br><vtype><b>" . _VEHICLE_MANAGER_LABEL_VEHICLE_TYPE . ": </b>" . $vtype[$category->vtype] . "</vtype>";
                if ($category->listing_type != 0)
                    echo "<br><ltype><b>" . _VEHICLE_MANAGER_LABEL_LISTING_TYPE . ": </b>" . $listing_type[$category->listing_type] . "</ltype>";
                if ($category->price > 0)
                    echo "<br><price><b>" . _VEHICLE_MANAGER_LABEL_PRICE . ": </b>" . $category->price . " " . $category->priceunit . "</price>";
                if ($category->price_type != 0)
                    echo "<br><price_type><b>" . _VEHICLE_MANAGER_LABEL_PRICE_TYPE . ": </b>" . $price_type[$category->price_type] . "</price_type>";
                if (trim($category->vlocation))
                    echo "<br><vlocation><b>" . _VEHICLE_MANAGER_LABEL_ADDRESS . ": </b>" . $category->vlocation . "</vlocation>";
                if ($vehiclemanager_configuration['owner']['show'])
                {
                    echo "<br><owner><b>" . _VEHICLE_MANAGER_LABEL_OWNER . ": </b>" . $category->ownername . "(" . $category->owneremail . ")</owner>";
                }
                if ($category->year > 0)
                    echo "<br><year><b>" . _VEHICLE_MANAGER_LABEL_ISSUE_YEAR . ": </b>" . $category->year . "</year>";
                if ($category->vcondition != 0)
                    echo "<br><vcondition><b>" . _VEHICLE_MANAGER_LABEL_CONDITION_STATUS . ": </b>" . $vcondition[$category->vcondition] . "</vcondition>";
                if (trim($category->mileage))
                    echo "<br><mileage><b>" . _VEHICLE_MANAGER_LABEL_MILEAGE . ": </b>" . $category->mileage . "</mileage>";
                if ($category->listing_status != 0)
                    echo "<br><listing_status><b>" . _VEHICLE_MANAGER_LABEL_LISTING_STATUS . ": </b>" . $listing_status_type[$category->listing_status] . "</listing_status>";
                if (trim($category->contacts))
                    echo "<br><contacts><b>" . _VEHICLE_MANAGER_LABEL_CONTACTS . ": </b>" . $category->contacts . "</contacts>";
                if (trim($category->engine))
                    echo "<br><engine><b>" . _VEHICLE_MANAGER_LABEL_ENGINE_TYPE . ": </b>" . $category->engine . "</engine>";
                if ($category->transmission != 0)
                    echo "<br><transmission><b>" . _VEHICLE_MANAGER_LABEL_TRANSMISSION_TYPE . ": </b>" . $transmission[$category->transmission] . "</transmission>";
                if ($category->drive_type != 0)
                    echo "<br><drive_type><b>" . _VEHICLE_MANAGER_LABEL_DRIVE_TYPE . ": </b>" . $drive_type[$category->drive_type] . "</drive_type>";
                if ($category->cylinder != 0)
                    echo "<br><cylinder><b>" . _VEHICLE_MANAGER_LABEL_NUMBER_CYLINDERS . ": </b>" . $cylinder[$category->cylinder] . "</cylinder>";
                if ($category->num_speed != 0)
                    echo "<br><num_speed><b>" . _VEHICLE_MANAGER_LABEL_NUMBER_SPEEDS . ": </b>" . $num_speed[$category->num_speed] . "</num_speed>";
                if ($category->fuel_type != 0)
                    echo "<br><fuel_type><b>" . _VEHICLE_MANAGER_LABEL_FUEL_TYPE . ": </b>" . $fuel_type[$category->fuel_type] . "</fuel_type>";
                if (trim($category->city_fuel_mpg))
                    echo "<br><city_fuel_mpg><b>" . _VEHICLE_MANAGER_LABEL_CITY_FUEL_MPG . ": </b>" . $category->city_fuel_mpg . "</city_fuel_mpg>";
                if (trim($category->highway_fuel_mpg))
                    echo "<br><highway_fuel_mpg><b>" . _VEHICLE_MANAGER_LABEL_HIGHWAY_FUEL_MPG . ": </b>" . $category->highway_fuel_mpg . "</cityhighway_fuel_mpg_fuel_mpg>";
                if (trim($category->wheelbase))
                    echo "<br><wheelbase><b>" . _VEHICLE_MANAGER_LABEL_WHEELBASE . ": </b>" . $category->wheelbase . "</wheelbase>";
                if (trim($category->wheeltype))
                    echo "<br><wheeltype><b>" . _VEHICLE_MANAGER_LABEL_WHEELTYPE . ": </b>" . $category->wheeltype . "</wheeltype>";
                if (trim($category->rear_axe_type))
                    echo "<br><rear_axe_type><b>" . _VEHICLE_MANAGER_LABEL_REARAXE_TYPE . ": </b>" . $category->rear_axe_type . "</rear_axe_type>";
                if (trim($category->brakes_type))
                    echo "<br><brakes_type><b>" . _VEHICLE_MANAGER_LABEL_BRAKES_TYPE . ": </b>" . $category->wheeltype . "</brakes_type>";
                if (trim($category->exterior_color))
                    echo "<br><exterior_color><b>" . _VEHICLE_MANAGER_LABEL_EXTERIOR_COLORS . ": </b>" . $category->exterior_color . "</exterior_color>";
                if ($category->doors != 0)
                    echo "<br><doors><b>" . _VEHICLE_MANAGER_LABEL_NUMBER_DOORS . ": </b>" . $doors[$category->doors] . "</doors>";
                if (trim($category->exterior_amenities))
                    echo "<br><exterior_amenities><b>" . _VEHICLE_MANAGER_LABEL_EXTERIOR_EXTRAS . ": </b>" . $category->exterior_amenities . "</exterior_amenities>";
                if (trim($category->interior_color))
                    echo "<br><interior_color><b>" . _VEHICLE_MANAGER_LABEL_INTERIOR_COLORS . ": </b>" . $category->interior_color . "</interior_color>";
                if (trim($category->seating))
                    echo "<br><seating><b>" . _VEHICLE_MANAGER_LABEL_NUMBER_SEATINGS . ": </b>" . $category->seating . "</seating>";
                if (trim($category->dashboard_options))
                    echo "<br><dashboard_options><b>" . _VEHICLE_MANAGER_LABEL_DASHBOARD_OPTIONS . ": </b>" . $category->dashboard_options . "</dashboard_options>";
                if (trim($category->interior_amenities))
                    echo "<br><interior_amenities><b>" . _VEHICLE_MANAGER_LABEL_INTERIOR_EXTRAS . ": </b>" . $category->interior_amenities . "</interior_amenities>";
                if (trim($category->safety_options))
                    echo "<br><safety_options><b>" . _VEHICLE_MANAGER_LABEL_SAFETY_OPTIONS . ": </b>" . $category->safety_options . "</safety_options>";
                if (trim($category->w_basic))
                    echo "<br><w_basic><b>" . _VEHICLE_MANAGER_LABEL_WARRANTY_BASIC . ": </b>" . $category->w_basic . "</w_basic>";
                if (trim($category->w_drivetrain))
                    echo "<br><w_drivetrain><b>" . _VEHICLE_MANAGER_LABEL_WARRANTY_DRIVETRAIN . ": </b>" . $category->w_drivetrain . "</w_drivetrain>";
                if (trim($category->w_corrosion))
                    echo "<br><w_corrosion><b>" . _VEHICLE_MANAGER_LABEL_WARRANTY_CORROSION . ": </b>" . $category->w_corrosion . "</w_corrosion>";
                if (trim($category->w_roadside_ass))
                    echo "<br><w_roadside_ass><b>" . _VEHICLE_MANAGER_LABEL_WARRANTY_ROADSIDE_ASSISTANCE . ": </b>" . $category->w_roadside_ass . "</w_roadside_ass>";
                echo "<br>" . $category->description;
                echo "]]></description>\n";
                echo "<pubDate>" . $category->date . "</pubDate>\n";
                echo "</item>\n";
            }
            ?>
        </channel>
        </rss>
        <?php
        exit;
    }

    static function showOwnersList(&$params, &$ownerslist, &$pageNav)
    {
        global $mosConfig_absolute_path;
        $layout = $params->get('ownerslistlayout', 'default');
        $type = 'owners_list';
        require getLayoutPath::getLayoutPathCom('com_vehiclemanager',$type, $layout);
        
    }

      static function showRentRequestThanks($params, $catid, $currentcat,$vehicle=NULL,$time_difference =NULL)
    {
        global $Itemid, $doc, $mosConfig_live_site, $hide_js, $option, $vehiclemanager_configuration;
        $doc->addStyleSheet($mosConfig_live_site . '/components/com_vehiclemanager/includes/vehiclemanager.css');
        ?>
        <div class="componentheading<?php echo $params->get('pageclass_sfx'); ?>">
            <?php echo $currentcat->header; ?>
        </div>

        <div class="table_save_add_vehicle basictable">
        <?php if ($currentcat->img != null)
        { ?>
           <div class="col_01"><img src="<?php echo $currentcat->img; ?>" alt="?" /></div>
            <?php
        }
        ?>
         <div class="col_02"><?php echo $currentcat->descrip; ?></div>
         
        <?php
        if($vehicle){
            if($time_difference){
                $amount = $time_difference[0]; // price
                $currency_code = $time_difference[1] ; // priceunit  
            }
            else{
                $amount= $vehicle->price;
                $currency_code = $vehicle->priceunit;
            }
        
        $amountLine='';
        $amountLine .= '<input type="hidden" name="amount" value="'.$amount.'" />'."\n"; 
        }

        ?>
		


        <?php

        
        if ($option != "com_vehiclemanager")
        {
            $path = $mosConfig_live_site . "/index.php?option=" . $option . "&amp;task=my_vehicles&amp;is_show_data=1&amp;Itemid=" . $_REQUEST['Itemid'] . "#tabs-2";
            $path_other = $mosConfig_live_site . "/index.php?option=" . $option . "&amp;task=view_user_vehicles&amp;is_show_data=1&amp;Itemid=" . $_REQUEST['Itemid'];
        } else
        {
            $path = $mosConfig_live_site . "/index.php?option=com_vehiclemanager&amp;task=my_vehicles&amp;Itemid=" . $_REQUEST['Itemid'];
            $path_other = $mosConfig_live_site . "/index.php?option=com_vehiclemanager&amp;task=showCategory&amp;catid=" . $catid . "&amp;Itemid=" . $_REQUEST['Itemid'];
        }
        ?>

      
            <div class="basictable_15 basictable">
                <span>
                        
                        <?php 
                        
                        if($vehiclemanager_configuration['paypal_buy_status']['show'] !='0') {
                            // $vehiclemanager_configuration['paypal_buy']['registrationlevel']='7';)
                            //if($amount and $currency_code ){if (checkAccess_VM($GLOBALS['buyingrequest_email_registrationlevel'], 'RECURSE', userGID_VM($my->id), $acl))
                            if(isset($amount) && isset($currency_code)) {
                                echo '<br/> '._VEHICLE_MANAGER_TOTAL_PRICE .$amount.' '.$currency_code;
                                echo '<br/> '._VEHICLE_MANAGER_RENT_CAR_NOW_BY_PAYPAL.' <br/><br/>'; 
                                $vehicle1 = $vehicle;
                                $vehicle1->price = $amount;
				$vehicle1->priceunit= $currency_code;
                                HTML_vehiclemanager::getSaleForm($vehicle1, $vehiclemanager_configuration);
                            }
                        }
                        ?>
                            <input class="button" type="submit" ONCLICK="window.location.href='<?php
                            $user = JFactory::getUser(); 
                            if(!$user->guest) {
                                if ($catid == 0) {
                                    echo $path;
                                } else if ($_REQUEST['where'] == 2) {
                                    echo sefRelToAbs($path_other);
                                } else {
                                    echo sefRelToAbs($path);
                                } 
                            } else {
                                echo sefRelToAbs($mosConfig_live_site . "/index.php?option=" . $option . "&amp;Itemid=" . $_REQUEST['Itemid']);
                            }?>'" 
                            value="OK">

                    </span>
                </div>
            </div>

            <div class="basictable_16 basictable">
                    <?php mosHTML::BackButton($params, $hide_js); ?>
            </div>

        <?php

    }
    
//********************************************************************************************************
//********************************************************************************************************
  
    
    static function getSaleForm($vehicle,$vehiclemanager_configuration){
        if($vehicle){
            getHTMLPayPal($vehicle,$vehiclemanager_configuration['plugin_name_select']);
        }
    }

    
//********************************************************************************************************    
//********************************************************************************************************    

    static function showTabs(&$params, &$userid, &$username, &$comprofiler, &$option)
    { 
        global $Itemid;
		//$option = 'com_vehiclemanager';
        ?>
        <div class='button_margin'>
                        <?php
                        if ($params->get('show_cb'))
                        {
                            if ($params->get('show_cb_registrationlevel'))
                            {
                               // if ($option != "com_vehiclemanager") {
                                    ?>
                        <span class='vehicle_button'>
                            <a href="<?php echo JRoute::_('index.php?option=' . $option . '&task=my_vehicles&tab=getmyvehiclesTab&name=' . $username . '&Itemid=' . $Itemid . '&is_show_data=1'); ?>"><?php echo JText::_('show my cars'); ?></a>
                        </span>
                                    <?php
                              //  }
                            }
                        }

                        if ($params->get('show_edit'))
                        {
                            if ($params->get('show_edit_registrationlevel'))
                            {
                                ?>
                    <span class='vehicle_button'>
                        <a href="<?php echo JRoute::_('index.php?option=' . $option . '&task=edit_my_cars&Itemid=' . $Itemid . $comprofiler); ?>"><?php echo JText::_('edit my cars'); ?></a>
                    </span>
                <?php
            }
        }

        if ($params->get('show_rent'))
        {
            if ($params->get('show_rent_registrationlevel'))
            {
                ?>
                    <span class='vehicle_button'>
                        <a href="<?php echo JRoute::_('index.php?option=' . $option . '&task=rent_requests_vehicle&Itemid=' . $Itemid . $comprofiler); ?>"><?php echo JText::_('rent requests'); ?></a>
                    </span>
                                <?php
                            }
                        }

                        if ($params->get('show_buy'))
                        {
                            if ($params->get('show_buy_registrationlevel'))
                            {
                                ?>
                    <span class='vehicle_button'>
                        <a href="<?php echo JRoute::_('index.php?option=' . $option . '&task=buying_requests_vehicle&Itemid=' . $Itemid . $comprofiler); ?>"><?php echo JText::_('buying requests'); ?></a>
                    </span>
                                    <?php
                                }
                            }

                            if ($params->get('show_history'))
                            {
                                if ($params->get('show_history_registrationlevel'))
                                {
                                    ?>
                    <span class='vehicle_button'>
                        <a href="<?php echo JRoute::_('index.php?option=' . $option . '&task=rent_history_vehicle&name=' . $username . '&user=' . $userid . '&Itemid=' . $Itemid . $comprofiler); ?>"><?php echo JText::_('my rent history'); ?></a>
                    </span>
                                <?php
                            }
                        }
                        ?>
        </div>
                        <?php
                    }

    static function showMyCars(&$vehicles, &$params, &$pageNav)
    {
        global $mosConfig_absolute_path;
        $layout = $params->get('myvehicleslayout', 'default');
        $type = 'my_vehicles';
        require getLayoutPath::getLayoutPathCom('com_vehiclemanager',$type, $layout);
        
    }

    static function showRentVehicles($option, $main_veh, & $rows, & $userlist, $type)
    {
        global $my, $mosConfig_live_site, $mainframe, $doc, $Itemid,$vehiclemanager_configuration;
        $doc->addScript($mosConfig_live_site . '/components/com_vehiclemanager/includes/functions.js');
        $doc->addStyleSheet($mosConfig_live_site . '/components/com_vehiclemanager/includes/vehiclemanager.css');
        $doc->addStyleSheet($mosConfig_live_site . '/components/com_vehiclemanager/includes/custom.css');
        
        ?>
        <div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
        <form action="index.php" method="get" name="adminForm" id="adminForm">
        <?php
        if ($type == "rent" || $type == "edit_rent")
        {
            ?>
                <div class="my_vehicles_table_rent">
                    <div class="my_vehicles">
                        <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_TO . ":"; ?></span>
                        <span class="col_02"><?php echo $userlist; ?></span>
                    </div>
                    <div class="my_vehicles">
                        <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_USER . ":"; ?></span>
                        <span class="col_02"><input type="text" name="user_name" class="inputbox" /></span>
                    </div>
                    <div class="my_vehicles">
                        <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_EMAIL . ":"; ?></span>
                        <span class="col_02"><input type="text" name="user_email" class="inputbox" /></span>
                    </div>
                    <script>
                    Date.prototype.toLocaleFormat = function(format) {
                    var f = {Y : this.getYear() + 1900,m : this.getMonth() + 1,d : this.getDate(),H : this.getHours(),M : this.getMinutes(),S : this.getSeconds()}
                    for(k in f)
                    format = format.replace('%' + k, f[k] < 10 ? "0" + f[k] : f[k]);
                    return format;
                    };
                    
                    window.onload = function ()

                    {
                        var today = new Date();
                        var date = today.toLocaleFormat("<?php echo $vehiclemanager_configuration['date_format'] ?>");
                        document.getElementById('rent_from').value = date;
                        document.getElementById('rent_until').value = date;
                    };

                    </script>
                    <div class="my_vehicles">
                        <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_FROM . ":"; ?></span>
                        <?php echo JHtml::_('calendar', date("Y-m-d"), 'rent_from', 'rent_from', $vehiclemanager_configuration['date_format'], array('size' => '17')); ?>
                    </div>
                    <div class="my_vehicles">
                        <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_TIME; ?></span>
                        <?php echo JHtml::_('calendar', date("Y-m-d"), 'rent_until', 'rent_until', $vehiclemanager_configuration['date_format'], array('size' => '17')); ?>
                    </div>
                </div>
        <?php } else
        { ?>
                &nbsp;
        <?php } 
                $all = JFactory::getDBO();
                $query = "SELECT * FROM #__vehiclemanager_rent";
                $all->setQuery($query);
                $num = $all->loadObjectList();
        ?>

            <div class="basictable_19">
                <div class="row_01">
                    <span class="col_01">
                        <?php if ($type != 'rent')
                        { ?>
                            <input type="checkbox" name="toggle" value="" onClick="vm_checkAll(this);" />
                            <span class="toggle_check">check All</span>
                        <?php } ?>
                    </span>
           
                </div>

          <?php 
                if ($type == "rent")
                {
                    ?>
                        <td align="center">  <input class="inputbox"  type="checkbox"  name="checkVehicle" id="checkVehicle" size="0" maxlength="0" value="on" /></td>
            <?php     
                } else if ($type == "edit_rent"){ ?>
                  <input type="hidden"  name="checkVehicle" id="checkVehicle" value="on" /></td>
                
              <?php
                } 
        
                $assoc_title = ''; 
                for ($t = 0, $z = count($rows); $t < $z; $t++) {
                  if($rows[$t]->id != $main_veh->id) $assoc_title .= $rows[$t]->vtitle; 
                }

                print_r("
                  <td align=\"center\">". $main_veh->id ."</td>
                  <td align=\"center\">" . $main_veh->vehicleid . "</td>
                  <td align=\"center\">" . $main_veh->vtitle . " ( " . $assoc_title ." ) " . "</td>
                  </tr>");
     
                for ($j = 0, $n = count($rows); $j < $n; $j++) {
                    $row = $rows[$j];
                    ?>
                            &nbsp;
                        
                        <input class="inputbox" type="hidden"  name="id" id="id" size="0" maxlength="0" value="<?php echo $main_veh->id; ?>" />
                        <input class="inputbox" type="hidden"  name="vtitle" id="vtitle" size="0" maxlength="0" value="<?php echo $row->vtitle; ?>" />
                <?php
                $vehicle_id = $row->id;
                $data = JFactory::getDBO();
                $query = "SELECT * FROM #__vehiclemanager_rent WHERE fk_vehicleid =" . $vehicle_id . " ORDER BY rent_return "; // AND id =50"   
                $data->setQuery($query);
                $allrent = $data->loadObjectList();
                

                $num = 1;
                for ($i = 0, $n2 = count($allrent); $i < $n2; $i++) {
                ?>

          <div class="box_rent_vm">

              <div class="row_01 row_rent_vm">
                <?php if (!isset($allrent[$i]->rent_return) && $type != "rent")
                { ?>
               <span class="rent_check_vid">
              <input type="checkbox" id="cb<?php echo $i; ?>" name="vid[]" value="<?php echo $allrent[$i]->id; ?>" onClick="isChecked(this.checked);" />
            </span>
                <?php } else
                { ?>
                <?php } ?>
                <span class="col_01">id</span>
                <span class="col_02"><?php echo $num; ?></span>
              </div>

              <div class="row_02 row_rent_vm">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_VEHICLEID; ?></span>  
                <span class="col_02"><?php echo $row->vehicleid; ?></span>
              </div>

              <div class="row_03 row_rent_vm">
                <?php echo $row->vtitle; ?>
              </div>

          <div class="from_until_return">

              <div class="row_04 row_rent_vm">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_FROM; ?></span>  
                <span class="col_02"><?php echo data_transform_vm($allrent[$i]->rent_from); ?></span>
              </div>
                   <br />
              <div class="row_05 row_rent_vm">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_UNTIL; ?></span>  
                <span class="col_02"><?php echo data_transform_vm($allrent[$i]->rent_until); ?></span>
              </div>
                  <br />
              <div class="row_06 row_rent_vm">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_RETURN; ?></span>  
                <span class="col_02"><?php echo data_transform_vm($allrent[$i]->rent_return); ?></span>
              </div>

          </div>
        </div>
                <?php
                if ($allrent[$i]->fk_userid != null)
                    print_r("<div class='rent_user'>" . $allrent[$i]->user_name . "</div>");
                else
                    print_r("<div class='rent_user'>" . $allrent[$i]->user_name . ": " . $allrent[$i]->user_email . "</div>");
                $num++;
            }        
          }
        ?>
       </div> <!-- basictable_19  -->

            <input type="hidden" name="option" value="<?php echo $option; ?>" />
            <input type="hidden" id="adminFormTaskInput" name="task" value="" />
            <input type="hidden" name="save" value="1" />
            <input type="hidden" name="boxchecked" value="1" />
        <?php
        if ($option != "com_vehiclemanager")
        {
            ?>
                <input type="hidden" name="tab" value="getmyvehiclesTab" />
                <input type="hidden" name="is_show_data" value="1" />
            <?php
        }
        ?>
            <input type="hidden" name="Itemid" value="<?php echo $Itemid; ?>" />

        <?php if ($type == "rent")
        { ?>
                <input type="button" name="rent_save" value="<?php echo _VEHICLE_MANAGER_LABEL_BUTTON_RENT; ?>" onclick="vm_buttonClickRent(this)"/>
        <?php } ?>
        <?php if ($type == "rent_return")
        { ?>
                <input type="button" name="rentout_save" value="<?php echo _VEHICLE_MANAGER_LABEL_RENT_RETURN; ?>" onclick="vm_buttonClickRent(this)"/>
        <?php } ?>
        </form>
        <?php
    } 

    static function editRentVehicles($option, $main_veh, & $rows, $title_assoc, & $userlist, & $all_assosiate_rent, $type)
                    {
                        global $my, $mosConfig_live_site, $mainframe, $doc, $Itemid,$vehiclemanager_configuration;
                        $doc->addScript($mosConfig_live_site . '/components/com_vehiclemanager/includes/functions.js');
                        $doc->addStyleSheet($mosConfig_live_site . '/components/com_vehiclemanager/includes/vehiclemanager.css');
                        $doc->addStyleSheet($mosConfig_live_site . '/components/com_vehiclemanager/includes/custom.css');
                        
                        ?>
        <div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
        <form action="index.php" method="get" name="adminForm" id="adminForm">
        <?php
        if ($type == "rent" || $type == "edit_rent")
        {
            ?>
                <div class="my_vehicles_table_rent">
                    <div class="my_vehicles">
                        <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_TO . ":"; ?></span>
                        <span class="col_02"><?php echo $userlist; ?></span>
                    </div>
                    <div class="my_vehicles">
                        <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_USER . ":"; ?></span>
                        <span class="col_02"><input type="text" name="user_name" class="inputbox" /></span>
                    </div>
                    <div class="my_vehicles">
                        <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_EMAIL . ":"; ?></span>
                        <span class="col_02"><input type="text" name="user_email" class="inputbox" /></span>
                    </div>
                    <script>
                    Date.prototype.toLocaleFormat = function(format) {
                    var f = {Y : this.getYear() + 1900,m : this.getMonth() + 1,d : this.getDate(),H : this.getHours(),M : this.getMinutes(),S : this.getSeconds()}
                    for(k in f)
                    format = format.replace('%' + k, f[k] < 10 ? "0" + f[k] : f[k]);
                    return format;
                    };
                    
                    window.onload = function ()

                    {
                        var today = new Date();
                        var date = today.toLocaleFormat("<?php echo $vehiclemanager_configuration['date_format'] ?>");
                        document.getElementById('rent_from').value = date;
                        document.getElementById('rent_until').value = date;
                    };

                    </script>
                    <div class="my_vehicles">
                        <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_FROM . ":"; ?></span>
                        <?php echo JHtml::_('calendar', date("Y-m-d"), 'rent_from', 'rent_from', $vehiclemanager_configuration['date_format'], array('size' => '17')); ?>
                    </div>
                    <div class="my_vehicles">
                        <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_TIME; ?></span>
                        <?php echo JHtml::_('calendar', date("Y-m-d"), 'rent_until', 'rent_until', $vehiclemanager_configuration['date_format'], array('size' => '17')); ?>
                    </div>
                </div>
        <?php } else
        { ?>
                &nbsp;
        <?php } 
                $all = JFactory::getDBO();
                $query = "SELECT * FROM #__vehiclemanager_rent";
                $all->setQuery($query);
                $num = $all->loadObjectList(); ?>
                
            <div class="basictable_19">
                <div class="row_01">
                    <span class="col_01">
                        <?php if ($type != 'rent')
                        { ?>
                   
                        <?php } ?>
                    </span>
                
                </div>

        <?php
        $assoc_title = ''; 
        for ($t = 0, $z = count($title_assoc); $t < $z; $t++) {
         if($title_assoc[$t]->vtitle != $main_veh->vtitle) $assoc_title .= " ".$title_assoc[$t]->vtitle; 
        }
                
          //show rent history what we may change
                    ?>
                        &nbsp;
                    <input class="inputbox" type="hidden"  name="id" id="id" size="0" maxlength="0" value="<?php echo $main_veh->id; ?>" />
                    <input class="inputbox" type="hidden"  name="vtitle" id="vtitle" size="0" maxlength="0" value="<?php echo $assoc_title; ?>" />
                    <?php
                    $num = 1;
                    for ($y = 0, $n2 = count($all_assosiate_rent[0]); $y < $n2; $y++) {
                        $assoc_rent_ids = ''; 
                        for ($j = 0, $n3 = count($all_assosiate_rent); $j < $n3; $j++) {
                            if($assoc_rent_ids != "" ) $assoc_rent_ids .= ",".$all_assosiate_rent[$j][$y]->id; 
                            else $assoc_rent_ids = $all_assosiate_rent[$j][$y]->id; 
                        }
                
                                      
                        ?>
                      
                         
                        <div class="box_rent_vm">

              <div class="row_01 row_rent_vm">
                
               <span class="rent_check_vid">
              <input type="checkbox" id="cb<?php echo $y; ?>" name="vid[]" value="<?php echo $assoc_rent_ids; ?>" onClick="isChecked(this.checked);" />
            </span>
                
                <span class="col_01">id</span>
                <span class="col_02"><?php echo $num; ?></span>
              </div>

              <div class="row_02 row_rent_vm">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_VEHICLEID; ?></span>  
                <span class="col_02"><?php echo $main_veh->id; ?></span>
              </div>

              <div class="row_03 row_rent_vm">
                <?php echo $main_veh->vtitle . " ( " . $assoc_title ." ) "  ?>
              </div>

          <div class="from_until_return">

              <div class="row_04 row_rent_vm">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_FROM; ?></span>  
                <span class="col_02"><?php echo data_transform_vm($all_assosiate_rent[0][$y]->rent_from); ?></span>
              </div>
                   <br />
              <div class="row_05 row_rent_vm">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_UNTIL; ?></span>  
                <span class="col_02"><?php echo data_transform_vm($all_assosiate_rent[0][$y]->rent_until); ?></span>
              </div>
                  <br />
              <div class="row_06 row_rent_vm">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_RETURN; ?></span>  
                <span class="col_02"><?php echo data_transform_vm($all_assosiate_rent[0][$y]->rent_return); ?></span>
              </div>

          </div>
</div>
         
            <?php                    
                      $num++;
                      } 
                print_r("
                  <td align=\"center\">-------- </td>
                  <td align=\"center\">-------</td>
                  <td align=\"center\">" . "------------" . "</td>
                  <td align=\"center\">" . "-----------------" . "</td>
                  <td align=\"center\">" . " -------------" . "</td>
                  <td align=\"center\">" . " ---------" . "</td>
                  <td align=\"center\">" . " ---------------------" . "</td>
                  <td align=\"center\">" . "------------------" . "</td> </tr>");
                      
             
      
        ?>
       </div> <!-- basictable_19  -->

            <input type="hidden" name="option" value="<?php echo $option; ?>" />
            <input type="hidden" id="adminFormTaskInput" name="task" value="" />
            <input type="hidden" name="save" value="1" />
            <input type="hidden" name="boxchecked" value="1" />
        <?php
        if ($option != "com_vehiclemanager")
        {
            ?>
                <input type="hidden" name="tab" value="getmyvehiclesTab" />
                <input type="hidden" name="is_show_data" value="1" />
            <?php
        }
        ?>
            <input type="hidden" name="Itemid" value="<?php echo $Itemid; ?>" />

        <?php if ($type == "rent")
        { ?>
                <input type="button" name="rent_save" value="<?php echo _VEHICLE_MANAGER_LABEL_BUTTON_RENT; ?>" onclick="vm_buttonClickRent(this)"/>
        <?php } ?>
        <?php if ($type == "rent_return")
        { ?>
                <input type="button" name="rentout_save" value="<?php echo _VEHICLE_MANAGER_LABEL_RENT_RETURN; ?>" onclick="vm_buttonClickRent(this)"/>
        <?php } ?>
        </form>
        <?php
    }
    
    
    static function showRentHistory($option, & $rows, $pageNav)
    {
        global $my, $Itemid, $mosConfig_live_site, $mainframe, $doc;
        $session = JFactory::getSession();
        $arr = $session->get("array", "default");
        $doc->addStyleSheet($mosConfig_live_site . '/components/com_vehiclemanager/includes/custom.css');
        ?>
        <form action="index.php" method="get" name="adminForm" id="adminForm">

            <div class="basictable_20 basictable">
	  <!-- <div class="row_01">
                    <span class="col_01">#</span>
                    <span class="col_02"><?php //echo _VEHICLE_MANAGER_LABEL_VEHICLEID; ?></span>
                    <span class="col_03"><?php //echo _VEHICLE_MANAGER_LABEL_TITLE; ?></span>
                    <span class="col_04"><?php //echo _VEHICLE_MANAGER_LABEL_RENT_FROM; ?></span>
                    <span class="col_05"><?php //echo _VEHICLE_MANAGER_LABEL_RENT_UNTIL; ?></span>
                    <span class="col_06"><?php //echo _VEHICLE_MANAGER_LABEL_RENT_RETURN; ?></span>
                    <span class="col_07"><?php //echo _VEHICLE_MANAGER_LABEL_RENT_TO; ?></span>
                </div>-->
        <?php
        $numb = 0;
        for ($i = 0, $n = count($rows); $i < $n; $i++) {
            $row = & $rows[$i];
            $vehicle = $row->id;
            $title = $row->vtitle;
            $numb++;
        ?>

	  <div class="box_rent_vm">
	      <div class="row_02 row_rent_vm">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_VEHICLEID; ?></span>  
		<span class="col_02"><?php echo $row->vehicleid; ?></span>
	      </div>

	      <div class="row_03 row_rent_vm">
		<?php echo $row->vtitle; ?>
	      </div>

	   <div class="from_until_return">
	      <div class="row_04 row_rent_vm">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_FROM; ?></span>  
		<span class="col_02"><?php echo data_transform_vm($row->rent_from); ?></span>
	      </div>
		   <br />
	      <div class="row_05 row_rent_vm">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_UNTIL; ?></span>  
		<span class="col_02"><?php echo data_transform_vm($row->rent_until); ?></span>
	      </div>
		  <br />
	      <div class="row_06 row_rent_vm">
                <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_RETURN; ?></span>  
		<span class="col_02"><?php echo data_transform_vm($row->rent_return); ?></span>
	      </div>

	  </div>
      </div>
        <?php
        }
        ?>

      <div class="page_navigation">
         <div class="row_02">
        <?php
        $paginations = $arr;
        if ($paginations && ($pageNav->total > $pageNav->limit))
            echo $pageNav->getPagesLinks();
        ?>
        </div>
     </div>

   </div>
        </form>
        <?php
    }

    static function showRequestRentVehicles($option, &$rent_requests, $v_associated, $title_assoc, &$pageNav)
    {
        global $my, $mosConfig_live_site, $mainframe, $doc, $Itemid;
        $session = JFactory::getSession();
        $arr = $session->get("array", "default");
        $doc->addScript($mosConfig_live_site . '/components/com_vehiclemanager/includes/functions.js');
        $doc->addStyleSheet($mosConfig_live_site . '/components/com_vehiclemanager/includes/custom.css');
        ?>
        <form action="index.php" method="get" name="adminForm" id="adminForm">
            <div class="rent_requests_vehicle">
             <div class="row_01">
                <span class="col_01"><input type="checkbox" name="toggle" value="" onClick="vm_checkAll(this);" /></span>
                <span class="col_02">check All</span>
           </div>
        <?php
        for ($i = 0, $n = count($rent_requests); $i < $n; $i++) {
            $row = & $rent_requests[$i];
            
            $assoc_title = ''; 
              for ($t = 0, $z = count($title_assoc); $t < $z; $t++) {
                  if($title_assoc[$t]->vtitle != $row->vtitle) 
                     $assoc_title .= " ".$title_assoc[$t]->vtitle; 
              }
            ?>

	  <span class="user_name"><?php echo $row->user_name; ?></span>
		  <span class="arrow_up_comment"></span>
              <div class="rent_vehicle_head row_0<?php echo $i % 2; ?>">

	      <div class="row_vm_rent">

		  <div class="row_vtitle">
		   <?php //echo _VEHICLE_MANAGER_LABEL_TITLE; ?>
                   <?php echo $row->vtitle . " ( " . $assoc_title ." ) "; ?>
		  </div>

		  <div class="row_01">
		    <?php echo mosHTML::idBox($i, $row->id, 0, 'vid'); ?>
		    <span class="col_01">id</span>
                    <span class="col_02"><?php echo $row->id; ?></span>
		  </div>

		  <div class="row_02">
		    <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_VEHICLEID; ?></span>
		    <span class="col_02">
			  <?php
			    $data = JFactory::getDBO();
			    $query = "SELECT vehicleid FROM #__vehiclemanager_vehicles where id = " . $row->fk_vehicleid . " ";
			    $data->setQuery($query);
			    $vehicleid = $data->loadObjectList();
		       echo $vehicleid[0]->vehicleid;
			  ?>
		    </span>
		  </div>

	     </div>

		<?php //echo _VEHICLE_MANAGER_LABEL_RENT_USER; ?>

		  <div class="row_comment">
		    <?php //echo _VEHICLE_MANAGER_LABEL_RENT_ADRES; ?>
		    <span class="quotes_before"></span>
			  <?php echo $row->user_mailing; ?>
		    <span class="quotes_after"></span>
		  </div>

		 <div class="mailto_from_until">
		  <div class="row_mailto">
		  <img src="<?php echo $mosConfig_live_site; ?>/components/com_vehiclemanager/images/mail_request.png" alt="email" />
		   <?php //echo _VEHICLE_MANAGER_LABEL_RENT_EMAIL; ?>
                   <a href=mailto:"<?php echo $row->user_email; ?>"><?php echo $row->user_email; ?></a>
		  </div>
		  <div class="row_from">
		    <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_FROM; ?></span>
                    <span class="col_02"><?php echo $row->rent_from; ?></span>
		  </div>
		  <div class="row_until">
		    <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_RENT_UNTIL; ?></span>
                    <span class="col_02"><?php echo $row->rent_until; ?></span>
		  </div>
		 </div>

               </div>
            <?php
        }
        ?>
      </div>

           <div class="page_navigation row_<?php echo $i % 2; ?>">
              <div class="row_02">
		<?php
		  $paginations = $arr;
	      if ($paginations && ($pageNav->total > $pageNav->limit))
		 {
		echo $pageNav->getPagesLinks();
		    }
		  ?>
             </div>
          </div>

            <input type="hidden" name="option" value="<?php echo $option; ?>" />
        <?php
        if ($option != "com_vehiclemanager")
        {
            ?>
                <input type="hidden" name="tab" value="getmyvehiclesTab" />
                <input type="hidden" name="is_show_data" value="1" />
            <?php
        }
        ?>
            <input type="hidden" id="adminFormTaskInput" name="task" value="" />
            <input type="hidden" name="boxchecked" value="0" />
            <input type="hidden" name="Itemid" value="<?php echo $Itemid; ?>" />
            <input type="button" name="acceptButton" value="accept request" onclick="vm_buttonClickRentRequest(this)"/>
            <input type="button" name="declineButton" value="decline request" onclick="vm_buttonClickRentRequest(this)"/>
        </form>
        <?php
    }

    static function showRequestBuyingVehicles($option, $buy_requests, $pageNav)
    {
        global $my, $mosConfig_live_site, $mainframe, $doc, $Itemid;
        $session = JFactory::getSession();
        $arr = $session->get("array", "default");
        $doc->addScript($mosConfig_live_site . '/components/com_vehiclemanager/includes/functions.js');
        $doc->addStyleSheet($mosConfig_live_site . '/components/com_vehiclemanager/includes/custom.css');
        ?>
        <form action="index.php" method="get" name="adminForm" id="adminForm">

            <div class="buy_requests_form">
                <div class="row_01">
                    <span class="col_01"><input type="checkbox" name="toggle" value="" onClick="vm_checkAll(this);" /></span>
		    <span class="check_all_requests">check All</span>
               </div>
        <?php
        for ($i = 0, $n = count($buy_requests); $i < $n; $i++) {
            $row = $buy_requests[$i];
            ?>

        <span class="user_name"><?php echo $row->customer_name; ?></span>
	    <span class="arrow_up_comment"></span>
          <div class="box_request_vm row_0<?php echo $i % 2; ?>">

      <div class="row_vid">
	<div class="col_vtitle">
            <?php //echo _VEHICLE_MANAGER_LABEL_TITLE; ?>
            <?php echo $row->vtitle; ?>
	</div>
	<div class="row_01">
            <?php
            if ($row->fk_rentid != 0)
            {
            ?>
              &nbsp;
                <?php
            } else
            {
             ?>
		<?php echo mosHTML::idBox($i, $row->id, ($row->fk_rentid != 0), 'vid'); ?>
             <?php
            }
            ?>
	  <span class="col_02">id</span>
	  <span class="col_03"><?php echo $row->id; ?></span>
	</div>

	<div class="row_02">
	    <span class="col_01"><?php echo _VEHICLE_MANAGER_LABEL_VEHICLEID; ?></span>
            <span class="col_02"><?php echo $row->fk_vehicleid; ?></span>
	</div>
    </div>

		  <?php //echo _VEHICLE_MANAGER_LABEL_RENT_USER; ?>

		<div class="row_comment">
                  <?php //echo _VEHICLE_MANAGER_LABEL_COMMENT; ?>
                  <span class="quotes_before"></span>
		      <?php echo $row->customer_comment; ?>
                  <span class="quotes_after"></span>
		</div>

		    <div class="mailto_phone">
		<div class="row_mailto">
		  <img src="<?php echo $mosConfig_live_site; ?>/components/com_vehiclemanager/images/mail_request.png" alt="email" />
                  <?php //echo _VEHICLE_MANAGER_LABEL_RENT_EMAIL; ?>
		  <a href=mailto:"<?php echo $row->customer_email; ?>"><?php echo $row->customer_email; ?></a>
		</div>
		<div class="row_phone">
		  <img src="<?php echo $mosConfig_live_site; ?>/components/com_vehiclemanager/images/phone_request.png" alt="phone" />
                  <?php //echo _VEHICLE_MANAGER_LABEL_BUYING_ADRES; ?>
                  <span class="col_phone"><?php echo $row->customer_phone; ?></span>
		</div>
		    </div>

            </div>
          <?php
         }
        ?>

    </div>

        <div class="page_navigation">
           <div class="row_02">
	    <?php
		$paginations = $arr;
	    if ($paginations && ($pageNav->total > $pageNav->limit))
	    {
		echo $pageNav->getPagesLinks();
	    }
	    ?>
	  </div>
      </div>

            <input type="hidden" name="option" value="<?php echo $option; ?>" />
        <?php
        if ($option != "com_vehiclemanager")
        {
            ?>
                <input type="hidden" name="tab" value="getmyvehiclesTab" />
                <input type="hidden" name="is_show_data" value="1" />
            <?php
        }
        ?>
            <input type="hidden" id="adminFormTaskInput" name="task" value="" />
            <input type="hidden" name="boxchecked" value="0" />
            <input type="hidden" name="Itemid" value="<?php echo $Itemid; ?>" />
            <input type="button" name="acceptButton" value="accept request" onclick="vm_buttonClickBuyRequest(this)"/>
            <input type="button" name="declineButton" value="decline request" onclick="vm_buttonClickBuyRequest(this)"/>
        </form>
        <?php
    }
}
//END CLASS VEHICLE MANAGER HTML
?>