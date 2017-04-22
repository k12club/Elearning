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
	function checkVal(){
		for(i=1;i<=10;i++){
			var rdo1=document.getElementById('Answer'+i+'_1').checked;
			var rdo2=document.getElementById('Answer'+i+'_2').checked;
			var rdo3=document.getElementById('Answer'+i+'_3').checked;
			var rdo4=document.getElementById('Answer'+i+'_4').checked;
			if(rdo1 == false && rdo2 == false && rdo3 == false && rdo4 == false){
				alert('คุณยังไม่ได้เลือกคำตอบที่ '+i);
				return false;
			}	
		}	
	}
</script>
<body>
<?
	
	$selectPoint=select("member","Username='".$_SESSION['Username']."'");
	$Bypass=mysql_fetch_array($selectPoint);
	if($_SESSION['Username'] == ""){
		echo "<script>";
		echo "alert('กรุณาล๊อคอินเข้าสู่ระบบ');";
		echo "window.location='index.php';";
		echo "</script>";
	}else if($Bypass['FristPoint']!=0){
	
		$select=select("article","1=1 ORDER BY CreateDate DESC LIMIT 1");
		$art=mysql_fetch_array($select);
									
		echo "<script>";
		echo "alert('คุณได้ทำแบบทดสอบก่อนเรียนไปแล้ว');";
		echo "window.location='article.php?no=1&ArticleID=".$art['ArticleID']."';";
		echo "</script>";
	
	}else{
	$Act=$_GET['Act'];
	switch($Act){
		case 'checkPoint'	:	  $AnswerTrue=$_POST['hdAnswerTrue'];
									for($i=1;$i<=10;$i++){
										$Answer[]=$_POST['Answer'.$i];
									}
									
									$Point=0;
									for($i=0;$i<count($Answer);$i++){
										if($Answer[$i]==$AnswerTrue[$i]){
											$Point=$Point+1;
										}	
									}
									
									$FristTest=$Point;
									$update=update("member","FristPoint='".$Point."'","Username='".$_SESSION['Username']."'");
										
									$select=select("article","1=1 ORDER BY CreateDate DESC LIMIT 1");
									$art=mysql_fetch_array($select);
									
									echo "<script>";
									echo "alert('คุณได้คำแนนแบบทดสอบก่อนเรียน $Point คะแนน');";
									echo "window.location='article.php?no=1&ArticleID=".$art['ArticleID']."';";
									echo "</script>";
								  
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
     	<form action="?Act=checkPoint" method="post">
        <table class="table-full margin">
          <tr>
            <td><div class="green">แบบทดสอบก่อนเรียน</div></td>
          </tr>
          <tr>
            <td>
            
				 <?
                $selectQue=select("question","1=1 ORDER BY rand() LIMIT 10");
                $no=0;
                while($que=mysql_fetch_array($selectQue)){
                    $no++;
                ?>
                <table class="table-full margin">
                  <tr>
                    <td width="17%" rowspan="2"><div class="no"><?=$no;?></div></td>
                    <td width="83%"><b>คำถาม :</b> <? echo $que['Question']; ?><input type="hidden" name="hdAnswerTrue[]" value="<?=$que['AnswerTrue'];?>" /></td>
                  </tr>
                  <tr>
                    <td>
                    <?
					$noA=0;
                    $selectAns=select("answer","QuestionID='".$que['QuestionID']."' ORDER BY rand()");
					while($ans=mysql_fetch_array($selectAns)){
						$noA++;
					?>
                    <b>คำตอบที่ <?=$noA;?></b><input type="radio" id="Answer<?=$no;?>_<?=$noA;?>" name="Answer<?=$no;?>" value="<?=$ans['Answer'];?>" /><? echo $ans['Answer'];?><br>
                    <? } ?>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2"><div class="line"></div></td>
                  </tr>
                </table>
                <? } ?>     
                      
            </td>
          </tr>
          <tr>
            <td><input type="submit" value="ส่งคำตอบ" onclick="return checkVal();" /></td>
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