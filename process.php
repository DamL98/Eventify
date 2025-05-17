<?php
require_once "db.php";
header('Content-Type: application/json');

// pobiera json z http request
$data = json_decode(file_get_contents('php://input'), true);

$response = [];

foreach ($data as $key => $values) {
    $response[$key] = $values;
}

echo json_encode($response);