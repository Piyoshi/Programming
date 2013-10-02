<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml-transitional.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>ポンクソフト連取</title>
</head>
<body>
	<form method="post" action="bbs_simple.php">
		<input type="text" name="toukou" size="60">
		<input type-"submit" value="送信">
	</form>
	<hr>
	<?php
		$ichiran = file_get_contents('bbs_simple.txt');
		if(@$_POST['toukou']){
			$ichiran = htmlspecialchars($_POST['toukou']) . "<hr>$ichiran";
			file_put_contents('bbs_simple.txt', $ichiran);
		}
		echo $ichiran;
	?>
</body>
</html>
