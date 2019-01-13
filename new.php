<?php 

require('config.php');
require('database.php');


$link = db_connect();
require('models/films.php');

$resultSuccess = "";
$resultInfo = "";
$resultError = "";
$errors = array();

// проверка формы и сохранение


if (array_key_exists('newFilm', $_POST)) {
	
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

		$result = film_new($link,$_POST['title'],$_POST['genre'],$_POST['year'],$_POST['description']);
			if ($result) {
				$resultSuccess = "Фильм успешно добавлен!";
			} else {
				$resultError = "Фильм НЕ добавлен! Произошла ошибка";
			}	
	}
}
	include('views/head.tpl');
	include('views/notifications.tpl');
	include('views/film-new.tpl');
	include('views/footer.tpl');
