<table border="1">
<tr><th>アイテム一覧</th></tr>
<?php
	$items = array("混紡", "銅の短剣", "炎の剣", "聖なる盾", "勇者の鎧");
	for($i = 0; $i < count($items); $i++){
		echo "<tr><td>{$items[$i]}</td></tr>\n";
	}
?>
</table>
