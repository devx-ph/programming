<?php
require("db.php");
$name = $_POST['name'];
$email = $_POST['email'];
$address = $_POST['address'];

$sql = "INSERT INTO students (name, email, address) VALUES (?,?,?)";
$results = $conn->prepare($sql);
$results->bind_param("sss", $name, $email, $address);
$results-> execute();

$conn->close();

if ($results > 0) {
	echo json_encode("success");
} else {
	echo json_encode("failed");
}
?>
