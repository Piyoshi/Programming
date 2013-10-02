<?php
	#explode, implode関数
	$men = 'うどん,そば,ラーメン,パスタ';
	$array = explode(',', $men);
	print_r($array);
	echo "<br>\n";
	$men2 = implode('#', $array);
	echo "$men2\n<br>\n";
?>

<?php
	#mb_substr関数
	$str1 = '今日はうどんを食べました。';
	$sub = mb_substr($str1, 3, 3);
	echo $sub . "<br>\n";
?>

<?php
	#mb_strlen関数
	$str = 'こんにちは。';
	$num = mb_strlen($str);
	echo "[{$str}]の長さは{$num}です。<br>\n";
?>
