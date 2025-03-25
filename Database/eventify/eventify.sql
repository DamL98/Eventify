-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2025 at 05:19 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventify`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `additional_supply`
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
(10, 'Wykałaczki', 1000, 3.67);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alcohol`
--

INSERT INTO `alcohol` (`ID`, `Name`, `Size`, `Procent_of_alcohol`, `Price`, `Power`) VALUES
(2, 'Książęce', 500, 4.9, 4.99, 0),
(5, 'Perła', 500, 5.6, 3.49, 0),
(7, 'Żywiec', 500, 5.6, 3.49, 0),
(9, 'Heineken', 500, 5.0, 4.30, 0),
(10, 'Carlo Rossi', 750, 11.5, 19.99, 0),
(15, 'Stock', 700, 40.0, 39.00, 1),
(16, 'Bols', 700, 40.0, 35.00, 1),
(17, 'Wyborowa', 700, 40.0, 35.00, 1),
(19, 'Soplica', 700, 38.0, 32.00, 1),
(21, 'Pan Tadeusz', 700, 40.0, 44.00, 1),
(23, 'Ballantines Finest', 700, 40.0, 65.00, 1),
(26, 'Jack Daniel\'s', 700, 40.0, 75.00, 1),
(27, 'Jim Beam', 700, 40.0, 75.00, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drinks`
--

CREATE TABLE `drinks` (
  `ID` int(1) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Size` float(5,3) NOT NULL,
  `Price` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drinks`
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
(9, 'Tymbark', 2.000, 5.79),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `snaks`
--

INSERT INTO `snaks` (`ID`, `Name`, `Size`, `Price`) VALUES
(1, 'Lays', 130, 7.89),
(4, 'Crunchips', 140, 6.99),
(11, 'Kabanosy', 105, 6.79),
(13, 'Paluszki', 200, 4.39),
(14, 'Precelki solone', 200, 4.39),
(15, 'Krakersy', 180, 8.95),
(16, 'Dip serowy', 220, 13.99),
(18, 'Nachos serowe', 200, 5.99),
(20, 'Orzeszki ziemne', 140, 6.94);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_supply`
--
ALTER TABLE `additional_supply`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `alcohol`
--
ALTER TABLE `alcohol`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `snaks`
--
ALTER TABLE `snaks`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
