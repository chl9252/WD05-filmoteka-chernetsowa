<?php 


function films_all($link){

	$query = "SELECT * FROM films";
	$films = array();

	$result = mysqli_query($link, $query);

	if ($result) {
		while ( $row = mysqli_fetch_array($result)) {
			$films[] = $row;
		}
	}

	return $films;
}

function film_new($link,$title,$genre,$year,$description){

	$db_file_name = "";

	if(isset($_FILES['photo']['name']) && $_FILES['photo']['tmp_name'] != "") {

		$fileName = $_FILES["photo"]["name"];
		$fileTmpLoc = $_FILES["photo"]["tmp_name"];
		$fileType = $_FILES["photo"]["type"];
		$fileSize = $_FILES["photo"]["size"];
		$fileErrorMsg = $_FILES["photo"]["error"];
		$kaboom = explode(".",$fileName);
		$fileExt = end($kaboom);

		list($width,$height) = getimagesize($fileTmpLoc); 
		if($width < 10 || $height < 10) {
			$errors[] = 'Картинка не имеет размеров';
		}

		$db_file_name = rand(10000000,99999999).".".$fileExt;

		if($fileSize > 10485760) {
			$errors[] = "Картинка не может быть более 10 Мбайт";
		} else if (!preg_match("/\.(gif|jpg|jpeg|png)$/i",$fileName)){
			$errors[] = "Картинка не gif|jpg|jpeg|png";
			} else if ($fileErrorMsg ==1) {
				$errors[] = "Неизвестная ошибка при добавлении картинки";
			}

		$photoFolderLocation = ROOT.'data/films/full/';
		$photoFolderLocationMin = ROOT.'data/films/min/';

		// начнем перемещать

		$uploadfile = $photoFolderLocation.$db_file_name;
		$moveResult = move_uploaded_file($fileTmpLoc,$uploadfile);
		if($moveResult != true) {
			$errors[] = 'Файл не загружен';
		}

		// делаем миниатюру

		require_once(ROOT."functions/image_resize_imagick.php");
		$target_file = $photoFolderLocation.$db_file_name;
		$resized_file = $photoFolderLocationMin.$db_file_name;
		$wmax = 137;
		$hmax = 200;
		$img = createThumbnail($target_file,$wmax,$hmax);
		$img->writeImage($resized_file);

		}

		// запись в БД
	$query = "INSERT INTO films (title, genre, year, description, photo) VALUES (
	'". mysqli_real_escape_string($link, $title) ."',
	'". mysqli_real_escape_string($link, $genre) ."',
	'". mysqli_real_escape_string($link, $year) ."',
	'". mysqli_real_escape_string($link, $description) ."',
	'". mysqli_real_escape_string($link, $db_file_name) ."'
	)";

	if ( mysqli_query($link, $query) ) {
		$result = true;
	} else {
		$result = false;
	}
	return $result;
}

function film_get($link,$id){
	$query = "SELECT * FROM films WHERE id= ' " . mysqli_real_escape_string($link, $id ) ." ' LIMIT 1";
	$film = array();

	$result = mysqli_query($link, $query);

	if ($result) {
		$film = mysqli_fetch_array($result); 
	}
	//print_r($film);
	return $film;
}

function film_update($link,$title,$genre,$year,$id,$description){

	$db_file_name="";
	 
	if(isset($_FILES['photo']['name']) && $_FILES['photo']['tmp_name'] != "") {

		$fileName = $_FILES["photo"]["name"];
		$fileTmpLoc = $_FILES["photo"]["tmp_name"];
		$fileType = $_FILES["photo"]["type"];
		$fileSize = $_FILES["photo"]["size"];
		$fileErrorMsg = $_FILES["photo"]["error"];
		$kaboom = explode(".",$fileName);
		$fileExt = end($kaboom);

		list($width,$height) = getimagesize($fileTmpLoc); 
		if($width < 10 || $height < 10) {
			$errors[] = 'Картинка не имеет размеров';
		}

		$db_file_name = rand(10000000,99999999).".".$fileExt;

		if($fileSize > 10485760) {
			$errors[] = "Картинка не может быть более 10 Мбайт";
		} else if (!preg_match("/\.(gif|jpg|jpeg|png)$/i",$fileName)){
			$errors[] = "Картинка не gif|jpg|jpeg|png";
			} else if ($fileErrorMsg ==1) {
				$errors[] = "Неизвестная ошибка при добавлении картинки";
			}

		$photoFolderLocation = ROOT.'data/films/full/';
		$photoFolderLocationMin = ROOT.'data/films/min/';

		// начнем перемещать

		$uploadfile = $photoFolderLocation.$db_file_name;
		$moveResult = move_uploaded_file($fileTmpLoc,$uploadfile);
		if($moveResult != true) {
			$errors[] = 'Файл не загружен';
		}

		// делаем миниатюру

		require_once(ROOT."functions/image_resize_imagick.php");
		$target_file = $photoFolderLocation.$db_file_name;
		$resized_file = $photoFolderLocationMin.$db_file_name;
		$wmax = 137;
		$hmax = 200;
		$img = createThumbnail($target_file,$wmax,$hmax);
		$img->writeImage($resized_file);

		}

		if($db_file_name==""){
			$query = "UPDATE films SET title = '". mysqli_real_escape_string($link, $title) ."',
			genre = '". mysqli_real_escape_string($link, $genre) ."',
			year = '". mysqli_real_escape_string($link, $year) ."',
			description = '". mysqli_real_escape_string($link, $description) ."'
			WHERE id = ". mysqli_real_escape_string($link, $id) ." LIMIT 1";
		} else {
			$query = "UPDATE films SET title = '". mysqli_real_escape_string($link, $title) ."',
			genre = '". mysqli_real_escape_string($link, $genre) ."',
			year = '". mysqli_real_escape_string($link, $year) ."',
			description = '". mysqli_real_escape_string($link, $description) ."',
			photo = '". mysqli_real_escape_string($link, $db_file_name) ."'
			WHERE id = ". mysqli_real_escape_string($link, $id) ." LIMIT 1";
		}


	$result = mysqli_query($link, $query);

	return $result;
}

// удаление

function film_delete($link,$id){
	$query = "DELETE FROM films WHERE id = ' " . mysqli_real_escape_string($link, $id) ." ' LIMIT 1";
	
	mysqli_query($link, $query);

	if (mysqli_affected_rows($link) > 0) {
		$result = true;
	} else {
		$result = false;
	}
	return $result;
}

 ?>