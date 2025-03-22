-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Mar 2025, 10:53
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `eventify`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `additional_supply`
--

CREATE TABLE `additional_supply` (
  `ID` int(1) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Quantity` int(1) NOT NULL,
  `Price` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `additional_supply`
--

INSERT INTO `additional_supply` (`ID`, `Name`, `Quantity`, `Price`) VALUES
(1, 'Sztućce bambusowe', 50, 28.57),
(2, 'Talerzyki papierowe', 100, 12.50),
(3, 'Kubki papierowe', 50, 13.90),
(4, 'Kieliszki jednorazowe', 50, 7.49),
(5, 'Czapki imprezowe', 20, 15.50),
(6, 'Kubki Czerwone beer pong', 50, 29.90),
(7, 'Piłeczki ping pong', 60, 35.00),
(8, 'Tacki Grillowe', 5, 10.50),
(9, 'Wykałaczki duże', 50, 10.50),
(10, 'Wykałaczki małe', 1000, 3.67);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `alcohol`
--

CREATE TABLE `alcohol` (
  `ID` int(1) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Size` float NOT NULL,
  `Procent_of_alcohol` float(5,1) NOT NULL,
  `Price` float(5,2) NOT NULL,
  `Power` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `alcohol`
--

INSERT INTO `alcohol` (`ID`, `Name`, `Size`, `Procent_of_alcohol`, `Price`, `Power`) VALUES
(1, 'Tyskie Gronie', 500, 5.2, 3.49, 0),
(2, 'Książęce Przeniczne', 500, 4.9, 4.99, 0),
(3, 'Książęce IPA', 500, 5.4, 5.15, 0),
(4, 'Książęce Czerwony Lager', 500, 4.9, 4.99, 0),
(5, 'Perła', 500, 5.6, 3.49, 0),
(6, 'Łomża Jasna Pełna', 500, 5.7, 3.49, 0),
(7, 'Żywiec', 500, 5.6, 3.49, 0),
(8, 'Carlsberg', 500, 5.0, 4.30, 0),
(9, 'Heineken', 500, 5.0, 4.30, 0),
(10, 'Carlo Rossi Red', 750, 11.5, 19.99, 0),
(11, 'Carlo Ross White', 750, 11.5, 19.99, 0),
(12, 'Carlo Ross Rose', 750, 11.5, 19.99, 0),
(13, 'Carlo Ross Refresh Peach', 750, 11.5, 19.99, 0),
(14, 'Carlo Ross Pink Moscato', 750, 11.5, 19.99, 0),
(15, 'Stock', 700, 40.0, 39.00, 1),
(16, 'Bols', 700, 40.0, 35.00, 1),
(17, 'Wyborowa', 700, 40.0, 35.00, 1),
(18, 'Stumbras z kłosem', 700, 40.0, 50.00, 1),
(19, 'Soplica', 700, 38.0, 32.00, 1),
(20, 'Ogiński', 700, 40.0, 44.00, 1),
(21, 'Pan Tadeusz', 700, 40.0, 44.00, 1),
(22, 'Biały Bocian', 700, 40.0, 40.00, 1),
(23, 'Ballantines Finest', 700, 40.0, 65.00, 1),
(24, 'Ballantines Brazill', 700, 30.0, 75.00, 1),
(25, 'Ballantines Passion', 700, 35.0, 75.00, 1),
(26, 'Jack Daniel\'s', 700, 40.0, 75.00, 1),
(27, 'Jim Beam', 700, 40.0, 75.00, 1),
(28, 'Jim Beam Apple', 700, 32.5, 78.00, 1),
(29, 'Jim Beam Honey', 700, 35.0, 78.00, 1),
(30, 'Tullamore', 700, 40.0, 80.00, 1),
(31, 'Jagermeister', 700, 35.0, 75.00, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drinks`
--

CREATE TABLE `drinks` (
  `ID` int(1) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Size` float(5,3) NOT NULL,
  `Price` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `drinks`
--

INSERT INTO `drinks` (`ID`, `Name`, `Size`, `Price`) VALUES
(1, 'Coca-Cola', 1.750, 8.49),
(2, 'Coca-Cola Zero', 1.750, 8.49),
(3, 'Pepsi', 1.750, 7.49),
(4, 'Pepsi MAX', 1.750, 7.49),
(5, 'Fanta', 1.750, 8.49),
(6, 'Sprite', 1.750, 8.49),
(7, '7up', 1.750, 7.49),
(8, 'Mirinda', 1.750, 7.49),
(9, 'Tymbark jabłko-mięta', 2.000, 5.79),
(10, 'Tymbark wiśnia-jabłko', 2.000, 5.79),
(11, 'Tymbark jabłko-brzoskwinia', 2.000, 5.79),
(12, 'Tymbark Jabłko', 1.000, 5.29),
(13, 'Schweppes Tonic', 1.000, 5.99),
(14, 'RedBull', 0.250, 6.49);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `snaks`
--

CREATE TABLE `snaks` (
  `ID` int(1) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Size` int(1) NOT NULL,
  `Price` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `snaks`
--

INSERT INTO `snaks` (`ID`, `Name`, `Size`, `Price`) VALUES
(1, 'Lays Solone', 130, 7.89),
(2, 'Lays Papryka', 130, 7.89),
(3, 'Lays Cebula', 130, 7.89),
(4, 'Crunchips Papryka', 140, 6.99),
(5, 'Crunchips Solone', 140, 6.99),
(6, 'Crunchips Ser i Cebulka', 140, 6.99),
(7, 'Crunchips X-cut papryka', 140, 6.99),
(8, 'Crunchips X-cut ser i cebula', 140, 6.99),
(9, 'Crunchips X-cut chakalaka', 140, 6.99),
(10, 'Crunchips X-cut Hot Chili', 140, 6.99),
(11, 'Kabanosy Tarczyński drobiowe', 105, 6.79),
(12, 'Kabanosy Tarczyński wieprzowe ', 105, 6.79),
(13, 'Paluszki solone', 200, 4.39),
(14, 'Precelki solone', 200, 4.39),
(15, 'Krakersy', 180, 8.95),
(16, 'Dip serowy', 220, 13.99),
(17, 'Dip guacamole', 220, 14.39),
(18, 'Nachos serowe', 200, 5.99),
(19, 'Nachos solone', 200, 5.99),
(20, 'Orzeszki ziemne', 140, 6.94),
(21, 'Orzeszki w panierce papryka', 240, 5.49),
(22, 'Orzeszki w panierce cebula', 240, 5.49);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `additional_supply`
--
ALTER TABLE `additional_supply`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `alcohol`
--
ALTER TABLE `alcohol`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `snaks`
--
ALTER TABLE `snaks`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `additional_supply`
--
ALTER TABLE `additional_supply`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `alcohol`
--
ALTER TABLE `alcohol`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT dla tabeli `drinks`
--
ALTER TABLE `drinks`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `snaks`
--
ALTER TABLE `snaks`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
