<?php
if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' );

                    $session = JFactory::getSession();
                    $arr = $session->get("array", "default");

                    global $hide_js, $Itemid, $mosConfig_live_site, $mosConfig_absolute_pat,$database;
                    global $limit, $total, $limitstart, $task, $paginations, $mainframe, $vehiclemanager_configuration, $option;
        if($option != 'com_vehiclemanager') PHP_vehiclemanager::showTabs();

  $doc = JFactory::getDocument();  
$doc->addStyleSheet( $mosConfig_live_site.'/components/com_vehiclemanager/includes/vehiclemanager.css' );
$doc->addStyleSheet( $mosConfig_live_site.'/components/com_vehiclemanager/includes/custom.css' );
if (version_compare(JVERSION, "1.6.0", "lt")) JHTML::_('behavior.mootools');
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

                    <script type="text/javascript">
                        function vm_rent_request_submitbutton() {
                            var form = document.userForm;
                            if (form.user_name.value == "") {
                                alert( "<?php echo _VEHICLE_MANAGER_INFOTEXT_JS_RENT_REQ_NAME; ?>" );
                            } else if (form.user_email.value == "" || !vm_isValidEmail(form.user_email.value)) {
                                alert( "<?php echo _VEHICLE_MANAGER_INFOTEXT_JS_RENT_REQ_EMAIL; ?>" );
                            } else if (form.user_mailing == "") {
                                alert( "<?php echo _VEHICLE_MANAGER_INFOTEXT_JS_RENT_REQ_MAILING; ?>" );
                            } else if (form.rent_until.value == "") {
                                alert( "<?php echo _VEHICLE_MANAGER_INFOTEXT_JS_RENT_REQ_UNTIL; ?>" );
                            } else {
                                form.submit();
                            }
                        }

                        function vm_isValidEmail(str) {
                            return (str.indexOf("@") > 1);
                        }
                        
                        function vm_allreordering(){
                          if(document.orderForm.order_direction.value=='asc')
                            document.orderForm.order_direction.value='desc';
                          else document.orderForm.order_direction.value='asc';
                          
                          document.orderForm.submit();
                        }
                    
                    </script>
<?php positions_vm($params->get('singleuser01'));?>      
<?php positions_vm($params->get('singlecategory01')); ?>
                    <div class="componentheading<?php echo $params->get('pageclass_sfx'); ?>">
                    <?php 
                     if (!$params->get('wrongitemid')){
                       echo isset($currentcat->header) ? $currentcat->header : "";
                     }
                     else{
                     $parametrs=$mainframe->getParams();
                     echo $parametrs->toObject()->page_title;
                     }
                    ?>
                    </div>

<div class="pre_button">
<?php
                   // if ($currentcat->img != null && $currentcat->align == 'left' && $params->get('show_cat_pic')) {
?>
                                <span class="col_01">
                                    <!--<img src="<?php echo $currentcat->img; ?>" align="<?php echo $currentcat->align; ?>" alt="?"/>-->
                                </span>
