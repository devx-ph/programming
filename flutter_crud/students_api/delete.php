<?php
require("db.php");

$id = $_POST['id'];

$sql = "DELETE FROM students WHERE id = '$id'";
$results = mysqli_query($conn, $sql);

$conn->close();

if ($results > 0) {
	echo json_encode("success");
} else {
	echo json_encode("failed");
}
?>
