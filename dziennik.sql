-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 07:58 PM
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
-- Database: `dziennik`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `frekwencja`
--

CREATE TABLE `frekwencja` (
  `ID_Frekwencji` int(11) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `ID_Uzytkownika` int(11) DEFAULT NULL,
  `Obecnosc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `frekwencja`
--

INSERT INTO `frekwencja` (`ID_Frekwencji`, `Data`, `ID_Uzytkownika`, `Obecnosc`) VALUES
(1, '0000-00-00', 1, 1),
(2, '0000-00-00', 2, 2),
(3, '0000-00-00', 3, 3),
(4, '0000-00-00', 4, 4),
(5, '0000-00-00', 5, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciele`
--

CREATE TABLE `nauczyciele` (
  `ID_Nauczyciela` int(11) DEFAULT NULL,
  `Nazwa_Nauczyciela` varchar(50) DEFAULT NULL,
  `Specjalizacja` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nauczyciele`
--

INSERT INTO `nauczyciele` (`ID_Nauczyciela`, `Nazwa_Nauczyciela`, `Specjalizacja`) VALUES
(1, 'Alessandro Bog', 'Editor'),
(2, 'Robinetta Sholem', 'Safety Technician III'),
(3, 'Jenifer Andreolli', 'VP Sales'),
(4, 'Geneva Agostini', 'General Manager'),
(5, 'Allen Timby', 'Dental Hygienist');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `ID_Oceny` int(11) DEFAULT NULL,
  `Ocena` int(11) DEFAULT NULL,
  `ID_Uzytkownika` int(11) DEFAULT NULL,
  `ID_Zadania` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oceny`
--

INSERT INTO `oceny` (`ID_Oceny`, `Ocena`, `ID_Uzytkownika`, `ID_Zadania`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ogloszenia`
--

CREATE TABLE `ogloszenia` (
  `ID_Ogloszenia` int(11) DEFAULT NULL,
  `Tresc` text DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `ID_Nauczyciela` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogloszenia`
--

INSERT INTO `ogloszenia` (`ID_Ogloszenia`, `Tresc`, `Data`, `ID_Nauczyciela`) VALUES
(1, 'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero', '0000-00-00', 1),
(2, 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis', '0000-00-00', 2),
(3, 'ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac', '0000-00-00', 3),
(4, 'vel sem sed sagittis nam congue risus semper porta volutpat quam', '0000-00-00', 4),
(5, 'diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed', '0000-00-00', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan_lekcji`
--

CREATE TABLE `plan_lekcji` (
  `ID_Planu` int(11) NOT NULL,
  `Dzień` int(11) NOT NULL,
  `Ilość_Lekcji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmioty`
--

CREATE TABLE `przedmioty` (
  `ID_Przedmiotu` int(11) DEFAULT NULL,
  `ID_Nauczyciela` int(11) DEFAULT NULL,
  `Nazwa_Przedmiotu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `przedmioty`
--

INSERT INTO `przedmioty` (`ID_Przedmiotu`, `ID_Nauczyciela`, `Nazwa_Przedmiotu`) VALUES
(1, 1, 'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus'),
(2, 2, 'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros'),
(3, 3, 'eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien'),
(4, 4, 'suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet'),
(5, 5, 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `terminarz`
--

CREATE TABLE `terminarz` (
  `ID_Terminarz` int(11) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `ID_Przedmiotu` int(11) DEFAULT NULL,
  `Godzina_Rozpoczecia` varchar(50) DEFAULT NULL,
  `Godzina_Zakonczenia` varchar(50) DEFAULT NULL,
  `Rodzaj_Wydarzenia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `terminarz`
--

INSERT INTO `terminarz` (`ID_Terminarz`, `Data`, `ID_Przedmiotu`, `Godzina_Rozpoczecia`, `Godzina_Zakonczenia`, `Rodzaj_Wydarzenia`) VALUES
(1, '0000-00-00', 1, '0:21', '12:05', 'et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida'),
(2, '0000-00-00', 2, '2:38', '3:26', 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit'),
(3, '0000-00-00', 3, '18:36', '11:34', 'in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis'),
(4, '0000-00-00', 4, '9:03', '8:05', 'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst'),
(5, '0000-00-00', 5, '23:23', '9:55', 'eget eleifend luctus ultricies eu nibh quisque id justo sit amet');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `ID_Uzytkownika` int(11) DEFAULT NULL,
  `Nazwa_Uzytkownika` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uzytkownik`
--

INSERT INTO `uzytkownik` (`ID_Uzytkownika`, `Nazwa_Uzytkownika`) VALUES
(1, 'Brew Nockles'),
(2, 'Burr Dowdle'),
(3, 'Eyde Trout'),
(4, 'Kalie Chatband'),
(5, 'Marsh Furlonge');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zadania`
--

CREATE TABLE `zadania` (
  `ID_Zadania` int(11) DEFAULT NULL,
  `Tytul` text DEFAULT NULL,
  `Opis` text DEFAULT NULL,
  `Termin_Wykonania` date DEFAULT NULL,
  `ID_przedmiotu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zadania`
--

INSERT INTO `zadania` (`ID_Zadania`, `Tytul`, `Opis`, `Termin_Wykonania`, `ID_przedmiotu`) VALUES
(1, 'vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla', 'ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat', '0000-00-00', 1),
(2, 'ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae', 'curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero', '0000-00-00', 2),
(3, 'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', 'aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras', '0000-00-00', 3),
(4, 'eget eleifend luctus ultricies eu nibh quisque id justo sit', 'tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget', '0000-00-00', 4),
(5, 'duis bibendum felis sed interdum venenatis turpis enim blandit mi', 'donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper', '0000-00-00', 5);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `plan_lekcji`
--
ALTER TABLE `plan_lekcji`
  ADD PRIMARY KEY (`ID_Planu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plan_lekcji`
--
ALTER TABLE `plan_lekcji`
  MODIFY `ID_Planu` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
