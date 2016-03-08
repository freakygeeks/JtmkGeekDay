<?php
	$dbhost = 'localhost';
	$dbname = 'geekday';
	$dbuser = 'dbusername';
	$dbpass = 'dbpassword';
	$appname = "Geek Day Competition";
	
	$connection = new mysqli($dbhost, $dbuser, $dbpass, $dbname);
	if ($connection -> connect_error) die ($connection -> connect_error);
	
	function createTable($name, $query) //check table exist, if not table is created
	{
		queryMysql("CREATE TABLE IF NOT EXISTS $name($query)");
		echo "Table '$name' created or already exists.<br>";
	}
	
	function queryMysql($query) //issue query to mysql, if fail output error
	{
		global $connection;
		$result = $connection -> query($query);
		if (!$result) die ($connection -> error);
		return $result;
	}
	
	function sanitizeString($var) //remove potentially malicious code from user input
	{
		global $connection;
		$var = strip_tags($var);
		$var = htmlentities($var);
		$var = stripslashes($var);
		return $connection -> real_escape_string($var);
		
	}
?>




