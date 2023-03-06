<?php
$server = '127.0.0.1';
$user = 'root';
$password = 'KR@0726$';
$database = 'mydb';

$conn = new mysqli($server, $user, $password, $database, 3306);

if ($conn->connect_error) {
	die("Connection failed" . $conn->connect_error);
}
?>
