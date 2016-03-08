<?php

require_once 'header.php';

if (isset($_POST['netTeamName']) && isset($_POST['netFirst']) && isset($_POST['netSecond']) && isset($_POST['netFirstIC']) && isset($_POST['netSecondIC']) && isset($_POST['netFirstNum']) && isset($_POST['netSecondNum']))
{
		$netTeamName = sanitizeString($_POST['netTeamName']);
		$netFirst = sanitizeString($_POST['netFirst']);
		$netSecond = sanitizeString($_POST['netSecond']);
		$netFirstIC = sanitizeString($_POST['netFirstIC']);
		$netSecondIC = sanitizeString($_POST['netSecondIC']);
		$netFirstNum = sanitizeString($_POST['netFirstNum']);
		$netSecondNum = sanitizeString($_POST['netSecondNum']);
		
		queryMysql("ALTER TABLE netrider AUTO_INCREMENT=1");
		queryMysql("INSERT INTO netrider SET netTeamName='$netTeamName', netFirst='$netFirst', netSecond='$netSecond', netFirstIC='$netFirstIC', netSecondIC='$netSecondIC', netFirstNum='$netFirstNum',  netSecondNum='$netSecondNum'");
}

?>