<?php
                    //}
                    if(!$params->get('wrongitemid')){
  ?>
                      <span class="col_02">
                        <?php //echo $currentcat->descrip; ?>
                      </span>
                        <?php //if ($currentcat->img != null && $currentcat->align == 'right') {
  ?>
                        <span class="col_03">
                                <!--<img src="<?php echo $currentcat->img; ?>" align="<?php echo $currentcat->align; ?>" alt="?" />-->
                        </span>
                      <?php //}
                    } ?>
                         <span class="col_04">
                             <?php if ($params->get( 'show_input_print_pdf')){?>
                                        <a onclick="window.open(this.href,'win2','status=no,toolbar=no,scrollbars=yes,titlebar=no,menubar=no,resizable=yes,width=640,height=480,directories=no,location=no'); return false;" rel="nofollow"
                                        href="<?php echo $mosConfig_live_site; ?>/index.php?option=com_vehiclemanager&amp;task=all_vehicle&amp;Itemid=<?php echo $Itemid; ?>&amp;limitstart=<?php echo $limitstart; ?>&amp;printItem=pdf" title="PDF"  rel="nofollow">
<?php
        if (version_compare(JVERSION, "1.6.0", "lt")){
?>
					  <img src="<?php echo $mosConfig_live_site; ?>/media/system/images/pdf_button.png" alt="PDF" />
			      <?php
				      } else{
			      ?>
					  <img src="<?php echo $mosConfig_live_site; ?>/components/com_vehiclemanager/images/pdf_button.png" alt="PDF" />
<?php
        }
?>
                                        </a>
                                <?php } ?>
                        </span>
                        <span class="col_05">
                        	<?php if ($params->get( 'show_input_print_view')){?>
                                        <a onclick="window.open(this.href,'win2','status=no,toolbar=no,scrollbars=yes,titlebar=no,menubar=no,resizable=yes,width=640,height=480,directories=no,location=no');  return false;" rel="nofollow"
                                        href="<?php echo $mosConfig_live_site; ?>/index.php?option=com_vehiclemanager&amp;task=all_vehicle&amp;Itemid=<?php echo $Itemid; ?>&amp;limitstart=<?php echo $limitstart; ?>&amp;printItem=print&amp;tmpl=component" title="Print"  rel="nofollow">
<?php
        if (version_compare(JVERSION, "1.6.0", "lt")){
?>
						  <img src="<?php echo $mosConfig_live_site; ?>/media/system/images/printButton.png" alt="Print" >				      <?php
					      } else{
				      ?>
						   <img src="<?php echo $mosConfig_live_site; ?>/components/com_vehiclemanager/images/printButton.png" alt="Print" >
<?php
        }
?>
            </a>
         <?php } ?>
           </span>
            <span class="col_06">
            <?php if ($params->get( 'show_input_mail_to')){
              if (version_compare(JVERSION, '1.6', 'lt')) {?>
            <a href="<?php echo $mosConfig_live_site; ?>/index.php?option=com_mailto&amp;tmpl=component&amp;link=<?php $url = JFactory::getURI();
            echo base64_encode($url->toString()); ?>"
            title="E-mail"
            onclick="window.open(this.href,'win2','width=400,height=350,menubar=yes,resizable=yes'); return false;">
            <img src="<?php echo $mosConfig_live_site; ?>/components/com_vehiclemanager/images/emailButton.png" alt="E-mail"  />
                </a>
      <?php }else{
            require_once JPATH_SITE . '/components/com_mailto/helpers/mailto.php';
            $url = JFactory::getURI();
            $url_c = $url->toString();
            $link = 'index.php?option=com_mailto&amp;tmpl=component&amp;Itemid='.$Itemid.'&link='.MailToHelper::addLink($url_c);?>
            <a href="<?php echo sefRelToAbs($link);?>"
            title="E-mail"
            onclick="window.open(this.href,'win2','width=400,height=350,menubar=yes,resizable=yes'); return false;">
      <?php
            if (version_compare(JVERSION, "1.6.0", "lt")) { ?>
            <img src="<?php echo $mosConfig_live_site; ?>/media/system/images/emailButton.png" alt="E-mail" />
              <?php }
            else { ?>
            <img src="<?php echo $mosConfig_live_site; ?>/components/com_vehiclemanager/images/emailButton.png" alt="E-mail" />
           <?php  } ?>
           </a>
      <?php       }   
              }
      ?>
           </span>
            <?php if ($params->get('rss_show')){?>
            <span class="col_07">
                <a href="<?php echo $mosConfig_live_site;?>/index.php?option=com_vehiclemanager&task=show_rss_categories&Itemid=<?php echo $Itemid;?>">
                    <img src="./components/com_vehiclemanager/images/rss2.png" alt="Category RSS" align="right" title="Category RSS"/>
                </a>
	    </span>
          <?php } //endif; ?>
       </div>

