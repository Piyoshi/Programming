<?php
	// simple_html_dom.phpをインクルード
	include_once('./simplehtmldom_1_5/simple_html_dom.php');

	// 番組表を取得するホームページ(HTML)のURL
	$html = file_get_html('http://asp.tvguide.or.jp/asp_iframe/epg?ccode=goo&media_code=02&region_code=tokyo&pack_code=&channel_genre_code=&date=20130921&hour_start=5&hour_end=29&page=1&url=http%3A//tv.goo.ne.jp/epg.html%3Fmedia_code%3D02%26region_code%3Dtokyo%26pack_code%3D%26channel_genre_code%3D%26date%3D20130921%26hour_start%3D5%26hour_end%3D29%26page%3D1');
//	echo $html . "\n";
	foreach($html->find('td[id="program"]') as $element){
	//	preg_match('@<tr><td>住所</td><td>(.*?)</td></tr>@usi',x$element,$matches);
		foreach($element->find('table') as $e){
			echo $e . "\n";
		}
//		echo $element . "\n";
		//foreach($element->find('div') as $e){
		//	echo $e->innertext . "\n";
		//}
	//	$e = $element->find('div');
	//	echo $e[0]->plaintext;
	}

?>
