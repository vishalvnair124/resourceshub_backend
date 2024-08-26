<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

include 'db.php';

$module_id = $_GET['module_id'];

$sql = "SELECT * FROM Topics WHERE module_id = $module_id";
$result = $conn->query($sql);

$topics = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $topics[] = $row;
    }
}

header('Content-Type: application/json');
echo json_encode($topics);

$conn->close();
