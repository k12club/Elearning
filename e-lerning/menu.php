<table class="table-full">
  <tr>
    <td colspan="2"><div class="title green">บทความเรียนรู้</div></td>
  </tr>
<?
	$i=0;
	$select=select("article","1=1 ORDER BY CreateDate DESC");
	while($menu=mysql_fetch_array($select)){
		$i++;
?>  
  <tr>
    <td><img src="admin/images/icon/tools/Document2.png" width="20" height="20" /></td>
    <td><a href="article.php?no=<?=$i;?>&ArticleID=<?=$menu['ArticleID'];?>"><? echo $i." : ".$menu['Article']; ?></a></td>
  </tr>
  <tr>
    <td colspan="2"><div class="line"></div></td>
  </tr>
<? } ?>
</table>

