<?php
require_once "db.php";

header('Content-Type: application/json');



// Pobierz dane z żądania POST
$data = json_decode(file_get_contents('php://input'), true);

// Możesz tutaj przeprowadzić walidację lub przetworzyć dane
$response = [];
// $response = [...$napojePrice, ...$alkoholePrice];

foreach ($data as $key => $values) {
    $response[$key] = $values; // Przykładowa odpowiedź zwraca te same dane
}

// Zwróć dane w formacie JSON

// require_once "podsumowanie.php";

echo json_encode($response);