<?php 

require('config.php');
require('database.php');

$link = db_connect();
require('functions/login-function.php');
if ( isset($_POST['enter']) ){
//	print_r($_POST);
	$query = "SELECT * FROM users WHERE login= '".mysqli_real_escape_string($link, $_POST['login'])."' LIMIT 1";
	$user = array();

	$result = mysqli_query($link, $query);

	if ($result) {
		$user = mysqli_fetch_array($result); 
	}
	//print_r($film);
//print_r($user);
	$userName = $user['login'];
	$userPassword = $user['password'];

	if ( $_POST['login'] == $userName ) {
		if ( $_POST['password'] == $userPassword ) {
			$_SESSION['user'] = 'admin';
			header('Location:'.HOST.'index.php');
		} 
	}
}

	include('views/head.tpl');
	include('views/login.tpl');
	include('views/footer.tpl');
