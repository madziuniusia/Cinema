-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 25 Lut 2023, 20:25
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
-- Baza danych: `cinema`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cinema`
--

CREATE TABLE `cinema` (
  `IdSeats` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `cinema`
--

INSERT INTO `cinema` (`IdSeats`, `name`) VALUES
(1, 'R1S1'),
(2, 'R1S2'),
(3, 'R1S3'),
(4, 'R1S4'),
(5, 'R1S5'),
(6, 'R1S6'),
(7, 'R1S7'),
(8, 'R1S8'),
(9, 'R1S9'),
(10, 'R1S10'),
(11, 'R1S11'),
(12, 'R1S12'),
(13, 'R1S13'),
(14, 'R1S14'),
(15, 'R1S15'),
(16, 'R1S16'),
(17, 'R1S17'),
(18, 'R1S18'),
(19, 'R1S19'),
(20, 'R1S20'),
(21, 'R2S1'),
(22, 'R2S2'),
(23, 'R2S3'),
(24, 'R2S4'),
(25, 'R2S5'),
(26, 'R2S6'),
(27, 'R2S7'),
(28, 'R2S8'),
(29, 'R2S9'),
(30, 'R2S10'),
(31, 'R2S11'),
(32, 'R2S12'),
(33, 'R2S13'),
(34, 'R2S14'),
(35, 'R2S15'),
(36, 'R2S16'),
(37, 'R2S17'),
(38, 'R2S18'),
(39, 'R2S19'),
(40, 'R2S20'),
(41, 'R3S1'),
(42, 'R3S2'),
(43, 'R3S3'),
(44, 'R3S4'),
(45, 'R3S5'),
(46, 'R3S6'),
(47, 'R3S7'),
(48, 'R3S8'),
(49, 'R3S9'),
(50, 'R3S10'),
(51, 'R3S11'),
(52, 'R3S12'),
(53, 'R3S13'),
(54, 'R3S14'),
(55, 'R3S15'),
(56, 'R3S16'),
(57, 'R3S17'),
(58, 'R3S18'),
(59, 'R3S19'),
(60, 'R3S20'),
(61, 'R4S1'),
(62, 'R4S2'),
(63, 'R4S3'),
(64, 'R4S4'),
(65, 'R4S5'),
(66, 'R4S6'),
(67, 'R4S7'),
(68, 'R4S8'),
(69, 'R4S9'),
(70, 'R4S10'),
(71, 'R4S11'),
(72, 'R4S12'),
(73, 'R4S13'),
(74, 'R4S14'),
(75, 'R4S15'),
(76, 'R4S16'),
(77, 'R4S17'),
(78, 'R4S18'),
(79, 'R4S19'),
(80, 'R4S20'),
(81, 'R5S1'),
(82, 'R5S2'),
(83, 'R5S3'),
(84, 'R5S4'),
(85, 'R5S5'),
(86, 'R5S6'),
(87, 'R5S7'),
(88, 'R5S8'),
(89, 'R5S9'),
(90, 'R5S10'),
(91, 'R5S11'),
(92, 'R5S12'),
(93, 'R5S13'),
(94, 'R5S14'),
(95, 'R5S15'),
(96, 'R5S16'),
(97, 'R5S17'),
(98, 'R5S18'),
(99, 'R5S19'),
(100, 'R5S20'),
(101, 'R6S1'),
(102, 'R6S2'),
(103, 'R6S3'),
(104, 'R6S4'),
(105, 'R6S5'),
(106, 'R6S6'),
(107, 'R6S7'),
(108, 'R6S8'),
(109, 'R6S9'),
(110, 'R6S10'),
(111, 'R6S11'),
(112, 'R6S12'),
(113, 'R6S13'),
(114, 'R6S14'),
(115, 'R6S15'),
(116, 'R6S16'),
(117, 'R6S17'),
(118, 'R6S18'),
(119, 'R6S19'),
(120, 'R6S20'),
(121, 'R7S1'),
(122, 'R7S2'),
(123, 'R7S3'),
(124, 'R7S4'),
(125, 'R7S5'),
(126, 'R7S6'),
(127, 'R7S7'),
(128, 'R7S8'),
(129, 'R7S9'),
(130, 'R7S10'),
(131, 'R7S11'),
(132, 'R7S12'),
(133, 'R7S13'),
(134, 'R7S14'),
(135, 'R7S15'),
(136, 'R7S16'),
(137, 'R7S17'),
(138, 'R7S18'),
(139, 'R7S19'),
(140, 'R7S20'),
(141, 'R8S1'),
(142, 'R8S2'),
(143, 'R8S3'),
(144, 'R8S4'),
(145, 'R8S5'),
(146, 'R8S6'),
(147, 'R8S7'),
(148, 'R8S8'),
(149, 'R8S9'),
(150, 'R8S10'),
(151, 'R8S11'),
(152, 'R8S12'),
(153, 'R8S13'),
(154, 'R8S14'),
(155, 'R8S15'),
(156, 'R8S16'),
(157, 'R8S17'),
(158, 'R8S18'),
(159, 'R8S19'),
(160, 'R8S20'),
(161, 'R9S1'),
(162, 'R9S2'),
(163, 'R9S3'),
(164, 'R9S4'),
(165, 'R9S5'),
(166, 'R9S6'),
(167, 'R9S7'),
(168, 'R9S8'),
(169, 'R9S9'),
(170, 'R9S10'),
(171, 'R9S11'),
(172, 'R9S12'),
(173, 'R9S13'),
(174, 'R9S14'),
(175, 'R9S15'),
(176, 'R9S16'),
(177, 'R9S17'),
(178, 'R9S18'),
(179, 'R9S19'),
(180, 'R9S20'),
(181, 'R10S1'),
(182, 'R10S2'),
(183, 'R10S3'),
(184, 'R10S4'),
(185, 'R10S5'),
(186, 'R10S6'),
(187, 'R10S7'),
(188, 'R10S8'),
(189, 'R10S9'),
(190, 'R10S10'),
(191, 'R10S11'),
(192, 'R10S12'),
(193, 'R10S13'),
(194, 'R10S14'),
(195, 'R10S15'),
(196, 'R10S16'),
(197, 'R10S17'),
(198, 'R10S18'),
(199, 'R10S19'),
(200, 'R10S20'),
(201, 'R11S1'),
(202, 'R11S2'),
(203, 'R11S3'),
(204, 'R11S4'),
(205, 'R11S5'),
(206, 'R11S6'),
(207, 'R11S7'),
(208, 'R11S8'),
(209, 'R11S9'),
(210, 'R11S10'),
(211, 'R11S11'),
(212, 'R11S12'),
(213, 'R11S13'),
(214, 'R11S14'),
(215, 'R11S15'),
(216, 'R11S16'),
(217, 'R11S17'),
(218, 'R11S18'),
(219, 'R11S19'),
(220, 'R11S20'),
(221, 'R12S1'),
(222, 'R12S2'),
(223, 'R12S3'),
(224, 'R12S4'),
(225, 'R12S5'),
(226, 'R12S6'),
(227, 'R12S7'),
(228, 'R12S8'),
(229, 'R12S9'),
(230, 'R12S10'),
(231, 'R12S11'),
(232, 'R12S12'),
(233, 'R12S13'),
(234, 'R12S14'),
(235, 'R12S15'),
(236, 'R12S16'),
(237, 'R12S17'),
(238, 'R12S18'),
(239, 'R12S19'),
(240, 'R12S20'),
(241, 'R13S1'),
(242, 'R13S2'),
(243, 'R13S3'),
(244, 'R13S4'),
(245, 'R13S5'),
(246, 'R13S6'),
(247, 'R13S7'),
(248, 'R13S8'),
(249, 'R13S9'),
(250, 'R13S10'),
(251, 'R13S11'),
(252, 'R13S12'),
(253, 'R13S13'),
(254, 'R13S14'),
(255, 'R13S15'),
(256, 'R13S16'),
(257, 'R13S17'),
(258, 'R13S18'),
(259, 'R13S19'),
(260, 'R13S20'),
(261, 'R14S1'),
(262, 'R14S2'),
(263, 'R14S3'),
(264, 'R14S4'),
(265, 'R14S5'),
(266, 'R14S6'),
(267, 'R14S7'),
(268, 'R14S8'),
(269, 'R14S9'),
(270, 'R14S10'),
(271, 'R14S11'),
(272, 'R14S12'),
(273, 'R14S13'),
(274, 'R14S14'),
(275, 'R14S15'),
(276, 'R14S16'),
(277, 'R14S17'),
(278, 'R14S18'),
(279, 'R14S19'),
(280, 'R14S20'),
(281, 'R15S1'),
(282, 'R15S2'),
(283, 'R15S3'),
(284, 'R15S4'),
(285, 'R15S5'),
(286, 'R15S6'),
(287, 'R15S7'),
(288, 'R15S8'),
(289, 'R15S9'),
(290, 'R15S10'),
(291, 'R15S11'),
(292, 'R15S12'),
(293, 'R15S13'),
(294, 'R15S14'),
(295, 'R15S15'),
(296, 'R15S16'),
(297, 'R15S17'),
(298, 'R15S18'),
(299, 'R15S19'),
(300, 'R15S20');

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
(14, 'Olga', 'Kaleta', '111111111', 'olga@gmail.com', 15),
(15, 'abcdefghij', 'abcdefghij', 'abcdefghij', 'abcdefghij@nieistnieje.com', 16),
(16, 'Marcinek', 'Smietaninek', '2345678765', 'marcin@buziaczek.pl', 17),
(17, 'madziaaa', 'madziaaa', '123456909876', 'fghvhk@chvjdsd.com', 18);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `login`
--

CREATE TABLE `login` (
  `IDlogin` int(11) NOT NULL,
  `Login` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `login`
--

INSERT INTO `login` (`IDlogin`, `Login`, `Password`) VALUES
(1, 'madzia', 'zaq1@WSX'),
(15, 'Olga', '$2y$10$YQ4zTgIVuO3skgxicwr.tOVS6QzmauPBh3qDAlvts8HWiyEjEdnTO'),
(16, 'abcdefghij', '$2y$10$vtHlDog4Im9p7ZsO7DJGaOdWg8iISYz8x/6usoKa/3c3s8ZJnCuCW'),
(17, 'cinek', '$2y$10$AM8SQo62ycKoNlTb0EiXSefOZ1dSget8ri6pXf8FUhEmFZYiKf/u6'),
(18, 'madziaaa', '$2y$10$K1JHuz.tyhEbMSBG/8Fuo.zIQVUz72WsWCgAf/c2Mow4NU4CJqnOK'),
(21, '123', '$2y$10$FCi0Kv2.VAMfDPjeJLH6yeOQ3lM6Scoow8C5xp8Bu4SPQhRnZQ9nq'),
(22, '1234', '$2y$10$xftCxInxjedBpik2s3asduuqxYTR9lo2ZYFele0wcAW4Kz5O2vscK');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movie`
--

