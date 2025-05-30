<?php
$host = 'localhost';
$user = 'root';
$password = ''; 
$dbname = 'eventify';

$conn = new mysqli($host, $user, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// dane z tabeli
function getTableData($conn, $tableName) {
    $sql = "SELECT * FROM $tableName";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $data = [];
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return $data;
    }
    return [];
}

// globalne
$napoje = getTableData($conn, 'drinks');
$alkohole = getTableData($conn, 'alcohol');
$przekaski = getTableData($conn, 'snaks');
$zaopatrzenie = getTableData($conn, 'additional_supply');
