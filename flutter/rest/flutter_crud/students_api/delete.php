<?php
require("db.php");

$id = $_POST['id'];

$sql = "DELETE FROM students WHERE id = ?";
$results = $conn->prepare($sql);
$results->bind_param('i', $id);
$results->execute();

$conn->close();

if ($results > 0) {
	echo json_encode("success");
} else {
	echo json_encode("failed");
}
?>
