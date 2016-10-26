<?php

require_once 'header.php';

if (isset($_POST['progTeamName']) && isset($_POST['progFirst']) && isset($_POST['progSecond']) && isset($_POST['progThird']) && isset($_POST['progFirstIC']) && isset($_POST['progSecondIC']) && isset($_POST['progThirdIC']) && isset($_POST['progFirstNum']) && isset($_POST['progSecondNum']) && isset($_POST['progThirdNum']))
{
		$progTeamName = sanitizeString($_POST['progTeamName']);
		$progFirst = sanitizeString($_POST['progFirst']);
		$progSecond = sanitizeString($_POST['progSecond']);
		$progThird = sanitizeString($_POST['progThird']);
		$progFirstIC = sanitizeString($_POST['progFirstIC']);
		$progSecondIC = sanitizeString($_POST['progSecondIC']);
		$progThirdIC = sanitizeString($_POST['progThirdIC']);
		$progFirstNum = sanitizeString($_POST['progFirstNum']);
		$progSecondNum = sanitizeString($_POST['progSecondNum']);
		$progThirdNum = sanitizeString($_POST['progThirdNum']);
		
		queryMysql("ALTER TABLE programming AUTO_INCREMENT=1");
		queryMysql("INSERT INTO programming SET progTeamName='$progTeamName', progFirst='$progFirst', progSecond='$progSecond', progThird='$progThird', progFirstIC='$progFirstIC', progSecondIC='$progSecondIC', progThirdIC='$progThirdIC', progFirstNum='$progFirstNum',  progSecondNum='$progSecondNum', progThirdNum='$progThirdNum'");
}

?>