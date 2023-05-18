-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2023 at 01:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TASK2`
--

-- --------------------------------------------------------

--
-- Table structure for table `Prodaja`
--

CREATE TABLE `Prodaja` (
  `Id` int(11) NOT NULL,
  `Datum` date NOT NULL,
  `Cena` double NOT NULL,
  `Kolicina` int(11) NOT NULL,
  `IdProdavca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Prodaja`
--

INSERT INTO `Prodaja` (`Id`, `Datum`, `Cena`, `Kolicina`, `IdProdavca`) VALUES
(1, '2023-02-02', 3000, 5, 3),
(2, '2022-03-08', 2000, 3, 1),
(3, '2022-12-19', 5000, 3, 4),
(4, '2021-10-13', 3500, 2, 4),
(5, '2022-04-10', 45000, 7, 3),
(6, '2021-03-17', 7800, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `PRODAVAC`
--

CREATE TABLE `PRODAVAC` (
  `IDp` int(11) NOT NULL,
  `Ime` varchar(20) NOT NULL,
  `Prezime` varchar(30) NOT NULL,
  `Automobil` varchar(40) NOT NULL,
  `Boja` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PRODAVAC`
--

INSERT INTO `PRODAVAC` (`IDp`, `Ime`, `Prezime`, `Automobil`, `Boja`) VALUES
(1, 'Mina', 'Gmijovic', 'Fiat', 'plava'),
(2, 'Katarina', 'Simonovic', 'Mercedes', 'crna'),
(3, 'Miljana', 'Radic', 'Smart', 'plava'),
(4, 'Petar', 'Petrovic', 'Maserati', 'zelena'),
(5, 'Dragan', 'Dragovic', 'BMW', 'crna');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Prodaja`
--
ALTER TABLE `Prodaja`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdProdavca` (`IdProdavca`);

--
-- Indexes for table `PRODAVAC`
--
ALTER TABLE `PRODAVAC`
  ADD PRIMARY KEY (`IDp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Prodaja`
--
ALTER TABLE `Prodaja`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `PRODAVAC`
--
ALTER TABLE `PRODAVAC`
  MODIFY `IDp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Prodaja`
--
ALTER TABLE `Prodaja`
  ADD CONSTRAINT `prodaja_ibfk_1` FOREIGN KEY (`IdProdavca`) REFERENCES `PRODAVAC` (`IDp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
