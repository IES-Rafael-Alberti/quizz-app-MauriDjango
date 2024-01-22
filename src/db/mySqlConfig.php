<?php

$host = 'mysql';
$database = 'QuizApp';
$username = 'user';
$password = 'password';
$port = 3306;

$conn = mysqli_connect($host, $username, $password, $database. $port);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}