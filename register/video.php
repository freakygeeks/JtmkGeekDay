<?php

require_once 'header.php';

if (isset($_POST['vidTeamName']) && isset($_POST['vidFirst']) && isset($_POST['vidSecond']) && isset($_POST['vidThird']) && isset($_POST['vidFirstIC']) && isset($_POST['vidSecondIC']) && isset($_POST['vidThirdIC']) && isset($_POST['vidFirstNum']) && isset($_POST['vidSecondNum']) && isset($_POST['vidThirdNum']))
{
		$vidTeamName = sanitizeString($_POST['vidTeamName']);
		$vidFirst = sanitizeString($_POST['vidFirst']);
		$vidSecond = sanitizeString($_POST['vidSecond']);
		$vidThird = sanitizeString($_POST['vidThird']);
		$vidFirstIC = sanitizeString($_POST['vidFirstIC']);
		$vidSecondIC = sanitizeString($_POST['vidSecondIC']);
		$vidThirdIC = sanitizeString($_POST['vidThirdIC']);
		$vidFirstNum = sanitizeString($_POST['vidFirstNum']);
		$vidSecondNum = sanitizeString($_POST['vidSecondNum']);
		$vidThirdNum = sanitizeString($_POST['vidThirdNum']);
		
		queryMysql("ALTER TABLE video AUTO_INCREMENT=1");
		queryMysql("INSERT INTO video SET vidTeamName='$vidTeamName', vidFirst='$vidFirst', vidSecond='$vidSecond', vidThird='$vidThird', vidFirstIC='$vidFirstIC', vidSecondIC='$vidSecondIC', vidThirdIC='$vidThirdIC', vidFirstNum='$vidFirstNum',  vidSecondNum='$vidSecondNum', vidThirdNum='$vidThirdNum'");
}

?>