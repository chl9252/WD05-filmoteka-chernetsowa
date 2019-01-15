<?php 


require('config.php');
require('database.php');
require('functions/login-function.php');

$link = db_connect();

$resultSuccess = "";
$resultInfo = "";
$resultError = "";
$errors = array();

require('models/films.php');



if ( @$_GET['action'] == 'delete') {

	$result = film_delete($link, $_GET['id']);

	if ($result) {
		$resultInfo = "Фильм был удален!";
	}
}

$films = films_all($link);

include('views/head.tpl');
include('views/notifications.tpl');
include('views/index.tpl');
include('views/footer.tpl');

