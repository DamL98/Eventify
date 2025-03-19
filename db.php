<?php
// Połączenie z bazą danych
$host = 'localhost';
$user = 'root';
$password = ''; // Zmień, jeśli masz hasło do bazy danych
$dbname = 'Eventify';

$conn = new mysqli($host, $user, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Funkcja do pobierania danych z tabeli
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

$napoje = getTableData($conn, 'drinks');
$alkohole = getTableData($conn, 'alcohols');
$przekaski = getTableData($conn, 'snaks');
$zaopatrzenie = getTableData($conn, 'additional_supply');
