<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

header('Content-Type: application/json');
include 'db.php';

$course_id = intval($_GET['course_id']); // Ensure course_id is treated as an integer

$sql = "SELECT module_id, name, course_id FROM modules WHERE course_id = $course_id";
$result = $conn->query($sql);

$modules = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $row['module_id'] = (int)$row['module_id'];  // Ensure module_id is an integer
        $row['course_id'] = (int)$row['course_id'];  // Ensure course_id is an integer
        $modules[] = $row;
    }
}

echo json_encode($modules);
