<?
	error_reporting(0);
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
<script>
	function checkVal(){
		if(document.getElementById('txtQuestion').value == ''){
			alert('กรุณากรอกคำถาม');
			document.getElementById('txtQuestion').focus();
			return false;
		}
		
		for(i=1;i<=4;i++){
			if(document.getElementById('txtAnswer'+i).value == ''){
				alert('กรุณากรอกคำตอบที่'+i);
				document.getElementById('txtAnswer'+i).focus();
				return false;
				break;	
			}	
		}
		
		if(document.getElementById('txtAnswerTrue').value ==''){
			alert('กรุณากรอกคำตอบที่ถูกต้อง');
			document.getElementById('txtAnswerTrue').focus();
			return false;	
		}else{
			var permiss=0;
			for(i=1;i<=4;i++){
				if(document.getElementById('txtAnswerTrue').value == document.getElementById('txtAnswer'+i).value){
					permiss=1;
					break;
				}
			}
			if(permiss==0){
				alert('คำตอบไม่เหมือนกันกรุณากรอกใหม่');
				document.getElementById('txtAnswerTrue').focus();
				return false;	
			}	
		}
	}
</script>
<body>
<?
	if($_SESSION['Admin'] == ""){
		echo "<script>";
		echo "alert('กรุณาล๊อคอินเข้าสู่ระบบ');";
		echo "window.location='index.php';";
		echo "</script>";
	}else{

	$Act=$_GET['Act'];
	switch($Act){
		case 'Add'	:	 $Question=$_POST['txtQuestion'];
							$Answer=$_POST['txtAnswer'];
							$AnswerTrue=$_POST['txtAnswerTrue'];
							$insertQuestion=insert("question","Question,AnswerTrue","'".$Question."','".$AnswerTrue."'");
							if($insertQuestion){
								$QuestionID=mysql_insert_id();
								for($i=0;$i<4;$i++){
									$insertAnswer=insert("answer","QuestionID,Answer","'".$QuestionID."','".$Answer[$i]."'");	
								}
								echo "<script>";
								echo "alert('ระบบทำการเพิ่มคำถาม $Question เรียบร้อย');";
								echo "window.location='detail_question.php';";
								echo "</script>";	
							}
		break;	
	}
?>
<div id="warp">
	<div id="header"></div>
    <div id="clear"></div>
    <div id="container">
    	<div id="container-left">
        <form action="?Act=Add" method="post">  
        <table class="table-full margin">
          <tr>
            <td colspan="4"><div class="title green">เพิ่มคำถาม</div></td>
          </tr>
          <tr>
            <td width="15%">คำถาม</td>
            <td colspan="3"><input type="text" id="txtQuestion" class="txtboxl" name="txtQuestion" value="" /></td>
          </tr>
          <tr>
          	<td colspan="4">
          <? for($i=1;$i<=4;$i++){ ?>
				คำตอบที่ <?=$i;?>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				<input type='text' id='txtAnswer<?=$i;?>' class="txtbox" name='txtAnswer[]' value=''><br>	
		  <? } ?>
          	</td>
          </tr>
          <tr>
            <td>คำตอบที่ถูกต้อง</td>
            <td width="63%"><input type="text" id="txtAnswerTrue" class="txtbox" name="txtAnswerTrue" value="" /></td>
            <td width="5%">&nbsp;</td>
            <td width="17%">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="submit" class="btngreen" value="เพิ่มคำถาม" onclick="return checkVal();" /><input type="reset" class="btnred" value="ล้างข้อมูล" /></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td colspan="4"><div class="line"></div></td>
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
<? } ?>
</body>
</html>