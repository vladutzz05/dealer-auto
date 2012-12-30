<?php 
	include '../config.php';
	mysql_select_db($DATABASE_NAME);
	if(!isset($_SESSION['user']) && isset($_POST['username'])) {
	$password=md5($_POST['password']);
	$query="SELECT id FROM users WHERE username='$_POST[username]' AND password='$password'";
	
	//var_dump(mysql_query($query));
	if(mysql_fetch_row(mysql_query($query)))
	{
		session_start();
		$_SESSION['user'] = $_POST['username'];
		//var_dump($_SESSION['user']);
		//var_dump(session_id());
	}
	
}
header('Location: ../index.php?page=admin');?>