<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

include 'db.php';

$topic_id = $_GET['topic_id'];

$sql = "SELECT * FROM Resources WHERE topic_id = $topic_id";
$result = $conn->query($sql);

$resources = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $resources[] = $row;
    }
}

header('Content-Type: application/json');
echo json_encode($resources);

$conn->close();
