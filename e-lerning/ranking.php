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
            <td colspan="3"><div class="green">ลำดับคะแนนหลังสอบ</div></td>
          </tr>
          <tr>
            <td width="18%"><div class="center">ลำดับที่</div></td>
            <td width="62%">ชื่อ-นามสกุล</td>
            <td width="20%"><div class="center">คะแนนหลังสอบ</div></td>
          </tr>
          <tr>
          	<td colspan="3"><div class="line"></div></td>
          </tr>
          <?
          $no=0;
		  $select=select("member","1=1 ORDER BY EndPoint DESC LIMIT 10");
		  while($ran=mysql_fetch_array($select)){
			  $no++;
		  ?>
          <tr>
            <td><div class="center"><?=$no;?></div></td>
            <td><? echo $ran['Name']." ".$ran['Lastname']; ?></td>
            <td><div class="center"><? echo $ran['EndPoint']; ?></div></td>
          </tr>
          <tr>
          	<td colspan="3"><div class="line"></div></td>
          </tr>
          <? } ?>
        </table>		
    	</div>
        <div id="container-right">
 		<? include ("/menu.php"); ?>
        </div>
    </div>
    <div id="clear"></div>
    <div id="footer"></div>
</div>
</body>
</html>