<?php include("db.php");?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">

    <title>Eventify</title>
</head>
<body class="hero start-page">

<!-- Szampan -->
<img src="img/champagne.png" alt="champagne" class="start-left" />

<!-- Balony -->
<img src="img/balloons.png" alt="balloons" class="start-right" />



<div class="start-center">
    <h1>Eventify</h1>
    <a class="hero-button" onclick="togglePopup('formPopup')">Lets Party!</a>

<div id="formPopup" class="form-container popup">
    <form class="form1" id="selectionForm">

            <!-- Drinks -->
            <div class="step">
                <h2>Napoje</h2>
                <div class="checkbox-group">
                    <?php foreach ($napoje as $item) : ?>
                            <label>
                                <input type="checkbox" name="napoje" value="<?php echo $item['ID']; ?>">
                                <?php echo $item['Name']; ?><!--&nbsp</br><label>Waga: </label>
                                <?php #echo $item['Size']; ?>&nbsp<label>Cena: </label>
                                <?php #echo $item['Price']; ?> -->
                        </label><br>
                    <?php endforeach; ?>
                </div>

                <div class="step-buttons"> 
                    <button class="hero-button" type="button" onclick="nextStep()">Next</button>
                    <button class="hero-button" onclick="togglePopup('formPopup')">Close</button>
                </div>
            </div>

            <!-- Alkohols -->
            <div id="alkohole" class="step">
                <h2>Alkohole</h2>

                <div class="checkbox-group">
                    <?php foreach ($alkohole as $item) : ?>
                        <label>
                            <input type="checkbox" name="alkohole" value="<?php echo $item['ID']; ?>">
                            <?php echo $item['Name']; ?><!-- &nbsp</br><label>%: </label>
                            <?php #echo $item['Procent_of_alcohol']; ?>&nbsp</br><label>Cena: </label>
                            <?php #echo $item['Price']; ?>&nbsp</br><label>Moc: </label>
                            <?php #echo $item['Power']; ?> -->

                        </label><br>
                    <?php endforeach; ?>
                </div>

                <div class="step-buttons">>
                    <button class="hero-button" type="button" onclick="nextStep()">Next</button>
                    <button class="hero-button" type="button" onclick="prevStep()">Back</button>
                </div>
                <div class="step-buttons">
                    <button class="hero-button" onclick="togglePopup('formPopup')">Close</button>
                </div>

            </div>

            <!-- Snaks -->
            <div class="step">
                <h2>Przekąski</h2>
                <div class="checkbox-group">
                    <?php foreach ($przekaski as $item) : ?>
                        <label>
                            <input type="checkbox" name="przekaski" value="<?php echo $item['ID']; ?>">
                            <?php echo $item['Name']; ?>
                            <!-- &nbsp</br><label>Waga: </label>
                            <?php #echo $item['Size']; ?>&nbsp<label>Cena: </label>
                            <?php #echo $item['Price']; ?>  -->
                        </label><br>
                    <?php endforeach; ?>
                </div>

                <div class="step-buttons">
                        <button class="hero-button" type="button" onclick="nextStep()">Next</button>
                        <button class="hero-button" type="button" onclick="prevStep()">Back</button>
                </div>
                <div class="step-buttons">
                        <button class="hero-button" onclick="togglePopup('formPopup')">Close</button>
                </div>
            </div>

            <!-- Supply -->
            <div class="step">
                <h2>Zaopatrzenie</h2>

                <div class="checkbox-group">
                    <?php foreach ($zaopatrzenie as $item) : ?>
                        <label>
                            <input type="checkbox" name="zaopatrzenie" value="<?php echo $item['ID']; ?>">
                            <?php echo $item['Name']; ?><!-- &nbsp</br><label>Waga: </label>
                            <?php echo $item['Quantity']; ?>&nbsp<label>Cena: </label>
                            <?php #echo $item['Price']; ?>-->
                        </label><br>
                    <?php endforeach; ?>
                </div>

                <div class="step-buttons">
                    <button class="hero-button" type="button" onclick="prevStep()">Back</button>
                    <button class="hero-button" onclick="togglePopup('formPopup')">Close</button>
                </div>
                <div class="step-buttons">
                    
                    <button class="hero-button" type="button" onclick="submitForm()">End form</button>
                </div>
            </div>
    </form>
</div>
</div>

<div id="summaryPopup" class="popup">
    <h2>Podsumowanie</h2>
    <div id="summaryContent">
            
    </div>
    <div class="step-buttons">
        <button class="hero-button" onclick="togglePopup('summaryPopup')">Close</button>
    </div>
</div>


    
<script src="script.js"></script>
</body>
</html>
