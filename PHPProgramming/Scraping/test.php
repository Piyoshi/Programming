<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PHP掲示板</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<?php
	// simple_html_dom.phpをインクルード
	include_once('./simplehtmldom_1_5/simple_html_dom.php');

	// スクレイピングしたURLを指定
	$html = file_get_html('http://b.hatena.ne.jp/');

	// 引っ張るものを指定してa要素を$elementに代入
	foreach($html->find('a[class="entry-link"]') as $element){
		// $element(a要素)のhrefの後ろにbrタグを入れて吐き出す
		echo $element->href . "\n"  . '<br>';
	}
?>
</body>
