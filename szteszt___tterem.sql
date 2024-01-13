-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jan 13. 15:16
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `szteszt_étterem`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- Ételek tábla
CREATE TABLE etelek (
    id INT PRIMARY KEY,
    nev VARCHAR(255) NOT NULL,
    allergenek VARCHAR(255),
    kategoria VARCHAR(50),
    ar DECIMAL(10,2) NOT NULL
);

-- Italok tábla
CREATE TABLE italok (
    id INT PRIMARY KEY,
    nev VARCHAR(255) NOT NULL,
    allergenek VARCHAR(255),
    kategoria VARCHAR(50),
    ar DECIMAL(10,2) NOT NULL
);

-- Előételek beszúrása
INSERT INTO etelek (nev, allergenek, kategoria, ar) VALUES
    ('Grillezett Garnélarák', 'Tenger gyümölcsei, mustár', 'Tenger gyümölcsei', 3500),
    ('Krémes Gombafőzelék Bruschettával', 'Tej, glutén', 'Vegetáriánus', 2800);

-- Levesek beszúrása
INSERT INTO etelek (nev, allergenek, kategoria, ar) VALUES
    ('Tavaszi Zöldségleves Gyömbérrel', 'Zeller, hagyma', 'Vegetáriánus', 1500),
    -- További levesek ...

-- Főételek, köretek, desszertek és italok beszúrása hasonló módon
-- ...

-- Példa főételek
INSERT INTO etelek (nev, allergenek, kategoria, ar) VALUES
    ('Sült Lazac Citrommártással', 'Hal, citrom, mustár', 'Hal', 4500),
    ('Paprikás Csirke Nokedlivel', 'Tej, tojás, glutén', 'Hús', 3200),
    -- További főételek ...

-- Példa köretek
INSERT INTO etelek (nev, allergenek, kategoria, ar) VALUES
    ('Petrezselymes Burgonyapüré', 'Tej', 'Köret', 1200),
    ('Friss Zöldségkeverék', 'Nincs', 'Köret', 1000),
    -- További köretek ...

-- Példa desszertek
INSERT INTO etelek (nev, allergenek, kategoria, ar) VALUES
    ('Csokoládé Mousse', 'Tej, tojás', 'Sütemény', 1800),
    ('Vanília Panna Cotta Gyümölcsraguval', 'Tej', 'Sütemény', 2000),
    -- További desszertek ...

-- Példa italok
INSERT INTO italok (nev, allergenek, kategoria, ar) VALUES
    ('Citromos Üdítő', 'Citrom', 'Nem alkoholos', 800),
    ('Friss Narancslé', 'Nincs', 'Nem alkoholos', 1000),
    -- További nem alkoholos italok ...

-- Példa alkoholos italok
INSERT INTO italok (nev, allergenek, kategoria, ar) VALUES
    ('Vörösbor', 'Szőlő', 'Alkoholos', 2500),
    ('Martini', 'Nincs', 'Alkoholos', 1800),
    -- További alkoholos italok ...


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
