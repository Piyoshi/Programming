<?php
	$kemono = array("犬", "猫", "猿", "豚");
	echo "配列の1番目は";
	echo $kemono[0];
	echo "です。<br>";
	echo "配列の3番目は{$kemono[2]}で, 4番目は$kemono[3]です。<br>";
?>

<?php
	$kemono2 = array(
		"犬" => "ワン",
		"猫" => "ニャー",
		"猿" => "ウッキー",
		"豚" => "ブフィ"
	);
	echo "猫の鳴き声は{$kemono2["猫"]}です。\n<br>";
	echo "豚の鳴き声は{$kemono2["豚"]}です。\n<br>";
?>
