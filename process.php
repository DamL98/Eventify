<?php
header('Content-Type: application/json');

// Pobierz dane z żądania POST
$data = json_decode(file_get_contents('php://input'), true);

// Możesz tutaj przeprowadzić walidację lub przetworzyć dane
$response = [];
foreach ($data as $key => $values) {
    $response[$key] = $values; // Przykładowa odpowiedź zwraca te same dane
}

// Zwróć dane w formacie JSON
echo json_encode($response);