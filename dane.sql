-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Lut 2023, 21:29
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `logincinema`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane`
--

CREATE TABLE `dane` (
  `IdDane` int(11) NOT NULL,
  `Name` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Surename` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `PhoneNumber` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Email` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `IDlogin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `dane`
--

INSERT INTO `dane` (`IdDane`, `Name`, `Surename`, `PhoneNumber`, `Email`, `IDlogin`) VALUES
(1, 'Magdalena', 'Śmietana', '987987987', 'madziuniusia@smietaniusia.com', 1),
(2, 'Marcin', 'Świerczek', '345678900', 'marcinek@gmail.com', 2),
(14, 'Olga', 'Kaleta', '111111111', 'olga@gmail.com', 15),
(15, 'abcdefghij', 'abcdefghij', 'abcdefghij', 'abcdefghij@nieistnieje.com', 16),
(16, 'Marcinek', 'Smietaninek', '2345678765', 'marcin@buziaczek.pl', 17);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`IdDane`),
  ADD KEY `IDlogin` (`IDlogin`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dane`
--
ALTER TABLE `dane`
  MODIFY `IdDane` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD CONSTRAINT `dane_ibfk_1` FOREIGN KEY (`IDlogin`) REFERENCES `login` (`IDlogin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
