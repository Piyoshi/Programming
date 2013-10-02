<?php
	$nums = array(5, 120, 134, 46);
	foreach($nums as $n){
		echo "$n ";
	}
?>
<table border="1">
<tr><th>アイテム名</th><th>売値</th></tr>
<?php
	$items = array(
		"棍棒" => 50,
		"銅の短剣" => 150,
		"炎の剣" => 1000
	);
	foreach($items as $k => $v){
		echo "<tr><td>$k</td><td>$v</td></tr>\n";
	}
?>
</table>
