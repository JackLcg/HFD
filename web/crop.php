<?php
$x = $_REQUEST['x'];
$y = $_REQUEST['y'];
$format = $_REQUEST['format'];
$site = $_REQUEST['site'];
$surl = 'http://jbxue.com/screenshot_it.php?site='.$site.'&x='.$x.'&y='.$y.'&format='.$format;
if($_REQUEST['format'] == 'PNG') {
$ifm = 'png';
} else {
$ifm = 'jpg';
}
$imt = 'image/'.$ifm;
$ifn = 'screenshot.'.$ifm;
if(isset($_REQUEST['preview'])) {
$iurl = 'http://域名/子目录/screenshot_it.php?site='.$site.'&x='.$x.'&y='.$y.'&format='.$format;
//例如：http://jbxue.com/screenshot_it.php?site='.$site.'&x='.$x.'&y='.$y.'&format='.$format;
$gwptitle = $_REQUEST['site'].' www.jbxue.com';
include_once("../css.php");
//可以删除
echo '<div>';
echo '&raquo; <b>点击图片下载截图！</div></b><br/><a href="'.$iurl.'"><img src="'.$iurl.'" width="240" height="320" /></a><br />';
} else {
header("Content-type: $imt");
header("Content-Disposition: attachment; filename= $ifn");
readfile($surl);
}
?>