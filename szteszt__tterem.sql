-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Mar 17, 2024 at 01:38 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `szteszt_étterem`
--

-- --------------------------------------------------------

--
-- Table structure for table `etelek`
--

CREATE TABLE `etelek` (
  `id` int NOT NULL,
  `nev` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `allergenek` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kategoria` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ar` decimal(10,2) NOT NULL,
  `kepek` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `etelek`
--

INSERT INTO `etelek` (`id`, `nev`, `allergenek`, `kategoria`, `ar`, `kepek`) VALUES
(1, 'Grillezett Garnélarák', 'Tenger gyümölcsei, mustár', 'Előétel', '3500.00', 'GrillezettGarnélarák.jpg'),
(2, 'Krémes Gombafőzelék Bruschettával', 'Tej, glutén', 'Előétel', '2800.00', 'KrémesGombafőzelékBruschettával.jfif'),
(3, 'Sajttál', 'Tej', 'Előétel', '2500.00', 'Sajttál.jpg'),
(4, 'Tavaszi Zöldségleves Gyömbérrel', 'Zeller, hagyma', 'Leves', '1500.00', 'TavasziZöldséglevesGyömbérrel.jpg'),
(5, 'Csirkés húsleves', 'Zeller, hagyma', 'Leves', '1000.00', 'Csirkéshúsleves.jpg'),
(6, 'Halászlé pontyból', 'Hal', 'Leves', '2000.00', 'Halászlépontyból.avif'),
(7, 'Halászlé harcsából', 'Hal', 'Leves', '2000.00', 'Halászléharcsából.jpg'),
(8, 'Tejszínes gyümölcsleves', 'Tejszín', 'Leves', '1800.00', 'Tejszínesgyümölcsleves.jpg'),
(9, 'Sült Lazac Citrommártással', 'Hal, citrom, mustár', 'Főétel', '4500.00', 'SültLazac.jpg'),
(10, 'Paprikás Csirke Nokedlivel', 'Tej, tojás, glutén', 'Főétel', '3200.00', 'PaprikásCsirkeNokedlivel.jpeg'),
(11, 'Vadas mártás zsemlegombóccal', 'Glutén', 'Főétel', '3000.00', 'Vadasmártászsemlegombóccal.jpg'),
(12, 'Sült Keszeg', 'Hal', 'Főétel', '4200.00', 'SültKeszeg.jfif'),
(13, 'Milánói Makaróni', 'Glutén', 'Főétel', '2800.00', 'MilánóiMakaróni.webp'),
(14, 'Rántott csirkecomb', 'Tojás, glutén', 'Főétel', '2500.00', 'Rántottcsirkecomb.jpg'),
(15, 'Petrezselymes Burgonyapüré', 'Tej', 'Köret', '1200.00', 'PetrezselymesBurgonyapüré.jfif'),
(16, 'Friss Zöldségkeverék', 'Nincs', 'Köret', '1000.00', 'FrissZöldségkeverék.jfif'),
(17, 'Burgonyahasáb', 'Nincs', 'Köret', '1000.00', 'Burgonyahasáb.jpg'),
(18, 'Főtt rizs', 'Nincs', 'Köret', '1000.00', 'Főttrizs.jpg'),
(19, 'Csokoládé Mousse', 'Tej, tojás', 'Sütemény', '1800.00', 'CsokoládéMousse.jpg'),
(20, 'Vanília Panna Cotta Gyümölcsraguval', 'Tej', 'Sütemény', '2000.00', 'VaníliaPannaCottaGyümölcsraguval.jpg'),
(21, 'Palacsinta (kakaós, fahéjas, ízes)', 'Tej', 'Sütemény', '1500.00', 'Palacsinta.jpg'),
(22, 'Gőzgombóc (szilvalekvár, kakaós)', 'Tej', 'Sütemény', '2200.00', 'Gőzgombóc.jpg'),
(23, 'Vanilia fagylalt', 'Tej', 'Sütemény', '1700.00', 'vaniliafagylalt.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `italok`
--

CREATE TABLE `italok` (
  `id` int NOT NULL,
  `nev` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `allergenek` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kategoria` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ar` decimal(10,2) NOT NULL,
  `kepek` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `italok`
--

INSERT INTO `italok` (`id`, `nev`, `allergenek`, `kategoria`, `ar`, `kepek`) VALUES
(1, 'Fanta', 'Nincs', 'Nem alkoholos ital', '800.00', 'Fanta.png'),
(2, 'Cappy narancs', 'Nincs', 'Nem alkoholos ital', '1000.00', 'Cappy.png'),
(3, 'Házi limonádé 1l (citrom, lime, bodza)', 'Nincs', 'Nem alkoholos ital', '2000.00', 'Limonádé.png'),
(4, 'Házi limonádé 5dl (citrom, lime, bodza)', 'Nincs', 'Nem alkoholos ital', '1000.00', 'Limonádé.png'),
(5, 'Szénsavmentes ásványvíz', 'Nincs', 'Nem alkoholos ital', '500.00', 'Víz.png'),
(6, 'Szénsavas ásványvíz', 'Nincs', 'Nem alkoholos ital', '500.00', 'Víz.png'),
(7, 'Vörösbor', 'Szőlő', 'Alkoholos', '2500.00', 'Vörösbor.png'),
(8, 'Martini', 'Nincs', 'Alkoholos', '1800.00', 'Martini.png'),
(9, 'Jameson', 'Nincs', 'Alkoholos', '2800.00', 'Jameson.png'),
(10, 'Házi pálinka (barack, alma)', 'Nincs', 'Alkoholos', '1500.00', 'Pálinka.png');

-- --------------------------------------------------------

--
-- Table structure for table `nyitvatartas`
--

CREATE TABLE `nyitvatartas` (
  `id` int NOT NULL,
  `nap` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kezdo_idopont` time DEFAULT NULL,
  `veg_idopont` time DEFAULT NULL,
  `zarva` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nyitvatartas`
--

INSERT INTO `nyitvatartas` (`id`, `nap`, `kezdo_idopont`, `veg_idopont`, `zarva`) VALUES
(1, 'hétfő', '10:00:00', '20:00:00', 1),
(2, 'kedd', '10:00:00', '20:00:00', 0),
(3, 'szerda', '10:00:00', '20:00:00', 0),
(4, 'csütörtök', '10:00:00', '20:00:00', 0),
(5, 'péntek', '10:00:00', '20:00:00', 0),
(6, 'szombat', '10:00:00', '22:00:00', 0),
(7, 'vasárnap', '10:00:00', '22:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `unnepnapok`
--

CREATE TABLE `unnepnapok` (
  `id` int NOT NULL,
  `datum` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kezdo_idopont` time DEFAULT NULL,
  `veg_idopont` time DEFAULT NULL,
  `zarva` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unnepnapok`
--

INSERT INTO `unnepnapok` (`id`, `datum`, `kezdo_idopont`, `veg_idopont`, `zarva`) VALUES
(1, '2024-12-22', '10:00:00', '14:00:00', 0),
(2, '2024-12-25', '10:00:00', '20:00:00', 1),
(3, '2024-12-26', '10:00:00', '20:00:00', 1),
(4, '2024-12-31', '10:00:00', '14:00:00', 0),
(5, '2025-01-01', '10:00:00', '20:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `etelek`
--
ALTER TABLE `etelek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `italok`
--
ALTER TABLE `italok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nyitvatartas`
--
ALTER TABLE `nyitvatartas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unnepnapok`
--
ALTER TABLE `unnepnapok`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `etelek`
--
ALTER TABLE `etelek`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `italok`
--
ALTER TABLE `italok`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nyitvatartas`
--
ALTER TABLE `nyitvatartas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `unnepnapok`
--
ALTER TABLE `unnepnapok`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