<?php positions_vm($params->get('singleuser02'));?>
<?php positions_vm($params->get('singlecategory02')); ?>
<?php if (($task!='rent_request_vehicle')&&($vehiclemanager_configuration['location_map']==1)){ ?>
                <div id="vm_map_canvas" class="vm_map_canvas vm_map_canvas_03"></div>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
window.onload =  function() {
    vm_initialize2();
};
function vm_initialize2(){
    var map;
    var marker = new Array();
    var myOptions = {
       scrollwheel: false,
       zoomControlOptions: {
           style: google.maps.ZoomControlStyle.LARGE
       },
       mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var photosCatalogPath = "<?php echo $mosConfig_live_site; ?>/components/com_vehiclemanager/photos/";
    var imgCatalogPath = "<?php echo $mosConfig_live_site; ?>/components/com_vehiclemanager/";
    var map = new google.maps.Map(document.getElementById("vm_map_canvas"), myOptions);
    var bounds = new google.maps.LatLngBounds ();
     <?php
     $newArr = explode(",", _VEHICLE_MANAGER_LOCATION_MARKER);
     $j=0;
     for ($i=0;$i < count($rows);$i++){
        if ($rows[$i]->vlatitude && $rows[$i]->vlongitude) {
                $numPick = '';
                if(isset($newArr[$rows[$i]->vtype])){
                    $numPick = $newArr[$rows[$i]->vtype];
                }
     ?>
              var srcForPic = "<?php echo $numPick; ?>";
              var image = '';
                if(srcForPic.length){
                    var image = new google.maps.MarkerImage(imgCatalogPath + srcForPic,
                        new google.maps.Size(32, 32),
                        new google.maps.Point(0,0),
                        new google.maps.Point(0, 32));
                } 
    marker.push(new google.maps.Marker({
        icon: image,
        position: new google.maps.LatLng(<?php echo $rows[$i]->vlatitude; ?>, <?php echo $rows[$i]->vlongitude; ?>),
        map: map,
        title: "<?php echo $database->Quote($rows[$i]->vtitle); ?>"
    }));
    bounds.extend(new google.maps.LatLng(<?php echo $rows[$i]->vlatitude; ?>,<?php echo $rows[$i]->vlongitude; ?>));
    google.maps.event.addListener(marker[<?php echo $j; ?>], 'click', function() {
        window.open("index.php?option=com_vehiclemanager&task=view_vehicle&id=<?php echo $rows[$i]->id; ?>&catid=<?php echo $rows[$i]->idcat ?>&Itemid=<?php echo $Itemid;?>");
    });

    var infowindow  = new google.maps.InfoWindow({});

    google.maps.event.addListener(marker[<?php echo $j; ?>], 'mouseover', function() {
    var title =  "<?php echo $rows[$i]->vtitle; ?>";
    var imgUrl =  "<?php echo $rows[$i]->image_link; ?>";

    var contentStr = '<table style="width:100px;background-color: #f5f5f5;-moz-border-radius: 10px;-webkit-border-radius: 10px;border-radius: 5px;"><tr><td><img width = "100px" src = '+photosCatalogPath+imgUrl+'></td></tr><tr><td font-size="2px"><span style="color:#006ECC;">' + title + '</span></td></tr></table>';

        infowindow.setContent(contentStr);
        infowindow.open(map,marker[<?php echo $j; ?>]);
    });

    google.maps.event.addListener(marker[<?php echo $j; ?>], 'mouseout', function() {
        infowindow.close(map,marker[<?php echo $j; ?>]);
    });
                    
    
    var myLatlng = new google.maps.LatLng(<?php echo $rows[$i]->vlatitude;?>,<?php echo $rows[$i]->vlongitude;?>);
    var myZoom = <?php echo $rows[$i]->map_zoom;?>;
    <?php $j++;
    }
}
    ?>
    if (<?php echo $j;?>>1) map.fitBounds(bounds);
        else if (<?php echo $j;?>==1) {map.setCenter(myLatlng);map.setZoom(myZoom)}
        else {map.setCenter(new google.maps.LatLng(0,0));map.setZoom(0);}
}
</script>
 <?php } ?>

<?php positions_vm($params->get('singlecategory03')); ?>
<?php if ($params->get('show_search')){?>
            <div class="componentheading<?php echo $params->get('pageclass_sfx'); ?>">
                <div class="search_button_vehicle basictable_54 basictable">
		  <?php $link = 'index.php?option=com_vehiclemanager&amp;task=show_search_vehicle&amp;catid=&amp;Itemid=' . $Itemid; ?> 
                  <a href="<?php echo sefRelToAbs($link); ?>" class="category<?php echo $params->get('pageclass_sfx'); ?>" align="right">
                  <img src="./components/com_vehiclemanager/images/search.png" alt="?" border="0" align="right"/>
		  <?php echo _VEHICLE_MANAGER_LABEL_SEARCH; ?>&nbsp;
		  </a>
                </div>
            </div>

<?php }?>
<?php 
    if (count($rows) > 0) {
      $sort_arr['order_field'] = $params->get('sort_arr_order_field');
      $sort_arr['order_direction'] = $params->get('sort_arr_order_direction');
   ?>
<?php positions_vm($params->get('singleuser03'));?>
<?php positions_vm($params->get('singlecategory04')); ?>
                        <div id="ShowOrderBy">
                        <form method="POST" action="<?php echo sefRelToAbs($_SERVER["REQUEST_URI"]);?>" name="orderForm">
                        <input type="hidden" id="order_direction" name="order_direction" value="<?php echo $sort_arr['order_direction']; ?>" >
                        <a title="Click to sort by this column." onclick="javascript:vm_allreordering();return false;" href="#">
                          <img alt="" src="./media/system/images/sort_<?php echo $sort_arr['order_direction']; ?>.png"></a>
                          <?php echo _VEHICLE_MANAGER_LABEL_ORDER_BY; ?> <select size="1" class="inputbox" onchange="javascript:document.orderForm.order_direction.value='asc'; document.orderForm.submit();" id="order_field" name="order_field">
                          <option value="date" <?php if($sort_arr['order_field'] == "date") echo 'selected="selected"'; ?> >  <?php echo _VEHICLE_MANAGER_LABEL_DATE; ?> </option>
                          <option value="price" <?php if($sort_arr['order_field'] == "price") echo 'selected="selected"'; ?> > <?php echo _VEHICLE_MANAGER_LABEL_PRICE; ?></option>
                          <option value="maker" <?php if($sort_arr['order_field'] == "maker") echo 'selected="selected"'; ?> >  <?php echo _VEHICLE_MANAGER_LABEL_MODEL; ?></option>
                          <option value="vtitle" <?php if($sort_arr['order_field'] == "vtitle") echo 'selected="selected"'; ?> > <?php echo _VEHICLE_MANAGER_LABEL_TITLE; ?></option></select>       
                        </form>
                        </div>

<?php positions_vm($params->get('singleuser04'));?>
<?php positions_vm($params->get('singlecategory05')); ?>
                 <div id="gallery">
                     <?php $total = count($rows);
                     //if (isset($_GET['lang'])) $lang = $_GET['lang']; else $lang = '*';
                     foreach ($rows as $row) {
                    // if($row->language == $lang or $row->language == '*' or $lang ==  '*'){
  $link= 'index.php?option=com_vehiclemanager&amp;task=view_vehicle&amp;id=' . $row->id . '&amp;catid=' . $row->catid . '&amp;Itemid=' . $Itemid;
                         $imageURL = $row->image_link;
                         ?>
			  <div class="okno_V">
                             <div style = "height: <?php echo $vehiclemanager_configuration['fotogallery']['high']; ?>px; position:relative;">
                             <a href="<?php echo sefRelToAbs($link);?>" style="text-decoration: none" >
                             <?php
                             if ($imageURL != '') {
                                    $file_name = PHP_vehiclemanager::picture_thumbnail($imageURL,$vehiclemanager_configuration['fotogallery']['high'],$vehiclemanager_configuration['fotogallery']['width']);
                                    $file=$mosConfig_live_site . '/components/com_vehiclemanager/photos/'. $file_name;
                                    echo '<img alt="'.$row->vtitle.'" title="'.$row->vtitle.'" src="' .$file. '" style = "position:absolute; margin:auto; top:0; bottom:0; left:0; right:0; " border="0">';
                                    
                             } else {
                                    echo '<img alt="'.$row->vtitle.'" title="'.$row->vtitle.'" src="' .
                                    $mosConfig_live_site . '/components/com_vehiclemanager/images/';
                                    echo _VEHICLE_MANAGER_NO_PICTURE_BIG;
                                    echo '" alt="no-img_eng_big.gif" border="0"  />&nbsp;';
                             }?>
                             </a>
                            </div>
                             <div class="textvehicle">
			                 <div class="titlevehicle">
                                 <a href="<?php echo sefRelToAbs($link); ?>" >
                                    <?php if(strlen($row->vtitle)>45) echo substr($row->vtitle,0,25),'...';
                                    else {echo $row->vtitle;}?>
                                 </a>
                             </div>
<?php
             if ($params->get('show_pricerequest')) {
?>              
                             <div class="price">
				            <?php 
                              if ($vehiclemanager_configuration['price_unit_show'] == '1'){
                                     if ($vehiclemanager_configuration['sale_separator'])
                                        echo formatMoney($row->price, false, $vehiclemanager_configuration['price_format']), ' ', $row->priceunit;
                                    else echo $row->price, ' ', $row->priceunit;
                              }else {
                                  if ($vehiclemanager_configuration['sale_separator'])
                                      echo $row->priceunit, ' ', formatMoney($row->price, false, $vehiclemanager_configuration['price_format']);
                                  else echo $row->priceunit, ' ', $row->price;
                              }
                    ?>
			                   </div>
<?php
             }
?>
                           </div>
                            
                         </div><!--okno-->
                     <?php 
                     //}
                     } ?>
                     
	</div><!--gallery-->
                
             <?php }
                    if ($params->get('show_rentstatus') && $params->get('show_rentrequest') && $params->get('rent_save')) {// && $available)
                        ?>
            <div class="componentheading<?php echo $params->get('pageclass_sfx'); ?>">
	<?php echo _VEHICLE_MANAGER_LABEL_RENT_INFORMATIONS; ?>
                <input type="hidden" name="vehicleid" id="vehicleid" value="<?php echo $row->id ?>" maxlength="80" />
            </div>
            <form action="<?php echo sefRelToAbs("index.php");?>" name="userForm" method="post">
            <div class="basictable_56 basictable">
                <div class="row_01">
                    <span class="col_01">
			  <?php echo _VEHICLE_MANAGER_LABEL_RENT_REQUEST_NAME; ?>:<br />
                         <input class="inputbox" type="text" name="user_name" size="38" maxlength="80" />
                    </span>
                    <span class="col_02">
			  <?php echo _VEHICLE_MANAGER_LABEL_RENT_REQUEST_EMAIL; ?>:<br />
                         <input class="inputbox" type="text" name="user_email" size="30" maxlength="80" />
                    </span>
               </div>
           </div>
           <div class="basictable_57 basictable">
                <div class="row_01">
                    <span class="col_01">
<?php echo _VEHICLE_MANAGER_LABEL_RENT_REQUEST_MAILING; ?>:<br />
<?php
            //    editorArea('editor1', '', 'user_mailing', '400', '200', '30', '5');
              ?>
<textarea name ="user_mailing"></textarea>
                    </span>
                    <span class="col_02">
                <br />
                <p>
                    <?php echo _VEHICLE_MANAGER_LABEL_RENT_REQUEST_FROM; ?>:<br />
                    <?php echo JHtml::_('calendar',date("Y-m-d"), 'rent_from','rent_from','%Y-%m-%d' );  ?>    
                </p>
                <p>
                    <?php echo _VEHICLE_MANAGER_LABEL_RENT_REQUEST_UNTIL; ?>:<br />
                    <?php echo JHtml::_('calendar',date("Y-m-d"), 'rent_until','rent_until','%Y-%m-%d' ); ?>    
                </p>
                    </span>
                </div>
           </div>
           
<?php } ?>
            <br/>
            <div class="basictable_58 basictable page_navigation">
                <div class="row_02">
                         <?php
                         $paginations = $arr;
                    if ($paginations && ( $pageNav->total > $pageNav->limit )) {
                        echo $pageNav->getPagesLinks( ); 
                    }
                         ?>
                </div>
                <div class="row_03">
                    <span class="col_01">
<?php
                    if ($params->get('show_rentstatus') && $params->get('show_rentrequest') && !$params->get('rent_save')) {// ____
?>
                                    <br />
                              <!--      <input type="submit" name="submit" value="<?php echo _VEHICLE_MANAGER_LABEL_BUTTON_RENT_REQU; ?>" class="button" />
                                    <br />-->
<?php
                    } else if ($params->get('show_rentstatus') && $params->get('show_rentrequest') && $params->get('rent_save')) {// && $available)
?>
                                    <input type="button" class="button" value="<?php echo _VEHICLE_MANAGER_LABEL_BUTTON_RENT_REQU_SAVE; ?>" onclick="vm_rent_request_submitbutton()" />
                        <?php } else {
 ?>
                        &nbsp;
                        <?php
                    }
                        ?>
                    </span>
                </div>
            </div>
              <input type="hidden" name="option" value="<?php echo $option;?>"/>
              <input type="hidden" name="task" value="save_rent_request_vehicle"/>
    <?php
        if($option != 'com_vehiclemanager'){
    ?>
              <input type="hidden" name="tab" value="getmyvehiclestab"/>
              <input type="hidden" name="is_show_data" value="1"/>
    <?php
        }
    ?>
              <input type="hidden" name="Itemid" value="<?php echo $Itemid; ?>"/>
              <input type="hidden" name="vehicleid" value="<?php echo $rows[0]->id;?>"/>
            </form>
                        <!--<?php
                        if ($is_exist_sub_categories) {
                        ?>
<?php positions_vm($params->get('singlecategory07')); ?>
                <div class="componentheading<?php echo $params->get('pageclass_sfx'); ?>">
<?php echo _VEHICLE_MANAGER_LABEL_FETCHED_SUBCATEGORIES . " : " . $params->get('category_name'); ?></div>
<?php positions_vm($params->get('singlecategory08')); ?>
<?php
                            HTML_vehiclemanager::listCategories($params, $categories, $catid, $tabclass, $currentcat);
                        }
?>-->
<div class="basictable_59">
	<?php mosHTML::BackButton($params, $hide_js); ?>
</div>

<?php positions_vm($params->get('singlecategory09')); ?>
               
          <?php if (!$params->get('wrongitemid')){
    if ($params->get('show_input_add_vehicle')) HTML_vehiclemanager::showAddButton();
        positions_vm($params->get('singlecategory10'));
    //if ($params->get('show_input_add_suggest')) HTML_vehiclemanager::showSuggestion($params, 2, $catid, $Itemid);
}
        //positions_vm($params->get('singlecategory11'));
?>

<style type="text/css">
#list img.little{
    /*height: <?php echo $params->get('minifotohigh');?>px;
    width:<?php echo $params->get('minifotowidth');?>px;*/
}
.okno_V {
    width: <?php echo $vehiclemanager_configuration['fotogallery']['width']+10;?>px;
    height: <?php echo $vehiclemanager_configuration['fotogallery']['high']+90;?>px;
}
.okno_V img {
    max-height: <?php echo $vehiclemanager_configuration['fotogallery']['high'];?>px;
}
.okno_V .textvehicle {
    width:<?php echo $vehiclemanager_configuration['fotogallery']['width'];?>px;
}
</style>
