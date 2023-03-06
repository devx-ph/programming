<?php
require("db.php");
$sql = "SELECT * FROM students ";
$results = mysqli_query($conn, $sql);
$records = [];

$conn->close();

while ($rows = mysqli_fetch_assoc($results)) {
	$records[] = $rows;
}

echo json_encode($records);
?>
