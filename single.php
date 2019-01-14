<?php 

require('config.php');
require('database.php');

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

$film = film_get($link, $_GET['id']);

include('views/head.tpl');
include('views/notifications.tpl');
include('views/film-single.tpl');
include('views/footer.tpl');

