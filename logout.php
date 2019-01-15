<?php 

require('config.php');
require('functions/login-function.php');

unset($_SESSION['user']);
session_destroy();
header('Location:'.HOST.'index.php');

