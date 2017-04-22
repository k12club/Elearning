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
		case 'Del'	:	 $MemberID=$_GET['MemberID'];
							$Username=$_GET['Username'];
							$delect=delete("member","MemberID='".$MemberID."'");
							if($delect){
								echo "<script>";
								echo "alert('ระบบทำการลบ $Username เรียบร้อย');";
								echo "window.location='detail_member.php';";
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
      
            <table class="table-full margin">
              <tr>
                <td colspan="4"><div class="title green">รายการสมาชิก</div></td>
              </tr>
              <tr>
                <td width="12%"><div class="center">ลำดับ</div></td>
                <td width="62%"><div class="margin">ชื่อสมาชิก</div></td>
                <td width="15%"><div class="center">แก้ไข</div></td>
                <td width="11%"><div class="center">ลบ</div></td>
              </tr>
              <tr>
                <td colspan="4"><div class="line"></div></td>
              </tr>
              <?
              $select=select("member","1=1");
			  $no=0;
			  while($member=mysql_fetch_array($select)){
				  $no++;
			  ?>
              <tr>
                <td><div class="center"><?=$no;?></div></td>
                <td><div class="margin"><? echo $member['Username']; ?></div></td>
                <td><div class="center"><img src="images/icon/tools/Write2.png" class="cusor" onclick="window.location='edit_member.php?&MemberID=<?=$member['MemberID'];?>';" /></div></td>
                <td><div class="center"><img src="images/icon/tools/Trash.png" class="cusor" onclick="window.location='?Act=Del&MemberID=<?=$member['MemberID'];?>&Username=<?=$member['Username']?>';" /></div></td>
              </tr>
              <tr>
                <td colspan="4"><div class="line"></div></td>
              </tr>
              <? } ?>           
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