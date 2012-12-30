<?php  

	$DATABASE_NAME = "dealer_auto";
	$SERVER_NAME = "localhost";
	$USER_NAME = "root";
	$PASSWORD = "";
	$TITLE = "Dealer Auto Vlad";

$con = mysql_connect("$SERVER_NAME","$USER_NAME","$PASSWORD");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

$DATABASE = mysql_select_db($DATABASE_NAME,$con);
?>