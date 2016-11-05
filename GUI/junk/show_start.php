<?php session_start();
if(!isset($_SESSION['endpic']))
        $_SESSION['endpic']="2Be";
 ?>
<html><head><meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="./js/balloon.config.js"></script>
 <script type="text/javascript" src="./js/balloon.js"></script>
 <script type="text/javascript" src="./js/box.js"></script>
 <script type="text/javascript" src="./js/yahoo-dom-event.js"></script>
 <script type="text/javascript" src="./js/toggle.js"></script>
  
 <script type="text/javascript">
   // white balloon with default configuration
   // (see http://gmod.org/wiki/Popup_Balloons)
   var balloon    = new Balloon;
   balloon.balloonImage = 'balloon_ie.png';

   // plain balloon tooltip
   var tooltip  = new Balloon;
   BalloonConfig(tooltip,'GPlain');

   // fading balloon
   var fader = new Balloon;
   BalloonConfig(fader,'GFade');   

   // a plainer popup box
   var box         = new Box;
   BalloonConfig(box,'GBox');

   // a box that fades in/out
   var fadeBox     = new Box;
   BalloonConfig(fadeBox,'GBox');
   fadeBox.bgColor     = 'black';
   fadeBox.fontColor   = 'white';
   fadeBox.borderStyle = 'none';
   fadeBox.delayTime   = 200;
   fadeBox.allowFade   = true;
   fadeBox.fadeIn      = 750;
   fadeBox.fadeOut     = 200;

 </script>


</head><body bgcolor="black" link="black" vlink="blue"><font color="white"><h1>Locations</h1>
<?php
function remove_stray_characters($input ) {
// get rid of </br> and trailing or leading blanks
$output0=explode("</br>", $input);
$output1=explode(" ",$output0[0]);
 
return($output1[0]);
}
$startpic0  = $_GET['startpic'];
$startpic=remove_stray_characters($startpic0);
$_SESSION['startpic']=$startpic;
$endpic=$_SESSION['endpic'];
echo "<table border=\"1\">";
echo "<tr>";
echo "<td><img src=\"pix/",$startpic,".jpg\" height=\"120\" width=\"120\"></td><td><img src=\"pix/smallright.jpg\" height=\"70\" width=\"80\"></td></td><td><img src=\"pix/",$endpic,".jpg\" height=\"120\" width=\"120\"></td>";
echo "</tr>";
echo "</table>";
echo "<a href=\"getroutes.php?xlabel=",$startpic,"&ylabel=",$endpic,"\"><h1>Go</h1><img src=\"pix/smallright.jpg\" height=\"140\" width=\"160\"> </a>";
?>

<table border="1">
  <tr>
 <td class="tt"><span onmouseover="box.showTooltip(event,&#39;Route: East Door; &lt;br&gt;&lt;a href=\&#39;show_start.php?startpic=125\&#39;&gt;START HERE: &lt;a href=\&#39;show_dest.php?endpic=125\&#39;&gt; END HERE&lt;/span&gt;&#39;,1,275)"> <img src="pix/125.jpg" height="200" width="200"></span></td>
<td class="tt"><span onmouseover="box.showTooltip(event,&#39;Route: Lobby; &lt;br&gt;&lt;a href=\&#39;show_start.php?startpic=142\&#39;&gt;START HERE: &lt;a href=\&#39;show_dest.php?endpic=142\&#39;&gt; END HERE&lt;/span&gt;&#39;,1,275)"> <img src="pix/142.jpg" height="200" width="200"></span></td>
 <td class="tt"><span onmouseover="box.showTooltip(event,&#39;Route: Chapel; &lt;br&gt;&lt;a href=\&#39;show_start.php?startpic=134\&#39;&gt;START HERE: &lt;a href=\&#39;show_dest.php?endpic=134\&#39;&gt; END HERE&lt;/span&gt;&#39;,1,275)"> <img src="pix/134.jpg" height="200" width="200"></span></td>
</tr>
<tr>
<td class="tt"><span onmouseover="box.showTooltip(event,&#39;Route: Basement; &lt;br&gt;&lt;a href=\&#39;show_start.php?startpic=121\&#39;&gt;START HERE: &lt;a href=\&#39show_dest.php?endpic=121\&#39;&gt; END HERE&lt;/span&gt;&#39;,1,275)"> <img src="pix/121.jpg" height="200" width="200"></span></td>
<td class="tt"><span onmouseover="box.showTooltip(event,&#39;Route: North Door; &lt;br&gt;&lt;a href=\&#39;show_start.php?startpic=180\&#39;&gt;START HERE: &lt;a href=\&#39;show_dest.php?&endpic=180\&#39;&gt; END HERE&lt;/span&gt;&#39;,1,275)"> <img src="pix/180.jpg" height="200" width="200"></span></td>
<td class="tt"><span onmouseover="box.showTooltip(event,&#39;Route: Balcony; &lt;br&gt;&lt;a href=\&#39;show_start.php?startpic=146\&#39;&gt;START HERE: &lt;a href=\&#39;show_dest.php?&endpic=146\&#39;&gt; END HERE&lt;/span&gt;&#39;,1,275)"> <img src="pix/146.jpg" height="200" width="200"></span></td>
</tr>
 
</table>
 

</body></html>