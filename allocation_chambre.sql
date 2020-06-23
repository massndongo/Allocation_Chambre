-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 23, 2020 at 03:22 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allocation chambre`
--

-- --------------------------------------------------------

--
-- Table structure for table `batiment`
--

DROP TABLE IF EXISTS `batiment`;
CREATE TABLE IF NOT EXISTS `batiment` (
  `numBat` int(3) NOT NULL,
  PRIMARY KEY (`numBat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batiment`
--

INSERT INTO `batiment` (`numBat`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `chambre`
--

DROP TABLE IF EXISTS `chambre`;
CREATE TABLE IF NOT EXISTS `chambre` (
  `numChambre` varchar(11) NOT NULL,
  `numBat` varchar(10) NOT NULL,
  `TypeChambre` varchar(25) NOT NULL,
  PRIMARY KEY (`numChambre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chambre`
--

INSERT INTO `chambre` (`numChambre`, `numBat`, `TypeChambre`) VALUES
('001-1234', '001', 'individuel'),
('002-1235', '002', 'à deux'),
('003-1236', '003', 'individuel');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `matricule` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date naissance` date NOT NULL,
  `telephone` int(11) NOT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `montant` int(10) DEFAULT NULL,
  `idType` int(11) NOT NULL,
  `numChambre` varchar(11) NOT NULL,
  PRIMARY KEY (`matricule`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`matricule`, `nom`, `prenom`, `email`, `date naissance`, `telephone`, `adresse`, `montant`, `idType`, `numChambre`) VALUES
('2017 DI BA 0402', 'Diop', 'Demba', 'Dembadiop@gmail', '1997-06-17', 778583286, 'Dakar', NULL, 3, '001-1234'),
('2017 GU UI 0402', 'gueye', 'magui', 'magui@gmail.com', '1993-06-22', 773454345, NULL, 20000, 2, '002-1235'),
('2017 SA ME 2013', 'SA', 'Binome', 'binome@gmail.com', '1995-06-18', 774354673, NULL, 40000, 1, '003-1236');

-- --------------------------------------------------------

--
-- Table structure for table `typeetudiant`
--

DROP TABLE IF EXISTS `typeetudiant`;
CREATE TABLE IF NOT EXISTS `typeetudiant` (
  `idType` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(25) NOT NULL,
  PRIMARY KEY (`idType`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `typeetudiant`
--

INSERT INTO `typeetudiant` (`idType`, `libelle`) VALUES
(1, 'loger'),
(2, 'boursier'),
(3, 'non_boursier');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
