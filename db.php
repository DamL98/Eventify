<?php

$host = 'localhost';
$user = 'root';
$password = ''; 
$dbname = 'eventify';

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

function getPrice($conn, $tableName){
    $sql = "SELECT Price FROM $tableName";
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

function priceTable(){

}


$napoje = getTableData($conn, 'drinks');
$alkohole = getTableData($conn, 'alcohol');
$przekaski = getTableData($conn, 'snaks');
$zaopatrzenie = getTableData($conn, 'additional_supply');

$napojePrice = getPrice($conn, 'drinks');
$alkoholePrice = getPrice($conn, 'alcohol');
$przekaskiPrice = getPrice($conn, 'snaks');
$zaopatrzeniePrice = getPrice($conn, 'additional_supply');