<?php
	// simple_html_dom.phpをインクルード
	include_once('./simplehtmldom_1_5/simple_html_dom.php');

	require('dbConnection.php');

	// 現在の日付
	date_default_timezone_set('Asia/Tokyo');
	$today = date('Ymd');
	echo $today . "\n";

	// 番組表を取得するホームページ(HTML)のURL
	$url = 'http://asp.tvguide.or.jp/api/epg?ccode=goo&pack_code=Tokyo&date' . $today . '&hour_start=5&hour_end=29&channel_offset=0&channel_limit=7';
	echo "$url" . "\n\n";
	echo "==============================================\n";

	// URLを利用して番組情報をスクレイピング
	$html = file_get_html($url);
	$html = str_replace("(", "", $html);
	$json = str_replace(")", "", $html);

	// 取得したJSONデータをでコードして連想配列に番組情報を格納
	$result = json_decode($json, true);
	$channels = $result['channels'];
//	var_dump($channels);

	
	foreach($channels as $channel){
		$station = $channel['station'];
		$programs = $channel['programs'];
//		echo "Station ID: " . $station['code'] . "\n";
		var_dump($station['code']);
		echo "Station Name: " . $station['name'] . "\n";

		$id;
		$stationSQL = "SELECT id,station_id FROM RadioStation";
		$stationInfos = mysql_query($stationSQL) or die(mysql_error());
		while($stationInfo = mysql_fetch_assoc($stationInfos)){
			var_dump($stationInfo['station_id']);
			echo "RadioStation id:" . $stationInfo['station_id'] . "\n";
			if($stationInfo['station_id'] === str_replace(" ", "", $station['code'])){
				$id = $stationInfo['id'];
				echo "breakします\n";
				break;
				echo "breakできてない？\n";	
			}
		}
//		echo "id(station):" . $id . "\n";
		
		foreach($programs as $program){
			$start = date('Y-m-d H-i-s',strtotime($program['start']));
			$end = date('Y-m-d H-i-s', strtotime($program['end']));
			$title = $program['title'];
			$sub = $program['sub_title'];
			$summary = $program['explanation'];

			$sql = sprintf('INSERT INTO ProgramInformation SET name="%s", start="%s", end="%s", radio_station_id="%d", summary="%s"', $title . $sub, $start, $end, intval($id), $summary);
			echo "sql:" . $sql ."\n\n";
			mysql_query($sql) or die(mysql_error());	
			echo "insert into ProgramInformation is succeed!\n";

			$sql = sprintf('SELECT id FROM ProgramInformation WHERE name="%s" AND start="%s" AND end="%s"', $title . $sub, $start, $end);
//			echo "sql: " . $sql . "\n\n";
			$programInformation = mysql_query($sql);
			$information = mysql_fetch_assoc($programInformation);
			$pid = intval($information['id']);
//			echo "pid: " . $pid . "\n\n";

			$sql = sprintf('INSERT INTO ChatRoom SET text="%s", program_information_id="%d"', " ", $pid);
//			echo "sql:" . $sql . "\n\n";
			
			mysql_query($sql) or die(mysql_error());
			echo "insert into ChatRoom is succeed!\n";
				
}
		echo "==============================================\n";
	}

?>


