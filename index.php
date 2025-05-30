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

<div id="preloader"></div>
<div class="overlay"></div>

<body class="hero start-page">

<!-- Szampan -->
<img src="img/champagne.png" alt="champagne" class="start-left" />

<!-- Balony -->
<img src="img/balloons2.png" alt="balloons" class="start-right" />



<div class="start-center">
    <h1>Eventify</h1>
    <a class="hero-button" onclick="togglePopup('formPopup')">Lets Party!</a>

<div id="formPopup" class="form-container popup">
    <form class="form1" id="selectionForm">
            <div class="step">
                <h2>Zapisy</h2>
                    <div id="1step" class="checkbox-group">

                        <label for="miejscowosc">
                            Miejscowość: <input class="label-1step" type="text" name="Miejscowosc" style="padding:36px;font-size:1.6rem;text-align:center">
                        </label>
                        <label for="osoby">
                            Ilość osob: <input class="label-1step" type="number" name="Osoby" style="padding:36px;font-size:1.6rem;text-align:center">
                        </label>
                        <label>
                            Data: <input class="label-1step" type="date" name="Data" style="padding:36px;font-size:1.6rem;text-align:center">
                        </label>

                        
                    </div>

                    <div class="step-buttons"> 
                        <button class="hero-button" type="button" onclick="nextStep()">Dalej</button>
                        <button class="hero-button" onclick="togglePopup('formPopup')">Zamknij</button>
                    </div>
                </div>

            <!-- Drinks -->
            <div class="step">
                <h2>Napoje</h2>
                <div class="checkbox-group">
                    <?php foreach ($napoje as $item) : ?>
                            <label>
                                <input type="checkbox" name="Napoje" value="<?php echo $item['Name']; ?>">
                                <?php echo $item['Name']; ?>
                        </label><br>
                    <?php endforeach; ?>
                </div>

                <div class="step-buttons"> 
                    <button class="hero-button" type="button" onclick="nextStep()">Dalej</button>
                    <button class="hero-button" onclick="togglePopup('formPopup')">Zamknij</button>
                </div>
            </div>

            <!-- Alkohols -->
            <div id="alkohole" class="step">
                <h2>Alkohole</h2>

                <div class="checkbox-group">
                    <?php foreach ($alkohole as $item) : ?>
                        <label>
                            <input type="checkbox" name="Alkohole" value="<?php echo $item['Name']; ?>">
                            <?php echo $item['Name']; ?>

                        </label><br>
                    <?php endforeach; ?>
                </div>

                <div class="step-buttons">>
                    <button class="hero-button" type="button" onclick="nextStep()">Dalej</button>
                    <button class="hero-button" type="button" onclick="prevStep()">Cofnij</button>
                </div>
                <div class="step-buttons">
                    <button class="hero-button" onclick="togglePopup('formPopup')">Zamknij</button>
                </div>

            </div>

            <!-- Snaks -->
            <div class="step">
                <h2>Przekąski</h2>
                <div class="checkbox-group">
                    <?php foreach ($przekaski as $item) : ?>
                        <label>
                            <input type="checkbox" name="Przekaski" value="<?php echo $item['Name']; ?>">
                            <?php echo $item['Name']; ?>

                        </label><br>
                    <?php endforeach; ?>
                </div>

                <div class="step-buttons">
                        <button class="hero-button" type="button" onclick="nextStep()">Dalej</button>
                        <button class="hero-button" type="button" onclick="prevStep()">Cofnij</button>
                </div>
                <div class="step-buttons">
                        <button class="hero-button" onclick="togglePopup('formPopup')">Zamknij</button>
                </div>
            </div>

            <!-- Supply -->
            <div class="step">
                <h2>Zaopatrzenie</h2>

                <div class="checkbox-group">
                    <?php foreach ($zaopatrzenie as $item) : ?>
                        <label>
                            <input type="checkbox" name="Zaopatrzenie" value="<?php echo $item['Name']; ?>">
                            <?php echo $item['Name']; ?>
                        </label><br>
                    <?php endforeach; ?>
                </div>

                <div class="step-buttons">
                    <button class="hero-button" type="button" onclick="prevStep()">Cofnij</button>
                    <button class="hero-button" onclick="togglePopup('formPopup')">Zamknij</button>
                </div>
                <div class="step-buttons">
                    
                    <button class="hero-button" type="button" onclick="submitForm()">Podsumowanie</button>
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
        <button class="hero-button" onclick="togglePopup('summaryPopup')">Zamknij</button>
    </div>
</div>


    
<script src="script.js"></script>
</body>
</html>
