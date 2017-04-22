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
<script>
	var eng=/^([a-z0-9]+)$/
	function checkVal(){
		
		if(document.getElementById('pwPassword').value != document.getElementById('pwCoPassword').value){
			alert('รหัสผ่านไม่ตรงกัน');
			document.getElementById('pwCoPassword').focus();
			return false;	
		}
		
		if(document.getElementById('txtName').value == ''){
			alert('กรุณากรอกชื่อของทา่น');
			document.getElementById('txtName').focus();
			return false;	
		}
		
		if(document.getElementById('txtLastname').value == ''){
			alert('กรุณากรอกนามสกุล');
			document.getElementById('txtLastname').focus();
			return false;	
		}
		
		if(document.getElementById('txtCard').value.length < 13){
			alert('กรุณากรอกรหัสบัตรประชนให้ครบถ้วน');
			document.getElementById('txtCard').focus();
			return false;	
		}
	}
</script>
<body>
<?
	$Username=$_GET['Username'];
	$select=select("member","Username='".$Username."'");
	$member=mysql_fetch_array($select);
	$Act=$_GET['Act'];
	switch($Act){
		case 'UpdateMember'	:	$Username=$_GET['Username'];
									$Name=$_POST['txtName'];
									$Lastname=$_POST['txtLastname'];
									$Card=$_POST['txtCard'];
									$update=update("member","Name='".$Name."',Lastname='".$Lastname."',Card='".$Card."'","Username='".$Username."'");
									if($update){
										echo "<script>";
										echo "alert('ระบบทำการแก้ไขข้อมูลสมาชิกเรียบร้อย');";
										echo "window.location='index.php';";
										echo "</script>";	
									}
	}
?>
<div id="warp">
	<div id="login"><? include("login.php"); ?></div>
    <div id="clear"></div>
	<div id="header"></div>
    <div id="clear"></div>
    <div id="header-menu"><? include("/top_menu.php"); ?></div>
    <div id="clear"></div>
    <div id="container">
    	<div id="container-left">
        <form action="?Act=UpdateMember&Username=<?=$Username;?>" method="post">
        <table class="table-full margin">
          <tr>
            <td colspan="2"><div class="green">สมัครสมาชิก</div></td>
          </tr>
          <tr>
            <td width="15%">ชื่อผู้ใช้</td>
            <td width="85%"><? echo $member['Username']; ?></td>
          </tr>
          <tr>
            <td>รหัสผ่านใหม่</td>
            <td><? echo $member['Password']; ?></td>
          </tr>
          <tr>
            <td>ชื่อจริง</td>
            <td><input type="text" id="txtName" class="txtbox" name="txtName" value="<? echo $member['Name']; ?>" /></td>
          </tr>
          <tr>
            <td>นามสกุล</td>
            <td><input type="text" id="txtLastname" class="txtbox" name="txtLastname" value="<? echo $member['Lastname']; ?>" /></td>
          </tr>
          <tr>
            <td>รหัสบัตรประชาชน</td>
            <td><? echo $member['Card']; ?></td>
          </tr>
          <tr>
            <td>คะแนนสอบ</td>
            <td><? echo $member['Point']." คะแนน"; ?></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="แก้ไขสมาชิก" onclick="return checkVal();" /></td>
          </tr>
        </table>
        </form>
    	</div>
        <div id="container-right">
 		<? include ("menu.php"); ?>
        </div>
    </div>
    <div id="clear"></div>
    <div id="footer"></div>
</div>
</body>
</html>