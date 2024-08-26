<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

include 'db.php';

$search_term = $_GET['search_term'];

// Updated query to ensure module_id is included
$sql = "SELECT 
            t.topic_id, t.name AS topic_name, m.module_id, m.name AS module_name, c.name AS course_name
        FROM 
            Topics t
        JOIN 
            Modules m ON t.module_id = m.module_id
        JOIN 
            Courses c ON m.course_id = c.course_id
        WHERE 
            t.name LIKE '%$search_term%'
        OR 
            m.name LIKE '%$search_term%'";

$result = $conn->query($sql);

$search_results = [];
$modules = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $module_id = $row['module_id'];
        if (!isset($modules[$module_id])) {
            $modules[$module_id] = [
                'module_name' => $row['module_name'],
                'course_name' => $row['course_name'],
                'topics' => []
            ];
        }
        $modules[$module_id]['topics'][] = [
            'topic_id' => $row['topic_id'],
            'topic_name' => $row['topic_name']
        ];
    }
}

$search_results = array_values($modules);

header('Content-Type: application/json');
echo json_encode($search_results);

$conn->close();
