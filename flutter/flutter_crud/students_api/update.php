<?php
require("db.php");

$name = $_POST['name'];
$email = $_POST['email'];
$address = $_POST['address'];
$id = $_POST['id'];

$sql = "UPDATE students SET name = '$name', email = '$email', address = '$address' WHERE id = '$id'";
$results = mysqli_query($conn,  $sql);

$conn->close();

if ($results > 0) {
	echo json_encode("success");
} else {
	echo json_encode("failed");
}
?>
