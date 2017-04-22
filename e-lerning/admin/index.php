<?
	error_reporting(0);
	session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/korea.css" rel="stylesheet" type="text/css" />
<title>Untitled Document</title>
</head>
<script>
	function checkVal(){
		if(document.getElementById('txtUsername').value == ''){
			alert('กรุณากรอกUsername');
			document.getElementById('txtUsername').focus();
			return false;
		}
		if(document.getElementById('pwPassword').value == ''){
			alert('กรุณากรอกPassword');
			document.getElementById('pwPassword').focus();
			return false;
		}
	}
</script>
<body>
<?
	$arrUsername=array('butsaba','chairat');
	$arrPassword=array('54101220162','54101220175');
	$Act=$_GET['Act'];
	switch($Act){
		case 'Check'	:	   $Username=$_POST['txtUsername'];
								$Password=$_POST['pwPassword'];
								for($i=0;$i<count($arrUsername);$i++){
									if($Username == $arrUsername[$i] && $Password == $arrPassword[$i]){
										$_SESSION['Admin']="Administator";
										break;	
									}else{
										continue;	
									}
								}
								if($_SESSION['Admin']!= ""){
									echo "<script>";
									echo "alert('ยินดีต้อนรับเข้าสู่ระบบ');";
									echo "window.location='add_article.php';";
									echo "</script>";	
								}else{
									echo "<script>";
									echo "alert('Username นี้ไม่มีอยู่ในระบบ');";
									echo "window.location='index.php';";
									echo "</script>";										
								}
		break;	
	}
?>
<div id="warp">
	<form action="?Act=Check" method="post">
    <table class="table-full">
      <tr>
        <td width="31%">&nbsp;</td>
        <td colspan="2"><div class="green">ล๊อคอินผู้ดูแลระบบ</div></td>
        <td width="37%">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td width="14%">Username</td>
        <td width="18%"><input type="text" id="txtUsername" name="txtUsername" value="" /></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>Password</td>
        <td><input type="password" id="pwPassword" name="pwPassword" value="" /></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><input type="submit" value="เข้าสู้ระบบ" onclick="return checkVal();" /><input type="reset" value="ล้างข้อมูล" /></td>
        <td>&nbsp;</td>
      </tr>
    </table>
    </form>
</div>
</body>
</html>