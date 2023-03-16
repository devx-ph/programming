<?php
$server = '127.0.0.1';
$user = 'root';
$password = '';
$database = 'mydb';

$conn = new mysqli($server, $user, $password, $database, 3306);

if ($conn->connect_error) {
	die("Connection failed" . $conn->connect_error);
}
?>
