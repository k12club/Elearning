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
<script src="admin/module/inc/scripts/jquery-1.8.1.min.js"></script>
<script>
	var eng=/^([a-z0-9]+)$/
	function checkVal(){
		if(document.getElementById('txtUsername').value == ''){
			alert('กรุณากรอกชื่อผู้ใช้');
			document.getElementById('txtUsername').focus();
			return false;
		}else if(!document.getElementById('txtUsername').value.match(eng)){
			alert('a-z0-9เท่านั้น');
			document.getElementById('txtUsername').focus();
			return false;
		}
		
		if(document.getElementById('pwPassword').value == ''){
			alert('กรุณากรอกรหัสผ่าน');
			document.getElementById('pwPassword').focus();
			return false;	
		}
		
		if(document.getElementById('pwCoPassword').value == ''){
			alert('กรุณายืนยันรหัสผ่าน');
			document.getElementById('pwCoPassword').focus();
			return false;	
		}
		
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
		
		if(document.getElementById('imgBypass').value != 'On'){
			alert('รหัสบัตรประชาชนนี้มีผู้ใช้งานแล้ว');
			document.getElementById('txtCard').focus();
			return false;	
		}
	}
	
	function same(txtbox,span,low,len){
		var trimtxtbox=jQuery.trim(txtbox.val());
		var img=$('<img>').attr('id','imgBypass');
		if(trimtxtbox == ''){
			img.attr({'src':'admin/images/icon/tools/false.png','value':'Off'});;
			span.text(img);	
		}else if(trimtxtbox.length < low || trimtxtbox.length > len){
			span.text(low+'-'+len+'อักษร');	
		}else{
			$.ajax({url:'admin/module/inc/php/check.php',
				async:false,
				cache:false,
				global:false,
				type:'POST',
				data:'&trimtxtbox='+trimtxtbox,
				success: function(result){
					var obj=jQuery.parseJSON(result);
					if(obj == ''){
						img.attr({'src':'admin/images/icon/tools/true.png','value':'On'});
						span.html(img);	
					}else{
						$.each(obj,function(key,val){
							if(trimtxtbox == val[val['Field']]){
								img.attr({'src':'admin/images/icon/tools/false.png','value':'Off'});
							}else{
								img.attr({'src':'admin/images/icon/tools/true.png','value':'On'});
							}
							span.html(img);
						});	
					}	
				}
			});	
		}
	}
</script>
<body>
<?
	$Act=$_GET['Act'];
	switch($Act){
		case 'Add'	:	 $Username=$_POST['txtUsername'];
							$Password=$_POST['pwPassword'];
							$Name=$_POST['txtName'];
							$Lastname=$_POST['txtLastname'];
							$Card=$_POST['txtCard'];
							
							$num_rows=num_rows("member","Card='".$Card."'");
							if($num_rows == 0){
								$insert=insert("member","Username,Password,Name,Lastname,Card","'".$Username."','".$Password."','".$Name."','".$Lastname."','".$Card."'");
								if($insert){
									echo "<script>";
									echo "alert('ระบบทำการสมัครสมาชิกเรียบร้อย');";
									echo "window.location='index.php';";
									echo "</script>";	
								}
							}else{
								echo "<script>";
								echo "alert('รหัสบัตรชาชน $Card มีอยู่แล้ว');";
								echo "window.location='insert_member.php';";
								echo "</script>";	
							}
		break;	
	}
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
        <form action="?Act=Add" method="post">
        <table class="table-full margin">
          <tr>
            <td colspan="2"><div class="green">สมัครสมาชิก</div></td>
          </tr>
          <tr>
            <td width="15%">ชื่อผู้ใช้</td>
            <td width="85%"><input type="text" id="txtUsername" class="txtbox" name="txtUsername" value="" /></td>
          </tr>
          <tr>
            <td>รหัสผ่าน</td>
            <td><input type="password" id="pwPassword" class="txtbox" name="pwPassword" value="" /></td>
          </tr>
          <tr>
            <td>ยืนยันรหัสผ่าน</td>
            <td><input type="password" id="pwCoPassword" class="txtbox" name="pwCoPassword" value="" /></td>
          </tr>
          <tr>
            <td>ชื่อจริง</td>
            <td><input type="text" id="txtName" class="txtbox" name="txtName" value="" /></td>
          </tr>
          <tr>
            <td>นามสกุล</td>
            <td><input type="text" id="txtLastname" class="txtbox" name="txtLastname" value="" /></td>
          </tr>
          <tr>
            <td>รหัสบัตรประชาชน</td>
            <td><input type="text" id="txtCard" class="txtbox" name="txtCard" value="" onkeyup="same($('#txtCard'),$('#mySpan'),13,13);" /><span id="mySpan"><img src="admin/images/icon/tools/false.png" id="imgBypass" value="" /></span></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="สมัครสมาชิก" onclick="return checkVal();" /></td>
          </tr>
        </table>
        </form>
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