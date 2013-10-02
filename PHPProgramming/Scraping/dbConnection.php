<?php
	/*
	$link = new mysqli('210.138.138.29', 'intern_dev', 'intern', 'intern_dev');

	if($link->connect_errno){
		printf("Connect failed: %s\n", $link->connect_error);
		exit();
	}
	*/

	mysql_connect('210.138.138.29', 'intern_dev', 'intern') or die(mysql_error());
	mysql_select_db('intern_dev');
	mysql_query('SET NAMES UTF8');
?>
