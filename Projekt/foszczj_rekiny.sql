-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 16, 2025 at 08:19 PM
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
-- Database: `foszczj_rekiny`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `badacze`
--

CREATE TABLE `badacze` (
  `badacz_id` int(11) NOT NULL,
  `nazwisko` varchar(255) DEFAULT NULL,
  `imie` varchar(255) NOT NULL,
  `instytucja_id` int(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `uzytkownik_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `badacze`
--

INSERT INTO `badacze` (`badacz_id`, `nazwisko`, `imie`, `instytucja_id`, `email`, `uzytkownik_id`) VALUES
(1, 'Kowalski', 'Jan', 1, 'jkowalski@example.com', 11),
(2, 'Nowak', 'Anna', 2, 'anowak@example.com', NULL),
(3, 'Wiśniewski', 'Piotr', 1, 'pwisniewski@example.com', NULL),
(4, 'Zielińska', 'Ewa', 5, 'ezielinska@example.com', NULL),
(5, 'Mazur', 'Tomasz', 5, 'tmazur@example.com', NULL),
(6, 'Wojciechowska', 'Karolina', 6, 'kwojciechowska@example.com', NULL),
(7, 'Krawczyk', 'Michał', 7, 'mkrawczyk@example.com', NULL),
(8, 'Kaczmarek', 'Barbara', 8, 'bkaczmarek@example.com', NULL),
(9, 'Dąbrowski', 'Andrzej', 9, 'adabrowski@example.com', NULL),
(10, 'Piątek', 'Katarzyna', 10, 'kpiatek@example.com', NULL),
(11, 'Chruściński', 'Wiktor', 10, 'wchruscinski@example.com', NULL),
(12, 'Hoshino', 'Aqua', 10, 'ahoshino@example.com', NULL),
(13, 'Prokopowicz', 'Cyprian', 14, 'cprokopowicz@example.com', NULL),
(14, 'Prokopowicz', 'Joanna', 14, 'jfoszcz@gmail.com', NULL),
(15, 'Dokja', 'Natalia', 8, 'Ndokja@example.com', NULL),
(16, 'Banan', 'Natalia', 5, 'nbanan@example.com', NULL),
(17, 'Kaczka', 'Wiktoria', 1, 'wkaczka@example.com', NULL),
(18, 'Bąba', 'Izabela', 7, 'jbaba@example.com', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `badania`
--

CREATE TABLE `badania` (
  `badanie_id` int(11) NOT NULL,
  `tytul` varchar(255) DEFAULT NULL,
  `rok` year(4) DEFAULT NULL,
  `streszczenie` text DEFAULT NULL,
  `rekin_id` int(11) DEFAULT NULL,
  `badacz_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `badania`
--

INSERT INTO `badania` (`badanie_id`, `tytul`, `rok`, `streszczenie`, `rekin_id`, `badacz_id`) VALUES
(3, 'Zachowanie rekina w nocy', '2020', 'Eksperyment w Oceanie Indyjskim dotyczący nocnej aktywności.', 1, 3),
(4, 'Wpływ klimatu na długość ciała', '2019', 'Badania terenowe w okolicach Madagaskaru.', 2, 1),
(5, 'Dieta rekinów rafowych', '2021', 'Analiza zawartości żołądkowej 20 osobników.', 3, 2),
(16, 'Wpływ temperatury wody na aktywność rekinów', '2021', 'Badanie zależności pomiędzy temperaturą oceanu a wzorcami ruchu rekinów.', 4, 6),
(17, 'Badanie struktury społecznej populacji rekinów', '2020', 'Analiza hierarchii i interakcji społecznych w grupach rekinów.', 2, 10),
(18, 'Odwzorowanie tras migracyjnych', '2018', 'Mapowanie corocznych migracji rekinów na podstawie danych satelitarnych.', 5, 13),
(19, 'Zachowania żerujące w nocy', '2023', 'Obserwacja i dokumentacja nocnych aktywności rekinów związanych z polowaniem.', 9, 7),
(20, 'Porównanie wzorców terytorialnych', '2022', 'Porównanie zachowań terytorialnych w różnych populacjach rekinów.', 3, 15),
(21, 'Reakcja na zmienne zasolenie wody', '2019', 'Ocena przystosowania rekinów do środowisk o różnym poziomie zasolenia.', 6, 2),
(22, 'Analiza sensoryczna systemów nawigacji', '2020', 'Badanie, jak rekiny wykorzystują zmysły do orientacji w przestrzeni.', 1, 17),
(23, 'Wpływ aktywności człowieka na zachowanie rekinów', '2024', 'Zbieranie danych o zmianach w zachowaniu rekinów w pobliżu obszarów zabudowanych.', 10, 4),
(24, 'Badanie wzorców odpoczynku', '2021', 'Obserwacja, w jaki sposób i kiedy rekiny odpoczywają.', 8, 11),
(25, 'Rola rekinów w ekosystemach morskich', '2022', 'Analiza funkcji rekinów jako drapieżników szczytowych w różnych środowiskach.', 7, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `diety`
--

CREATE TABLE `diety` (
  `dieta_id` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diety`
--

INSERT INTO `diety` (`dieta_id`, `nazwa`, `opis`) VALUES
(1, 'Plankton', 'Małe organizmy dryfujące w wodzie – podstawowe źródło pożywienia dla rekinów filtrujących, takich jak rekin wielorybi.'),
(2, 'Ryby pelagiczne', 'Ryby żyjące w toni wodnej, np. makrele, sardynki – główne pożywienie rekinów drapieżnych.'),
(3, 'Kałamarnice', 'Głowonogi będące częstym składnikiem diety rekinów głębinowych i pelagicznych.'),
(4, 'Ssaki morskie', 'Foki, lwy morskie i delfiny – zjadane przez większe drapieżniki jak rekin biały.'),
(5, 'Skorupiaki', 'Kraby, krewetki i homary – szczególnie istotne w diecie mniejszych rekinów przydennych.'),
(6, 'Ptaki morskie', 'Rzadki, ale udokumentowany składnik diety niektórych dużych rekinów przybrzeżnych.'),
(7, 'Inne rekiny', 'Niektóre gatunki rekinów są kanibalami i zjadają mniejsze osobniki swojego gatunku lub inne gatunki.'),
(8, 'Ryby denne', 'Płaszczki, flądry i inne ryby denne – ważny element diety rekinów żyjących przy dnie.'),
(9, 'Twarde skorupiaki', 'Organizmy z twardym pancerzem – miażdżone przez silne szczęki rekinów jak tępogłowy.'),
(10, 'Zwierzęta padłe', 'Zwierzęta martwe unoszące się w wodzie lub leżące na dnie – stanowią okazjonalny pokarm dla rekinów.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `instytucje`
--

CREATE TABLE `instytucje` (
  `instytucja_id` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL,
  `data_zalozenia` date NOT NULL,
  `kraj_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instytucje`
--

INSERT INTO `instytucje` (`instytucja_id`, `nazwa`, `data_zalozenia`, `kraj_id`) VALUES
(1, 'OceanLab Sp. z. o. o.', '2020-05-06', 4),
(2, 'Morska Akademia', '2018-01-22', 1),
(5, 'HydroTech', '2024-10-15', 2),
(6, 'Insytut Zoologii', '2007-05-20', 1),
(7, 'RekinLab', '2007-07-09', 1),
(8, 'Głębokie Wody', '2009-02-23', 1),
(9, 'Oceania SA', '2010-10-30', 1),
(10, 'Shark Industries', '1939-08-12', 3),
(11, 'Uniwersytet Morski', '2027-07-08', 1),
(12, 'SHARKlab', '2025-05-14', 3),
(13, 'AquaResearch', '2007-08-28', 4),
(14, 'Fins & Sins Lab', '2025-07-09', 5),
(15, 'Institut Hladkých Ploutviček', '2001-09-11', 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kraje`
--

CREATE TABLE `kraje` (
  `kraj_id` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kraje`
--

INSERT INTO `kraje` (`kraj_id`, `nazwa`) VALUES
(1, 'polska'),
(2, 'chorwacja'),
(3, 'japonia'),
(4, 'australia'),
(5, 'dania'),
(6, 'czechy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rekiny`
--

CREATE TABLE `rekiny` (
  `rekin_id` int(11) NOT NULL,
  `nazwa_potoczna` varchar(255) DEFAULT NULL,
  `nazwa_lacinska` varchar(255) DEFAULT NULL,
  `dlugosc_srednia` float DEFAULT NULL,
  `waga_srednia` float DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `id_rodzina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rekiny`
--

INSERT INTO `rekiny` (`rekin_id`, `nazwa_potoczna`, `nazwa_lacinska`, `dlugosc_srednia`, `waga_srednia`, `opis`, `id_rodzina`) VALUES
(1, 'Rekin biały', 'Carcharodon carcharias', 6, 1100, 'Jeden z największych drapieżników morskich, znany z dużej siły ataku i wielkich rozmiarów. Żyje w oceanie w pobliżu wybrzeży.', 1),
(2, 'Rekin tępogłowy', 'Galeocerdo cuvier', 3.5, 400, 'Znany z tępogłowej budowy oraz charakterystycznych pasków na ciele. Przeważnie żyje w ciepłych wodach.', 2),
(3, 'Rekin młot', 'Sphyrna lewini', 3, 230, 'Charakteryzuje się nietypową głową w kształcie młota. Występuje w tropikalnych i subtropikalnych wodach.', 3),
(4, 'Rekin wielorybi', 'Rhincodon typus', 12, 15000, 'Największy gatunek rekinów, jest filtratorem, żywi się planktonem. Występuje w ciepłych wodach oceanicznych.', 4),
(5, 'Rekin czarnopłetwy', 'Carcharhinus melanopterus', 2.5, 100, 'Rekin o czarnych płetwach, pospolity w ciepłych wodach Indii i Oceanu Spokojnego.', 2),
(6, 'Rekin niebieski', 'Prionace glauca', 3.8, 200, 'Szybki i smukły rekin, znany z długich migracji. Występuje w większości oceanów.', 2),
(7, 'Rekin mako', 'Isurus oxyrinchus', 4.5, 500, 'Rekin mako to najszybszy rekin wśród gatunków, osiąga prędkość do 60 km/h. Występuje w chłodniejszych wodach oceanicznych.', 1),
(8, 'Rekin bycze', 'Carcharhinus leucas', 3, 200, 'Znany z agresywnego zachowania i zdolności do przetrwania w wodach słodkich i słonawych.', 2),
(9, 'Rekin lisowaty', 'Alopias vulpinus', 4.5, 300, 'Rekin o długim ogonie, używanym do „uderzeń” w ryby. Występuje w tropikalnych wodach oceanów.', 5),
(10, 'Rekin olbrzymi', 'Megachasma pelagios', 5.5, 1000, 'Rzadki gatunek rekinów, znany ze swojego wielkiego rozmiaru. Przeważnie żyje w głębszych wodach oceanicznych.', 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodziny`
--

CREATE TABLE `rodziny` (
  `rodzina_id` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL,
  `wystepowanie` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rodziny`
--

INSERT INTO `rodziny` (`rodzina_id`, `nazwa`, `wystepowanie`) VALUES
(1, 'Lamnidae', 'Umiarkowane i tropikalne wody oceaniczne na całym świecie, przybrzeżne i pelagiczne.'),
(2, 'Carcharhinidae', 'Tropikalne i subtropikalne wody ciepłych oceanów na całym świecie, przybrzeża i otwarte morze.'),
(3, 'Sphyrnidae', 'Ciepłe, przybrzeżne wody tropikalne i subtropikalne, płytkie morza i estuaria.'),
(4, 'Rhincodontidae', 'Ciepłe i umiarkowane oceany, często blisko powierzchni i raf koralowych.'),
(5, 'Alopiidae', 'Przybrzeżne i otwarte oceany na całym świecie, głównie tropikalne i umiarkowane wody.'),
(6, 'Megachasmidae', 'Głębokie i umiarkowane wody oceaniczne na całym świecie, gatunek rzadki.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `siedliska`
--

CREATE TABLE `siedliska` (
  `siedlisko_id` int(11) NOT NULL,
  `nazwa_regionu` varchar(255) DEFAULT NULL,
  `ocean` varchar(100) DEFAULT NULL,
  `klimat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siedliska`
--

INSERT INTO `siedliska` (`siedlisko_id`, `nazwa_regionu`, `ocean`, `klimat`) VALUES
(1, 'Wielka Rafa Koralowa', 'Ocean Spokojny', 'tropikalny'),
(2, 'Morze Czerwone', 'Ocean Indyjski', 'tropikalny'),
(3, 'Zatoka Meksykańska', 'Ocean Atlantycki', 'umiarkowany'),
(4, 'Cieśnina Beringa', 'Ocean Spokojny', 'arktyczny'),
(5, 'Wody w pobliżu Galapagos', 'Ocean Spokojny', 'tropikalny'),
(6, 'Cieśnina Mozambicka', 'Ocean Indyjski', 'tropikalny'),
(7, 'Rafa Koronowa', 'Ocean Atlantycki', 'tropikalny'),
(8, 'Zatoka Fundy', 'Ocean Atlantycki', 'zimny'),
(9, 'Wody wokół Wysp Galapagos', 'Ocean Spokojny', 'tropikalny'),
(10, 'Przylądek Horn', 'Ocean Atlantycki', 'zimny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `u_lubiane_rekiny`
--

CREATE TABLE `u_lubiane_rekiny` (
  `id_uzytkownika` int(11) DEFAULT NULL,
  `id_rekina` int(11) DEFAULT NULL,
  `data_dodania` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_lubiane_rekiny`
--

INSERT INTO `u_lubiane_rekiny` (`id_uzytkownika`, `id_rekina`, `data_dodania`) VALUES
(7, 3, '2025-05-29 20:57:00'),
(8, 2, '2025-06-02 15:57:21'),
(8, 1, '2025-06-16 18:08:42'),
(8, 8, '2025-06-16 18:08:43');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `u_powody_usuniecia`
--

CREATE TABLE `u_powody_usuniecia` (
  `powod_id` int(11) NOT NULL,
  `powod_nazwa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_powody_usuniecia`
--

INSERT INTO `u_powody_usuniecia` (`powod_id`, `powod_nazwa`) VALUES
(1, 'Nie chce już korzystać z portalu.'),
(2, 'Pomyłkowe założenie konta.'),
(3, 'Mam już drugie konto.'),
(4, 'Koniec współpracy z placówką.'),
(5, 'Inny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `u_rekiny_diety`
--

CREATE TABLE `u_rekiny_diety` (
  `rekin_id` int(11) NOT NULL,
  `dieta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_rekiny_diety`
--

INSERT INTO `u_rekiny_diety` (`rekin_id`, `dieta_id`) VALUES
(1, 2),
(1, 4),
(2, 2),
(2, 9),
(3, 2),
(3, 8),
(4, 1),
(5, 3),
(6, 2),
(7, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `u_rekiny_siedliska`
--

CREATE TABLE `u_rekiny_siedliska` (
  `rekin_id` int(11) NOT NULL,
  `siedlisko_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_rekiny_siedliska`
--

INSERT INTO `u_rekiny_siedliska` (`rekin_id`, `siedlisko_id`) VALUES
(1, 3),
(2, 1),
(3, 2),
(4, 5),
(5, 6),
(6, 4),
(7, 10),
(8, 9),
(9, 7),
(10, 8);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `u_usunieci_uzytkownicy`
--

CREATE TABLE `u_usunieci_uzytkownicy` (
  `uzytkownik_id` int(11) NOT NULL,
  `uzytkownik_login` text NOT NULL,
  `data_zalozenia` date NOT NULL,
  `data_usuniecia` date NOT NULL,
  `powod_usuniecia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_usunieci_uzytkownicy`
--

INSERT INTO `u_usunieci_uzytkownicy` (`uzytkownik_id`, `uzytkownik_login`, `data_zalozenia`, `data_usuniecia`, `powod_usuniecia`) VALUES
(14, 'test', '2025-06-11', '2025-06-11', 4),
(15, 'test', '2025-06-11', '2025-06-11', 1),
(16, 'test', '2025-06-11', '2025-06-11', 1),
(17, 'test', '2025-06-11', '2025-06-11', 3),
(19, 'AsiQ1', '2025-06-13', '2025-06-13', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `u_uzytkownicy`
--

CREATE TABLE `u_uzytkownicy` (
  `uzytkownik_id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `haslo_hash` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `rola` enum('admin','badacz','gosc') DEFAULT 'gosc',
  `data_utworzenia` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_uzytkownicy`
--

INSERT INTO `u_uzytkownicy` (`uzytkownik_id`, `login`, `haslo_hash`, `email`, `rola`, `data_utworzenia`) VALUES
(7, 'admin', '0cfcf8896c5428fc3ddf9e10e8294360b068569ec1ba6b483ffb249cb1365590', 'example@mail.com', 'admin', '2025-05-10 17:33:32'),
(8, 'AsiQ', '4da3223156c0daecc0f00da4581c21e3f8e7994ffdbf9a41eb7e4c37f689dd74', 'example@mail.com', 'gosc', '2025-05-15 15:56:36'),
(11, 'jkowalski', 'e0ee1285a41fd7f0307026968a0b34b9462cdb33fc5289741ee954520a361cd0', 'jkowalski@example.com', 'badacz', '2025-06-10 14:00:10'),
(18, 'testowe', 'a544f49a44e1b75ef70d54123611651dae4cc59d2575a53670c1a6d691ef5dc1', 'asia@foszcz.eu', 'gosc', '2025-06-13 15:04:31'),
(20, 'AsiQ1', 'a544f49a44e1b75ef70d54123611651dae4cc59d2575a53670c1a6d691ef5dc1', 'asia@foszcz.eu', 'gosc', '2025-06-13 15:10:51');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `badacze`
--
ALTER TABLE `badacze`
  ADD PRIMARY KEY (`badacz_id`),
  ADD UNIQUE KEY `uzytkownik_id` (`uzytkownik_id`),
  ADD KEY `fk_badacze_instytucje` (`instytucja_id`);

--
-- Indeksy dla tabeli `badania`
--
ALTER TABLE `badania`
  ADD PRIMARY KEY (`badanie_id`),
  ADD KEY `rekin_id` (`rekin_id`),
  ADD KEY `badacz_id` (`badacz_id`);

--
-- Indeksy dla tabeli `diety`
--
ALTER TABLE `diety`
  ADD PRIMARY KEY (`dieta_id`);

--
-- Indeksy dla tabeli `instytucje`
--
ALTER TABLE `instytucje`
  ADD PRIMARY KEY (`instytucja_id`),
  ADD KEY `fk_instytucje_kraje` (`kraj_id`);

--
-- Indeksy dla tabeli `kraje`
--
ALTER TABLE `kraje`
  ADD PRIMARY KEY (`kraj_id`);

--
-- Indeksy dla tabeli `rekiny`
--
ALTER TABLE `rekiny`
  ADD PRIMARY KEY (`rekin_id`),
  ADD KEY `fk_rekiny_rodziny` (`id_rodzina`);

--
-- Indeksy dla tabeli `rodziny`
--
ALTER TABLE `rodziny`
  ADD PRIMARY KEY (`rodzina_id`),
  ADD UNIQUE KEY `nazwa` (`nazwa`);

--
-- Indeksy dla tabeli `siedliska`
--
ALTER TABLE `siedliska`
  ADD PRIMARY KEY (`siedlisko_id`);

--
-- Indeksy dla tabeli `u_lubiane_rekiny`
--
ALTER TABLE `u_lubiane_rekiny`
  ADD UNIQUE KEY `id_uzytkownika` (`id_uzytkownika`,`id_rekina`);

--
-- Indeksy dla tabeli `u_powody_usuniecia`
--
ALTER TABLE `u_powody_usuniecia`
  ADD PRIMARY KEY (`powod_id`);

--
-- Indeksy dla tabeli `u_rekiny_diety`
--
ALTER TABLE `u_rekiny_diety`
  ADD PRIMARY KEY (`rekin_id`,`dieta_id`),
  ADD KEY `dieta_id` (`dieta_id`);

--
-- Indeksy dla tabeli `u_rekiny_siedliska`
--
ALTER TABLE `u_rekiny_siedliska`
  ADD PRIMARY KEY (`rekin_id`,`siedlisko_id`),
  ADD KEY `siedlisko_id` (`siedlisko_id`);

--
-- Indeksy dla tabeli `u_uzytkownicy`
--
ALTER TABLE `u_uzytkownicy`
  ADD PRIMARY KEY (`uzytkownik_id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `badacze`
--
ALTER TABLE `badacze`
  MODIFY `badacz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `badania`
--
ALTER TABLE `badania`
  MODIFY `badanie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `diety`
--
ALTER TABLE `diety`
  MODIFY `dieta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `instytucje`
--
ALTER TABLE `instytucje`
  MODIFY `instytucja_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kraje`
--
ALTER TABLE `kraje`
  MODIFY `kraj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rekiny`
--
ALTER TABLE `rekiny`
  MODIFY `rekin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rodziny`
--
ALTER TABLE `rodziny`
  MODIFY `rodzina_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `siedliska`
--
ALTER TABLE `siedliska`
  MODIFY `siedlisko_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `u_powody_usuniecia`
--
ALTER TABLE `u_powody_usuniecia`
  MODIFY `powod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `u_uzytkownicy`
--
ALTER TABLE `u_uzytkownicy`
  MODIFY `uzytkownik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `badacze`
--
ALTER TABLE `badacze`
  ADD CONSTRAINT `badacze_ibfk_1` FOREIGN KEY (`uzytkownik_id`) REFERENCES `u_uzytkownicy` (`uzytkownik_id`),
  ADD CONSTRAINT `fk_badacze_instytucje` FOREIGN KEY (`instytucja_id`) REFERENCES `instytucje` (`instytucja_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `badania`
--
ALTER TABLE `badania`
  ADD CONSTRAINT `badania_ibfk_1` FOREIGN KEY (`rekin_id`) REFERENCES `rekiny` (`rekin_id`),
  ADD CONSTRAINT `badania_ibfk_2` FOREIGN KEY (`badacz_id`) REFERENCES `badacze` (`badacz_id`);

--
-- Constraints for table `instytucje`
--
ALTER TABLE `instytucje`
  ADD CONSTRAINT `fk_instytucje_kraje` FOREIGN KEY (`kraj_id`) REFERENCES `kraje` (`kraj_id`) ON UPDATE CASCADE;

--
-- Constraints for table `rekiny`
--
ALTER TABLE `rekiny`
  ADD CONSTRAINT `fk_rekiny_rodziny` FOREIGN KEY (`id_rodzina`) REFERENCES `rodziny` (`rodzina_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `u_rekiny_diety`
--
ALTER TABLE `u_rekiny_diety`
  ADD CONSTRAINT `u_rekiny_diety_ibfk_1` FOREIGN KEY (`rekin_id`) REFERENCES `rekiny` (`rekin_id`),
  ADD CONSTRAINT `u_rekiny_diety_ibfk_2` FOREIGN KEY (`dieta_id`) REFERENCES `diety` (`dieta_id`);

--
-- Constraints for table `u_rekiny_siedliska`
--
ALTER TABLE `u_rekiny_siedliska`
  ADD CONSTRAINT `u_rekiny_siedliska_ibfk_1` FOREIGN KEY (`rekin_id`) REFERENCES `rekiny` (`rekin_id`),
  ADD CONSTRAINT `u_rekiny_siedliska_ibfk_2` FOREIGN KEY (`siedlisko_id`) REFERENCES `siedliska` (`siedlisko_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
