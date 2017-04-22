<?
	session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="admin/css/korea.css" rel="stylesheet" type="text/css" />
<title>Untitled Document</title>
</head>

<body>
<?
	$Act=$_GET['Act'];
	switch($Act){
		case 'Login'	:	   $Username=$_POST['txtLogUsername'];
								$Password=$_POST['pwLogPassword'];
								$num_rows=num_rows("member","Username='".$Username."' AND Password='".$Password."'");
								if($num_rows == 1){
									$_SESSION['Username']=$Username;
									echo "<script>";
									echo "alert('ยินดีต้อนรับคุณ $Username');";
									echo "window.location='index.php';";
									echo "</script>";	
								}else{
									echo "<script>";
									echo "alert('ผู้ใช้นี้ไม่มีอยู่ในระบบ');";
									echo "window.location='index.php';";
									echo "</script>";	
								}
		break;
		case 'Logout'	:	  session_destroy();
								echo "<script>";
								echo "alert('คุณได้ออกจากระบบเรียบร้อย');";
								echo "window.location='index.php';";
								echo "</script>";
		ิbreak;			
	}
	
	if($_SESSION['Username'] == ''){
?>
<form action="?Act=Login" method="post">
<table class="float-right">
  <tr>
    <td width="17%">ชื่อผู้ใช้</td>
    <td width="25%"><input type="text" id="txtLogUsername" name="txtLogUsername" value="" /></td>
    <td width="19%">รหัสผ่าน</td>
    <td width="30%"><input type="password" id="txtLogPassword" name="pwLogPassword" value="" /></td>
    <td width="9%"><input type="submit" value="เข้าสู่ระบบ" /></td>
    <td width="9%">&nbsp;</td>
  </tr>
</table>
</form>
<? }else{?>
<table class="float-right">
  <tr>
    <td>ยินดีต้อนรับ</td>
    <td><?=$_SESSION['Username'];?></td>
    <td><input type="button" value="แก้ไขข้อมูลส่วนตัว" onclick="window.location='edit_member.php?Username=<?=$_SESSION['Username'];?>';" /></td>
    <td><input type="button" value="ออกจากระบบ" onclick="window.location='?Act=Logout';" /></td>
  </tr>
</table>
<? } ?>
</body>
</html>