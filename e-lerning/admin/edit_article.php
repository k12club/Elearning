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
		case 'Update'	:	  $ArticleID=$_GET['ArticleID'];
								$Article=$_POST['txtArticle'];
								$Description=$_POST['txtDescription'];
								$UpdateDate=$_POST['dtUpdateDate'];
								$Signature=$_POST['txtSignature'];
								$update=update("article","Article='".$Article."',Description='".$Description."',UpdateDate='".$UpdateDate."',Signature='".$Signature."'","ArticleID='".$ArticleID."'");
								if($update){
									echo "<script>";
									echo "alert('ระบบทำการแก้ไขข้อมูล $Article เรียบร้อย');";
									echo "window.location='detail_article.php';";
									echo "</script>";	
								}
		break;	
	}
	$ArticleID=$_GET['ArticleID'];
	$select=select("article","ArticleID='".$ArticleID."'");
	$art=mysql_fetch_array($select);
?>
<body>
<div id="warp">
	<div id="header"></div>
    <div id="clear"></div>
    <div id="container">
    	<div id="container-left">
            <form action="?Act=Update&ArticleID=<?=$ArticleID;?>" method="post">
            <table width="93%" class="table-full margin">
              <tr>
                <td colspan="4"><div class="title green">แก้ไขบทความ</div></td>
              </tr>
              <tr>
                <td width="15%">หัวข้อบทความ</td>
                <td colspan="3"><input type="text" id="txtArticle" name="txtArticle" class="txtboxl"  value="<? echo $art['Article']; ?>" /></td>
              </tr>
              <tr>
                <td colspan="4">เนื้อหาบทความ</td>
              </tr>
              <tr>
                <td colspan="4"><textarea id="txtDescription" class="area-full" name="txtDescription"><? echo $art['Description']; ?></textarea></td>
              </tr>
              <tr>
                <td>แก้ไขวันที่</td>
                <td width="31%"><input type="date" class="txtbox" name="dtUpdateDate" value="<? echo date("Y-m-d");?>" /></td>
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
          	<? include ("menu.php"); ?>  	
        </div>
    </div>
    <div id="clear"></div>
    <div id="footer"></div>
</div>
<? } ?>
</body>
</html>