CREATE TABLE `movie` (
  `IDMovie` int(11) NOT NULL,
  `name` text COLLATE utf16_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `movie`
--

INSERT INTO `movie` (`IDMovie`, `name`) VALUES
(1, 'FreeAvatar'),
(2, 'FreePussInBoots2'),
(3, 'FreeMomias'),
(4, 'FreeM3GAN');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reservation`
--

CREATE TABLE `reservation` (
  `IDReservation` int(11) NOT NULL,
  `IDRoom` int(11) NOT NULL,
  `IDlogin` int(11) NOT NULL,
  `IDseats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `reservation`
--

INSERT INTO `reservation` (`IDReservation`, `IDRoom`, `IDlogin`, `IDseats`) VALUES
(1, 5, 1, 213),
(2, 7, 15, 185),
(3, 1, 18, 213),
(4, 2, 1, 185),
(5, 3, 1, 185),
(6, 4, 17, 198),
(7, 6, 18, 199),
(8, 8, 16, 212),
(9, 9, 18, 213),
(10, 10, 1, 189),
(11, 11, 18, 184),
(13, 1, 18, 195),
(15, 1, 17, 1),
(16, 1, 15, 2),
(17, 1, 15, 281),
(18, 1, 15, 282),
(19, 1, 15, 283),
(20, 1, 15, 284),
(21, 1, 15, 285),
(22, 5, 21, 1),
(23, 5, 21, 21);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `room`
--

CREATE TABLE `room` (
  `IDRoom` int(11) NOT NULL,
  `IDMovie` int(11) NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `room`
--

INSERT INTO `room` (`IDRoom`, `IDMovie`, `data`, `time`) VALUES
(1, 1, '2023-02-28', '13:10:00'),
(2, 4, '2023-02-28', '18:00:00'),
(3, 4, '2023-03-15', '18:00:00'),
(4, 4, '2023-02-14', '18:00:00'),
(5, 1, '2023-02-15', '18:00:00'),
(6, 3, '2023-02-21', '18:00:00'),
(7, 3, '2023-02-28', '18:00:00'),
(8, 2, '2023-02-28', '18:00:00'),
(9, 3, '2023-03-10', '10:00:00'),
(10, 2, '2023-02-28', '18:00:00'),
(11, 2, '2023-05-25', '11:00:00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`IdSeats`);

--
-- Indeksy dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`IdDane`),
  ADD KEY `IDlogin` (`IDlogin`);

--
-- Indeksy dla tabeli `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`IDlogin`);

--
-- Indeksy dla tabeli `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`IDMovie`);

--
-- Indeksy dla tabeli `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`IDReservation`),
  ADD KEY `IDRoom` (`IDRoom`),
  ADD KEY `IDlogin` (`IDlogin`),
  ADD KEY `IDseats` (`IDseats`);

--
-- Indeksy dla tabeli `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`IDRoom`),
  ADD KEY `id_movie` (`IDMovie`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `cinema`
--
ALTER TABLE `cinema`
  MODIFY `IdSeats` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT dla tabeli `dane`
--
ALTER TABLE `dane`
  MODIFY `IdDane` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `login`
--
ALTER TABLE `login`
  MODIFY `IDlogin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `movie`
--
ALTER TABLE `movie`
  MODIFY `IDMovie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `reservation`
--
ALTER TABLE `reservation`
  MODIFY `IDReservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT dla tabeli `room`
--
ALTER TABLE `room`
  MODIFY `IDRoom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD CONSTRAINT `dane_ibfk_1` FOREIGN KEY (`IDlogin`) REFERENCES `login` (`IDlogin`);

--
-- Ograniczenia dla tabeli `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`IDRoom`) REFERENCES `room` (`IDRoom`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`IDlogin`) REFERENCES `login` (`IDlogin`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`IDseats`) REFERENCES `cinema` (`IdSeats`);

--
-- Ograniczenia dla tabeli `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`IDMovie`) REFERENCES `movie` (`IDMovie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
