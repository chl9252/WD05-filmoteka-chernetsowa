<!-- Разные миксины по одному, которые понадобятся. Для логотипа, бейджа, и т.д.-->
<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8" />
	<title>[Людмила Чернецова] - Фильмотека</title>
	<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"/><![endif]-->
	<meta name="keywords" content="" />
	<meta name="description" content="" /><!-- build:cssVendor css/vendor.css -->
	<link rel="stylesheet" href="libs/normalize-css/normalize.css" />
	<link rel="stylesheet" href="libs/bootstrap-4-grid/grid.min.css" />
	<link rel="stylesheet" href="libs/jquery-custom-scrollbar/jquery.custom-scrollbar.css" /><!-- endbuild -->
	<!-- build:cssCustom css/main.css -->
	<link rel="stylesheet" href="./css/main.css" /><!-- endbuild -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800&amp;subset=cyrillic-ext" rel="stylesheet">
	<!--[if lt IE 9]><script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->
</head>

<body class="index-page">
	<div class="container user-content">
		<nav class="nav header-admin mb-50">
			<a class="admin-nav__link" href="index.php">Все фильмы</a>
			<?php	if (isAdmin()) {?>
				<a class="admin-nav__link" href="new.php">Добавить новый</a>
				<?php } ?>
		
			<a class="admin-nav__link" href="request.php">Указать информацию</a>
			<?php	if (!isAdmin()) {?>
			<a class="admin-nav__link" href="login.php">Вход для админа</a>
			<?php } ?>
			<?php	if (isAdmin()) {?>
					<a class="admin-nav__link" href="logout.php">Выход для админа</a>
			<?php } ?>
		</nav>

		
		<div class="mb-50">
			<?php if(isset($_COOKIE['user-name'])){ ?>
			Привет, <?=$_COOKIE['user-name']?> !
			<?php } ?>
			<?php if(isset($_COOKIE['user-city'])){ ?>
			 Из <?=$_COOKIE['user-city']?>!
			<?php } ?>

			<?php	if (isAdmin()) {?>
			Привет, <?=$_SESSION['user']?> !
			<?php } ?>
		</div>



