-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 04. 12:20
-- Kiszolgáló verziója: 10.4.25-MariaDB
-- PHP verzió: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `szteszt__tterem`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `etelek`
--

CREATE TABLE `etelek` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) NOT NULL,
  `allergenek` varchar(255) DEFAULT NULL,
  `kategoria` varchar(50) DEFAULT NULL,
  `ar` decimal(10,2) NOT NULL,
  `kepek` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `etelek`
--

INSERT INTO `etelek` (`id`, `nev`, `allergenek`, `kategoria`, `ar`, `kepek`) VALUES
(1, 'Grillezett Garnélarák', 'Tenger gyümölcsei, mustár', 'Előétel', '3500.00', './etelkepek/GrillezettGarnélarák.jpg'),
(2, 'Krémes Gombafőzelék Bruschettával', 'Tej, glutén', 'Előétel', '2800.00', './etelkepek/KrémesGombafőzelékBruschettával.jfif'),
(3, 'Sajttál', 'Tej', 'Előétel', '2500.00', './etelkepek/Sajttál.jpg'),
(4, 'Tavaszi Zöldségleves Gyömbérrel', 'Zeller, hagyma', 'Leves', '1500.00', './etelkepek/TavasziZöldséglevesGyömbérrel.jpg'),
(5, 'Csirkés húsleves', 'Zeller, hagyma', 'Leves', '1000.00', './etelkepek/Csirkehúsleves.jpg'),
(6, 'Halászlé pontyból', 'Hal', 'Leves', '2000.00', './etelkepek/Halászlépontyból.jpg'),
(7, 'Halászlé harcsából', 'Hal', 'Leves', '2000.00', './etelkepek/Halászléharcsából.jpg'),
(8, 'Tejszínes gyümölcsleves', 'Tejszín', 'Leves', '1800.00', './etelkepek/Tejszínesgyümölcsleves.jpg'),
(9, 'Sült Lazac Citrommártással', 'Hal, citrom, mustár', 'Főétel', '4500.00', './etelkepek/SültLazac.jpg'),
(10, 'Paprikás Csirke Nokedlivel', 'Tej, tojás, glutén', 'Főétel', '3200.00', './etelkepek/PaprikásCsirkeNokedlivel.jpg'),
(11, 'Vadas mártás zsemlegombóccal', 'Glutén', 'Főétel', '3000.00', './etelkepek/Vadasmártászsemlegombóccal.jpg'),
(12, 'Sült Keszeg', 'Hal', 'Főétel', '4200.00', './etelkepek/SültKeszeg.jfif'),
(13, 'Milánói Makaróni', 'Glutén', 'Főétel', '2800.00', './etelkepek/MilánóiMakaróni.webp'),
(14, 'Rántott csirkecomb', 'Tojás, glutén', 'Főétel', '2500.00', './etelkepek/Rántottcsirkecomb.jpg'),
(15, 'Petrezselymes Burgonyapüré', 'Tej', 'Köret', '1200.00', './etelkepek/PetrezselymesBurgonyapüré.jfif'),
(16, 'Friss Zöldségkeverék', 'Nincs', 'Köret', '1000.00', './etelkepek/FrissZöldségkeverék.jfif'),
(17, 'Burgonyahasáb', 'Nincs', 'Köret', '1000.00', './etelkepek/Burgonyahasáb.jpg'),
(18, 'Főtt rizs', 'Nincs', 'Köret', '1000.00', './etelkepek/Főttrizs.jpg'),
(19, 'Csokoládé Mousse', 'Tej, tojás', 'Sütemény', '1800.00', './etelkepek/CsokoládéMousse.jpg'),
(20, 'Vanília Panna Cotta Gyümölcsraguval', 'Tej', 'Sütemény', '2000.00', './etelkepek/VaníliásPannaCottaGyümölcsraguval.jpg'),
(21, 'Palacsinta (kakaós, fahéjas, ízes)', 'Tej', 'Sütemény', '1500.00', './etelkepek/Palacsinta.jpg'),
(22, 'Gőzgombóc (szilvalekvár, kakaós)', 'Tej', 'Sütemény', '2200.00', './etelkepek/Gőzgombóc.jpg'),
(23, 'vanilia fagylalt', 'Tej', 'Sütemény', '1700.00', './etelkepek/vaniliafagylalt.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `italok`
--

CREATE TABLE `italok` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) NOT NULL,
  `allergenek` varchar(255) DEFAULT NULL,
  `kategoria` varchar(50) DEFAULT NULL,
  `ar` decimal(10,2) NOT NULL,
  `kepek` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `italok`
--

INSERT INTO `italok` (`id`, `nev`, `allergenek`, `kategoria`, `ar`, `kepek`) VALUES
(1, 'Fanta', 'Nincs', 'Nem alkoholos ital', '800.00', './etelkepek/'),
(2, 'Cappy narancs', 'Nincs', 'Nem alkoholos ital', '1000.00', './etelkepek/'),
(3, 'Házi limonádé 1l (citrom, lime, bodza)', 'Nincs', 'Nem alkoholos ital', '2000.00', './etelkepek/'),
(4, 'Házi limonádé 5dl (citrom, lime, bodza)', 'Nincs', 'Nem alkoholos ital', '1000.00', './etelkepek/'),
(5, 'Szénsavmentes ásványvíz', 'Nincs', 'Nem alkoholos ital', '500.00', './etelkepek/'),
(6, 'Szénsavas ásványvíz', 'Nincs', 'Nem alkoholos ital', '500.00', './etelkepek/'),
(7, 'Vörösbor', 'Szőlő', 'Alkoholos', '2500.00', './etelkepek/'),
(8, 'Martini', 'Nincs', 'Alkoholos', '1800.00', './etelkepek/'),
(9, 'Jameson', 'Nincs', 'Alkoholos', '2800.00', './etelkepek/'),
(10, 'Házi pálinka (barack, alma)', 'Nincs', 'Alkoholos', '1500.00', './etelkepek/');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `nyitvatartas`
--

CREATE TABLE `nyitvatartas` (
  `id` int(11) NOT NULL,
  `nap` varchar(255) DEFAULT NULL,
  `kezdo_idopont` time DEFAULT NULL,
  `veg_idopont` time DEFAULT NULL,
  `zarva` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `nyitvatartas`
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
-- Tábla szerkezet ehhez a táblához `unnepnapok`
--

CREATE TABLE `unnepnapok` (
  `id` int(11) NOT NULL,
  `datum` date DEFAULT NULL,
  `kezdo_idopont` time DEFAULT NULL,
  `veg_idopont` time DEFAULT NULL,
  `zarva` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `unnepnapok`
--

INSERT INTO `unnepnapok` (`id`, `datum`, `kezdo_idopont`, `veg_idopont`, `zarva`) VALUES
(1, '2024-12-22', '10:00:00', '14:00:00', 0),
(2, '2024-12-25', '10:00:00', '20:00:00', 1),
(3, '2024-12-26', '10:00:00', '20:00:00', 1),
(4, '2024-12-31', '10:00:00', '14:00:00', 0),
(5, '2025-01-01', '10:00:00', '20:00:00', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `etelek`
--
ALTER TABLE `etelek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `italok`
--
ALTER TABLE `italok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `nyitvatartas`
--
ALTER TABLE `nyitvatartas`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `unnepnapok`
--
ALTER TABLE `unnepnapok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `etelek`
--
ALTER TABLE `etelek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT a táblához `italok`
--
ALTER TABLE `italok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `nyitvatartas`
--
ALTER TABLE `nyitvatartas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `unnepnapok`
--
ALTER TABLE `unnepnapok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
