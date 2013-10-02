<?php
	if(file_exists('counter.txt')){
		echo "ファイルが存在します。";
	}else{
		echo "ファイルが存在しません。";
	}
?>

<?php
	$lines = file('file.txt');
	for($i = 0; $i < count($lines); $i++){
		echo $i+1;
		echo ":{$lines[$i]}<br>\n";
	}
?>
