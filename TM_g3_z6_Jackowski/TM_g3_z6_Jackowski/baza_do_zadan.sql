-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql01.marianowas11.beep.pl:3306
-- Czas generowania: 25 Sty 2022, 20:11
-- Wersja serwera: 5.7.31-34-log
-- Wersja PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `baza_do_zadan`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `musictype`
--

CREATE TABLE `musictype` (
  `idmt` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `musictype`
--

INSERT INTO `musictype` (`idmt`, `name`) VALUES
(1, 'pop'),
(2, 'rock'),
(3, 'hip-hop'),
(4, 'electronic dance'),
(5, 'R&B'),
(6, 'latin'),
(7, 'country'),
(8, 'metal'),
(9, 'jazz'),
(10, 'classic'),
(11, 'None/Unknown');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `playlistdatabase`
--

CREATE TABLE `playlistdatabase` (
  `idpldb` int(11) NOT NULL,
  `idpl` int(11) NOT NULL,
  `ids` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `playlistdatabase`
--

INSERT INTO `playlistdatabase` (`idpldb`, `idpl`, `ids`) VALUES
(1, 1, 4),
(2, 2, 4),
(3, 3, 4),
(4, 10, 4),
(5, 11, 4),
(6, 11, 5),
(7, 12, 5),
(8, 12, 4),
(9, 13, 5),
(10, 13, 4),
(11, 14, 7),
(12, 14, 8),
(13, 14, 11),
(14, 14, 10),
(15, 14, 6),
(16, 14, 9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `playlistname`
--

CREATE TABLE `playlistname` (
  `idpl` int(11) NOT NULL,
  `idu` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci NOT NULL,
  `public` tinyint(1) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `playlistname`
--

INSERT INTO `playlistname` (`idpl`, `idu`, `name`, `public`, `datetime`) VALUES
(1, 3, 'cos', 0, '2022-01-12 01:57:46'),
(2, 3, 'hejka', 0, '2022-01-12 02:09:40'),
(3, 3, 'fajnie', 1, '2022-01-12 02:38:39'),
(9, 2, 'public', 1, '2022-01-12 10:38:05'),
(10, 2, 'sss', 0, '2022-01-12 11:40:47'),
(11, 12, 'grad1', 0, '2022-01-12 12:43:24'),
(12, 12, 'grad2', 1, '2022-01-12 12:47:10'),
(13, 22, 'qtest', 0, '2022-01-12 12:48:59'),
(14, 22, 'Bensound', 1, '2022-01-13 22:54:43');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `song`
--

CREATE TABLE `song` (
  `ids` int(11) NOT NULL,
  `title` text COLLATE utf8_polish_ci NOT NULL,
  `musician` text COLLATE utf8_polish_ci NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idu` int(11) NOT NULL,
  `filename` text COLLATE utf8_polish_ci NOT NULL,
  `lyrics` text COLLATE utf8_polish_ci NOT NULL,
  `idmt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `song`
--

INSERT INTO `song` (`ids`, `title`, `musician`, `datetime`, `idu`, `filename`, `lyrics`, `idmt`) VALUES
(4, 't', 'm', '2022-01-12 00:08:09', 3, 'file_example_MP3_700KB.mp3', 'NONE', 11),
(5, 'Numb', 'Linkin Park', '2022-01-12 12:46:11', 12, 'Numb.mp3', 'Linkin Park', 11),
(6, 'Jazzy Frenchy', 'bensound', '2022-01-13 22:49:05', 22, 'bensound-jazzyfrenchy.mp3', 'NONE', 9),
(7, 'Rumble', 'bensound', '2022-01-13 22:50:06', 22, 'bensound-rumble.mp3', 'NONE', 2),
(8, 'Punky', 'bensound', '2022-01-13 22:50:48', 22, 'bensound-punky.mp3', 'NONE', 2),
(9, 'Beyond The Line', 'bensound', '2022-01-13 22:51:44', 22, 'bensound-beyondtheline.mp3', 'NONE', 2),
(10, 'Memories', 'bensound', '2022-01-13 22:52:29', 22, 'bensound-memories.mp3', 'NONE', 11),
(11, 'Once Again', 'bensound', '2022-01-13 22:53:02', 22, 'bensound-onceagain.mp3', 'NONE', 11);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `UsersLab5`
--

CREATE TABLE `UsersLab5` (
  `id` int(11) NOT NULL,
  `username` text COLLATE utf8_polish_ci NOT NULL,
  `password` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `UsersLab5`
--

INSERT INTO `UsersLab5` (`id`, `username`, `password`) VALUES
(2, 'user1', 'pass1'),
(3, 'test', 'test'),
(4, 'kamwis003', 'kamwis003'),
(5, 'mp4', 'mp4'),
(6, 'mp3', 'mp3'),
(7, 'wav', 'wav'),
(8, 'avi', 'avi'),
(9, 'jpg', 'jpg'),
(10, 'png', 'png'),
(11, 'gif', 'gif'),
(12, 'grad', 'grad'),
(13, 'Mariusz', 'mariusz'),
(14, 'test2137', '9Gp68j8uAXddZkUHRbA3'),
(22, 'q', 'q'),
(23, 'qwe', 'qwe'),
(24, 'faaaa', '123');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `musictype`
--
ALTER TABLE `musictype`
  ADD PRIMARY KEY (`idmt`);

--
-- Indeksy dla tabeli `playlistdatabase`
--
ALTER TABLE `playlistdatabase`
  ADD PRIMARY KEY (`idpldb`),
  ADD KEY `idpl` (`idpl`),
  ADD KEY `ids` (`ids`);

--
-- Indeksy dla tabeli `playlistname`
--
ALTER TABLE `playlistname`
  ADD PRIMARY KEY (`idpl`),
  ADD KEY `idu` (`idu`);

--
-- Indeksy dla tabeli `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`ids`),
  ADD KEY `idu` (`idu`),
  ADD KEY `idmt` (`idmt`);

--
-- Indeksy dla tabeli `UsersLab5`
--
ALTER TABLE `UsersLab5`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `musictype`
--
ALTER TABLE `musictype`
  MODIFY `idmt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `playlistdatabase`
--
ALTER TABLE `playlistdatabase`
  MODIFY `idpldb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `playlistname`
--
ALTER TABLE `playlistname`
  MODIFY `idpl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `song`
--
ALTER TABLE `song`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `UsersLab5`
--
ALTER TABLE `UsersLab5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `playlistdatabase`
--
ALTER TABLE `playlistdatabase`
  ADD CONSTRAINT `playlistdatabase_ibfk_1` FOREIGN KEY (`idpl`) REFERENCES `playlistname` (`idpl`),
  ADD CONSTRAINT `playlistdatabase_ibfk_2` FOREIGN KEY (`ids`) REFERENCES `song` (`ids`);

--
-- Ograniczenia dla tabeli `playlistname`
--
ALTER TABLE `playlistname`
  ADD CONSTRAINT `playlistname_ibfk_1` FOREIGN KEY (`idu`) REFERENCES `UsersLab5` (`id`);

--
-- Ograniczenia dla tabeli `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`idu`) REFERENCES `UsersLab5` (`id`),
  ADD CONSTRAINT `song_ibfk_2` FOREIGN KEY (`idmt`) REFERENCES `musictype` (`idmt`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
