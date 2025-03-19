<?php include("db.php");?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Eventify</title>
</head>
<body>
    <h1>Eventify</h1>
    <button onclick="togglePopup('formPopup')">Otworz</button>

    <div id="formPopup" class="popup">
        <form id="selectionForm">
            <!-- Drinks -->
            <div class="step">
                <h2>Napoje</h2>
                <?php foreach ($napoje as $item) : ?>
                    <label>
                        <input type="checkbox" name="napoje" value="<?php echo $item['ID']; ?>">
                        <?php echo $item['Name']; ?>&nbsp</br><label>Waga: </label>
                        <?php echo $item['Size']; ?>&nbsp<label>Cena: </label>
                        <?php echo $item['Price']; ?>

                    </label><br>
                <?php endforeach; ?>
                <button type="button" onclick="nextStep()">Dalej</button>
            </div>

            <!-- Alkohols -->
            <div class="step">
                <h2>Alkohole</h2>
                <?php foreach ($alkohole as $item) : ?>
                    <label>
                        <input type="checkbox" name="alkohole" value="<?php echo $item['ID']; ?>">
                        <?php echo $item['Name']; ?>&nbsp</br><label>%: </label>
                        <?php echo $item['Procent_of_alcohol']; ?>&nbsp</br><label>Cena: </label>
                        <?php echo $item['Price']; ?>&nbsp</br><label>Moc: </label>
                        <?php echo $item['Power']; ?>

                    </label><br>
                <?php endforeach; ?>
                <button type="button" onclick="prevStep()">Wstecz</button>
                <button type="button" onclick="nextStep()">Dalej</button>
            </div>

            <!-- Snaks -->
            <div class="step">
                <h2>Przekąski</h2>
                <?php foreach ($przekaski as $item) : ?>
                    <label>
                        <input type="checkbox" name="przekaski" value="<?php echo $item['ID']; ?>">
                        <?php echo $item['Name']; ?>&nbsp</br><label>Waga: </label>
                        <?php echo $item['Size']; ?>&nbsp<label>Cena: </label>
                        <?php echo $item['Price']; ?>
                    </label><br>
                <?php endforeach; ?>
                <button type="button" onclick="prevStep()">Wstecz</button>
                <button type="button" onclick="nextStep()">Dalej</button>
            </div>

            <!-- Supply -->
            <div class="step">
                <h2>Zaopatrzenie</h2>
                <?php foreach ($zaopatrzenie as $item) : ?>
                    <label>
                        <input type="checkbox" name="zaopatrzenie" value="<?php echo $item['ID']; ?>">
                        <?php echo $item['Name']; ?>&nbsp</br><label>Waga: </label>
                        <?php echo $item['Quantity']; ?>&nbsp<label>Cena: </label>
                        <?php echo $item['Price']; ?>
                    </label><br>
                <?php endforeach; ?>
                <button type="button" onclick="prevStep()">Wstecz</button>
                <button type="button" onclick="submitForm()">Zakończ</button>
            </div>
        </form>
        <button onclick="togglePopup('formPopup')">Zamknij</button>
    </div>

    <div id="summaryPopup" class="popup">
        <h2>Podsumowanie</h2>
        <div id="summaryContent"></div>
        <button onclick="togglePopup('summaryPopup')">Zamknij</button>
    </div>


    
<script src="script.js"></script>
</body>
</html>
