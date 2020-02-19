-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Nov 2019 um 15:23
-- Server-Version: 10.4.8-MariaDB
-- PHP-Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `url_shortener`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `items`
--

INSERT INTO `items` (`id`, `url`, `code`) VALUES
(1, 'https://www.php.net/manual/en/function.mysql-query.php', 'RrSEW'),
(2, 'https://www.php.net/manual/en/function.mysql-query.php', 'RrSEW'),
(3, 'https://www.php.net/manual/en/function.mysql-query.php', 'RrSEW'),
(4, 'https://www.php.net/manual/en/function.mysql-query.php', 'RrSEW'),
(5, 'https://github.com/Knotonium/to-do-list-weather', '8n8Kp'),
(6, 'https://github.com/Knotonium/to-do-list-weather', '8n8Kp'),
(7, 'https://github.com/Knotonium/to-do-list-weather', '8n8Kp'),
(8, 'https://github.com/Knotonium/to-do-list-weather', '8n8Kp'),
(9, 'https://github.com/Knotonium/to-do-list-weather', '8n8Kp'),
(10, 'https://github.com/Knotonium/to-do-list-weather', '8n8Kp'),
(11, 'https://github.com/Knotonium/to-do-list-weather', '8n8Kp'),
(12, 'https://github.com/Knotonium/to-do-list-weather', '8n8Kp'),
(13, 'https://github.com/Knotonium/to-do-list-weather', '8n8Kp'),
(14, 'https://www.php.net/manual/en/function.count.php', 'EdJGg'),
(15, 'https://github.com/Knotonium/to-do-list-weather', '8n8Kp'),
(16, 'https://github.com/Knotonium/to-do-list-weather', '8n8Kp'),
(17, 'https://github.com/Knotonium/to-do-list-weather', '8n8Kp'),
(18, 'https://developer.mozilla.org/de/docs/Web/JavaScript/Reference/Functions/Pfeilfunktionen', 'AWKcJ'),
(19, 'https://developer.mozilla.org/de/docs/Web/JavaScript/Reference/Functions/Pfeilfunktionen', 'AWKcJ'),
(20, 'https://developer.mozilla.org/de/docs/Web/JavaScript/Reference/Functions/Pfeilfunktionen', 'AWKcJ'),
(21, 'https://developer.mozilla.org/de/docs/Web/JavaScript/Reference/Functions/Pfeilfunktionen', 'AWKcJ'),
(22, 'http://localhost/php/testFinal1/index.php', 'yS2eX');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
