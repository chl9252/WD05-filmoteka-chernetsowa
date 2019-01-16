<?php 

require('config.php');
require('database.php');


$link = db_connect();
require('models/films.php');
require('functions/login-function.php');

$resultSuccess = "";
$resultInfo = "";
$resultError = "";
$errors = array();



// проверка формы и сохранение


if (array_key_exists('updateFilm', $_POST)) {
	
	// ошибки
	if ( $_POST['title'] == '') {
		$errors[] = "Необходимо ввести название фильма";
	}
	if ( $_POST['genre'] == '') {
		$errors[] = "Необходимо ввести жанр фильма";
	}
	if ( $_POST['year'] == '') {
		$errors[] = "Необходимо ввести год фильма";
	}



	if ( empty($errors)) {

		$result = film_update($link,$_POST['title'],$_POST['genre'],$_POST['year'], $_GET['id'],$_POST['description']);
			if ($result) {
				$resultSuccess = "Фильм успешно обновлен!";
			} else {
				$resultError = "Фильм НЕ обновлен! Произошла ошибка";
			}	

	}
}

	$film = film_get($link,$_GET['id']);
	

	include('views/head.tpl');
	include('views/notifications.tpl');
	include('views/edit.tpl');
	include('views/footer.tpl');
