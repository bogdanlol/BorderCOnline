-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Mai 2017 la 12:09
-- Versiune server: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proiectaibd`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `masina`
--

CREATE TABLE `masina` (
  `codm` int(11) NOT NULL,
  `numar` varchar(255) NOT NULL,
  `culoare` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `masina`
--

INSERT INTO `masina` (`codm`, `numar`, `culoare`) VALUES
(1, 'GL-93-ABD', 'Rosie'),
(2, 'GL-93-CTI', 'Verde'),
(3, 'GL-93-ABD', 'Verde'),
(4, 'XR-95-CSE', 'Albastra'),
(5, 'B-95-VXC', 'Verde'),
(6, 'BR-95-CXD', 'Albastra'),
(7, 'T-95-ANA', 'Rosie');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `persoana`
--

CREATE TABLE `persoana` (
  `codp` int(11) NOT NULL,
  `NUME` varchar(255) DEFAULT NULL,
  `PREN` varchar(255) DEFAULT NULL,
  `varsta` int(11) NOT NULL,
  `CNP` varchar(13) DEFAULT NULL,
  `codm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `persoana`
--

INSERT INTO `persoana` (`codp`, `NUME`, `PREN`, `varsta`, `CNP`, `codm`) VALUES
(1, 'Alexandru', 'Toma', 23, '1921005445699', 2),
(2, 'Teohari', 'Melinda', 25, '2910330313898', 1),
(3, 'Floroaia', 'Sergiu', 23, '1921224137638', 1),
(4, 'Popovici', 'Maria', 25, '2900908074635', 2),
(5, 'Parcalab', 'Sorin', 26, '1900128148696', 3),
(6, 'Radu', 'Alexandru', 22, '1940627411917', 3),
(7, 'Nicolae', 'Adrian', 26, '1900604461794', 4),
(8, 'Bojog', 'Costantin', 19, '1970623326631', 5),
(9, 'Parpalea', 'Alexandru', 19, '1970117090109', 5),
(10, 'Ghita', 'Miruna', 18, '2980603067484', 5),
(11, 'Teohari', 'Claudiu', 24, '2920313113704', 6),
(12, 'Dragu', 'Viorel', 27, '1890615245152', 7);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `personal`
--

CREATE TABLE `personal` (
  `codo` int(11) NOT NULL,
  `NUME` varchar(255) DEFAULT NULL,
  `PREN` varchar(255) DEFAULT NULL,
  `RANG` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `personal`
--

INSERT INTO `personal` (`codo`, `NUME`, `PREN`, `RANG`) VALUES
(1, 'Ambigu', 'Sergiu', 'Ofiter'),
(2, 'Anatole', 'Anton', 'Ofiter'),
(3, 'Manolescu', 'Victor', 'Ofiter'),
(4, 'Gorenje', 'Marian', 'Ofiter'),
(5, 'Mitulescu', 'Moria', 'Ofiter'),
(6, 'Xandru', 'Laurentiu', 'Capitan');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`) VALUES
(1, 'admin', 'hello@yahoo.com', 'pass'),
(2, 'adminis', 'admin@yahoo.com', '$2y$10$DVS7G1N2M2O0NJfzl2CsOukImUimdW1qcieh3Fq5D5vU5xsE.4csy');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `verificare`
--

CREATE TABLE `verificare` (
  `codv` int(11) NOT NULL,
  `codp` int(11) NOT NULL,
  `codm` int(11) NOT NULL,
  `codo` int(11) NOT NULL,
  `orav` datetime DEFAULT NULL,
  `orap` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `verificare`
--

INSERT INTO `verificare` (`codv`, `codp`, `codm`, `codo`, `orav`, `orap`) VALUES
(1, 1, 1, 2, '2014-01-02 12:50:23', '2014-01-02 12:52:03'),
(2, 2, 1, 3, '2014-01-02 12:53:08', '2014-01-02 12:55:25'),
(3, 3, 1, 4, '2014-01-02 12:57:25', '2014-01-02 12:59:43'),
(4, 4, 2, 5, '2014-01-02 13:02:32', '2014-01-02 13:05:25'),
(5, 5, 3, 1, '2014-01-02 13:07:33', '2014-01-02 13:09:43'),
(6, 6, 3, 1, '2014-01-02 13:09:43', '2014-01-02 13:13:32'),
(7, 7, 4, 3, '2014-01-02 13:15:42', '2014-01-02 13:17:12'),
(8, 8, 5, 4, '2014-01-02 13:19:12', '2014-01-02 13:25:43'),
(9, 9, 5, 5, '2014-01-02 13:28:43', '2014-01-02 13:33:22'),
(10, 10, 5, 6, '2014-01-02 13:40:53', '2014-01-02 13:45:43'),
(11, 11, 6, 1, '2014-01-02 13:51:21', '2014-01-02 13:55:28'),
(12, 12, 7, 4, '2014-01-02 14:05:01', '2014-01-02 14:09:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masina`
--
ALTER TABLE `masina`
  ADD PRIMARY KEY (`codm`);

--
-- Indexes for table `persoana`
--
ALTER TABLE `persoana`
  ADD PRIMARY KEY (`codp`),
  ADD KEY `codm` (`codm`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`codo`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `verificare`
--
ALTER TABLE `verificare`
  ADD PRIMARY KEY (`codv`),
  ADD KEY `codp` (`codp`),
  ADD KEY `codm` (`codm`),
  ADD KEY `codo` (`codo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restrictii pentru tabele sterse
--

--
-- Restrictii pentru tabele `persoana`
--
ALTER TABLE `persoana`
  ADD CONSTRAINT `persoana_ibfk_1` FOREIGN KEY (`codm`) REFERENCES `masina` (`codm`);

--
-- Restrictii pentru tabele `verificare`
--
ALTER TABLE `verificare`
  ADD CONSTRAINT `verificare_ibfk_1` FOREIGN KEY (`codp`) REFERENCES `persoana` (`codp`),
  ADD CONSTRAINT `verificare_ibfk_2` FOREIGN KEY (`codm`) REFERENCES `masina` (`codm`),
  ADD CONSTRAINT `verificare_ibfk_3` FOREIGN KEY (`codo`) REFERENCES `personal` (`codo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
