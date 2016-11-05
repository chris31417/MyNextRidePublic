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


      global $Itemid, $doc, $mosConfig_live_site;
      $doc->addStyleSheet( $mosConfig_live_site.'/components/com_vehiclemanager/includes/vehiclemanager.css' );
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

<?php positions_vm($params->get('ownerlist01'));?>
      <div class="componentheading"><h3><?php echo $params->get('header');?></h3></div>
      <?php if($params->get('ownerslist_show')){?>
<?php positions_vm($params->get('ownerlist02'));?>

        <div class="owners_table basictable">

	<table cellpadding="4">
	    <tr align="center">
	      <td class="col_title_owners"><?php echo _VEHICLE_MANAGER_LABEL_OWNERS;?></td>
	      <td width="30%" class="col_title_vehicles"><?php echo _VEHICLE_MANAGER_LABEL_NUMBER_VEHICLES;?></td>
	    </tr>

        <?php foreach($ownerslist as $owner){?>
          <tr align="center" class="row_users_vm">
            <td class="col_01">
              <a href="index.php?option=com_vehiclemanager&amp;task=view_user_vehicles&amp;name=<?php echo $owner->name;?>&amp;Itemid=<?php echo $Itemid;?>">
                <?php echo $owner->name;?>
              </a>
            </td>
            <td class="col_02">
	      <?php echo $owner->vehicles;?>
	    </td>
          </tr>
        <?php }?>

	    <tr align="center">
	      <td colspan="2">
		<?php if($params->get('symb_list_str')){?>
		    <span class="col_list_str">
		      <?php echo $params->get('symb_list_str');?>
		    </span>
		<?php } ?>
	      </td>
	    </tr>

      </table>

          <div class="page_navigation">
	      <div class="row_02">
                  <?php if($pageNav->total > $pageNav->limit) {
                    echo $pageNav->getPagesLinks( ); 
                  }?>
	      </div>
	  </div>

        </div>

      <?php
 positions_vm($params->get('ownerlist03'));
      }
      else{
        echo '<div>'._VEHICLE_MANAGER_ERROR_ACCESS_PAGE.'</div>';
      }
?>
