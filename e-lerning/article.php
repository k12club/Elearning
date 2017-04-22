<?
	session_start();
	include ("admin/module/inc/php/config.inc.php");
	include ("admin/module/inc/php/function.inc.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="admin/css/korea.css" rel="stylesheet" type="text/css" />
<title>E-Learning</title>
</head>

<body>
<?
	$selectPoint=select("member","Username='".$_SESSION['Username']."'");
	$Bypass=mysql_fetch_array($selectPoint);
	if($_SESSION['Username'] == ""){
		echo "<script>";
		echo "alert('กรุณาล๊อคอินเข้าสู่ระบบ');";
		echo "window.location='index.php';";
		echo "</script>";
	}else if($Bypass['FristPoint']==0){
		echo "<script>";
		echo "alert('กรุณาทำแบบทดสอบก่อนเรียนก่อนเรียน');";
		echo "window.location='frist_test.php';";
		echo "</script>";	
	}else{
		
		$no=$_GET['no'];
		$ArticleID=$_GET['ArticleID'];
		$select=select("article","ArticleID='".$ArticleID."'");
		$arti=mysql_fetch_array($select);
?>
<div id="warp">
	<div id="login"><? include("/login.php"); ?></div>
    <div id="clear"></div>
	<div id="header"></div>
    <div id="clear"></div>
    <div id="header-menu"><? include("/top_menu.php"); ?></div>
    <div id="clear"></div>
    <div id="container">
    	<div id="container-left">
        <table class="table-full margin">
          <tr>
            <td colspan="2"><div class="title green">บทเรียนที่ <?=$no;?> : <? echo $arti['Article'];?> </div></td>
          </tr>
          <tr>
            <td colspan="2"><? echo str_replace("picture/editor/","admin/picture/editor/",$arti['Description']);?></td>
          </tr>
          <tr>
            <td width="46%">สร้างวันที่<? echo $arti['CreateDate'];?></td>
            <td width="54%"><div class="float-right">แก้วันที่<? echo $arti['UpdateDate'];?></div></td>
          </tr>
        </table>
    	</div>
        <div id="container-right">
 		<? include ("/menu.php"); ?>
        </div>
    </div>
    <div id="clear"></div>
    <div id="footer"></div>
</div>
<? } ?>
</body>
</html>