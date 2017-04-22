<?
	session_start();
	include ("module/inc/php/config.inc.php");
	include ("module/inc/php/function.inc.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/korea.css" rel="stylesheet" type="text/css" />
<title>Untitled Document</title>
</head>
<body>
<?
	if($_SESSION['Admin'] == ""){
		echo "<script>";
		echo "alert('กรุณาล๊อคอินเข้าสู่ระบบ');";
		echo "window.location='index.php';";
		echo "</script>";
	}else{
		
	$MemberID=$_GET['MemberID'];
	$select=select("member","MemberID='".$MemberID."'");
	$member=mysql_fetch_array($select);
?>
<div id="warp">
	<div id="header"></div>
    <div id="clear"></div>
    <div id="container">
    	<div id="container-left">
        <table class="table-full margin">
          <tr>
            <td colspan="2"><div class="green">ข้อมูลสมาชิก</div></td>
          </tr>
          <tr>
            <td width="15%">ชื่อผู้ใช้</td>
            <td width="85%"><? echo $member['Username']; ?></td>
          </tr>
          <tr>
            <td>ชื่อจริง</td>
            <td><? echo $member['Name']; ?></td>
          </tr>
          <tr>
            <td>นามสกุล</td>
            <td><? echo $member['Lastname']; ?></td>
          </tr>
          <tr>
            <td>รหัสบัตรประชาชน</td>
            <td><? echo $member['Card']; ?></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="button" value="กลับหน้าเดิม" onclick="window.location='detail_member.php';" /></td>
          </tr>
        </table>
    	</div>
        <div id="container-right">
 		<? include ("menu.php"); ?>
        </div>
    </div>
    <div id="clear"></div>
    <div id="footer"></div>
</div>
<? } ?>
</body>
</html>