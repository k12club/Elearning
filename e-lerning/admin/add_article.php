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
<script src="module/editor/jscripts/tiny_mce/tiny_mce.js"></script>
<script>
	function checkVal(){
		if(document.getElementById('txtArticle').value == ''){
			alert('กรุณากรอกชื่อเรื่องบทความ');
			document.getElementById('txtArticle').focus();
			return false;
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
		
	include("editor.php");
	$Act=$_GET['Act'];
	switch($Act){
		case 'Add'	:	 $Article=$_POST['txtArticle'];
							$Description=$_POST['txtDescription'];
							$CreateDate=$_POST['dtCreateDate'];
							$Signature=$_POST['txtSignature'];
							$insert=insert("article","Article,Description,CreateDate,Signature","'".$Article."','".$Description."','".$CreateDate."','".$Signature."'");
							if($insert){
								echo "<script>";
								echo "alert('ระบบทำการ $Article เรียบร้อย');";
								echo "window.location='detail_article.php';";
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
                <td colspan="4"><div class="title green">เพิ่มบทความ</div></td>
              </tr>
              <tr>
                <td width="16%">หัวข้อบทความ</td>
                <td colspan="3"><input type="text" id="txtArticle" name="txtArticle" class="txtboxl"  value="" /></td>
              </tr>
              <tr>
                <td colspan="4">เนื้อหาบทความ</td>
              </tr>
              <tr>
                <td colspan="4"><textarea id="txtDescription" class="area-full" name="txtDescription"></textarea></td>
              </tr>
              <tr>
                <td>สร้างวันที่</td>
                <td width="30%"><input type="date" class="txtbox" name="dtCreateDate" value="<? echo date("Y-m-d");?>" /></td>
                <td width="19%">ผู้เขียน</td>
                <td width="35%"><input type="text" class="txtbox" name="txtSignature" value="Administator" /></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><input type="submit" class="btngreen" value="ตกลง" onclick="return checkVal();" /></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
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