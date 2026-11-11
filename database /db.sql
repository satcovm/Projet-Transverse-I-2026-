-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Jun 04, 2026 at 09:26 AM
-- Server version: 8.0.45
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Allergene`
--

CREATE TABLE `Allergene` (
  `IDAllergene` varchar(15) NOT NULL,
  `NomAllergene` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Allergene`
--

INSERT INTO `Allergene` (`IDAllergene`, `NomAllergene`) VALUES
('A00000', 'Mollusque'),
('A00001', 'Oeuf'),
('A00010', 'Poisson'),
('A00011', 'Lupin'),
('A00100', 'Soja'),
('A00101', 'Lait'),
('A00110', 'Arachide'),
('A00111', 'Gluten'),
('A01000', 'Crustacée'),
('A01001', 'Moutarde'),
('A01010', 'Noix'),
('A01011', 'Sesame'),
('A01100', 'Céleri'),
('A01101', 'Sulphites');

-- --------------------------------------------------------

--
-- Table structure for table `AllergeneProduit`
--

CREATE TABLE `AllergeneProduit` (
  `IDProduit` varchar(15) NOT NULL,
  `IDAllergene` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `AllergeneProduit`
--

INSERT INTO `AllergeneProduit` (`IDProduit`, `IDAllergene`) VALUES
('G0286', 'A00001'),
('G0419', 'A00001'),
('G1022', 'A00001'),
('G1118', 'A00001'),
('G1153', 'A00001'),
('G1475', 'A00001'),
('G1704', 'A00001'),
('G2106', 'A00001'),
('G3151', 'A00001'),
('G3660', 'A00001'),
('G3965', 'A00001'),
('G4585', 'A00001'),
('G5117', 'A00001'),
('G5882', 'A00001'),
('G6085', 'A00001'),
('G6870', 'A00001'),
('G7373', 'A00001'),
('G7411', 'A00001'),
('G7443', 'A00001'),
('G7731', 'A00001'),
('G7797', 'A00001'),
('G8017', 'A00001'),
('G8315', 'A00001'),
('G8615', 'A00001'),
('G8761', 'A00001'),
('G9123', 'A00001'),
('G9178', 'A00001'),
('G9450', 'A00001'),
('G9618', 'A00001'),
('N0105', 'A00001'),
('N0321', 'A00001'),
('N1161', 'A00001'),
('N1290', 'A00001'),
('N1499', 'A00001'),
('N2200', 'A00001'),
('N2292', 'A00001'),
('N2660', 'A00001'),
('N2993', 'A00001'),
('N3094', 'A00001'),
('N3541', 'A00001'),
('N3674', 'A00001'),
('N3741', 'A00001'),
('N3954', 'A00001'),
('N4002', 'A00001'),
('N4349', 'A00001'),
('N4516', 'A00001'),
('N4852', 'A00001'),
('N5072', 'A00001'),
('N5282', 'A00001'),
('N5743', 'A00001'),
('N6690', 'A00001'),
('N7031', 'A00001'),
('N7710', 'A00001'),
('N8603', 'A00001'),
('N8707', 'A00001'),
('N9109', 'A00001'),
('N9352', 'A00001'),
('N9779', 'A00001'),
('N9834', 'A00001'),
('G0286', 'A00100'),
('G0419', 'A00100'),
('G1118', 'A00100'),
('G1153', 'A00100'),
('G1475', 'A00100'),
('G1704', 'A00100'),
('G2106', 'A00100'),
('G3151', 'A00100'),
('G3660', 'A00100'),
('G3965', 'A00100'),
('G4585', 'A00100'),
('G5117', 'A00100'),
('G5882', 'A00100'),
('G6085', 'A00100'),
('G6870', 'A00100'),
('G7373', 'A00100'),
('G7443', 'A00100'),
('G7731', 'A00100'),
('G7797', 'A00100'),
('G8017', 'A00100'),
('G8315', 'A00100'),
('G8615', 'A00100'),
('G8761', 'A00100'),
('G9123', 'A00100'),
('G9178', 'A00100'),
('G9450', 'A00100'),
('G9618', 'A00100'),
('N0105', 'A00100'),
('N0321', 'A00100'),
('N1161', 'A00100'),
('N1290', 'A00100'),
('N1499', 'A00100'),
('N2200', 'A00100'),
('N2292', 'A00100'),
('N2660', 'A00100'),
('N3094', 'A00100'),
('N3541', 'A00100'),
('N3674', 'A00100'),
('N3741', 'A00100'),
('N3954', 'A00100'),
('N4349', 'A00100'),
('N4516', 'A00100'),
('N4852', 'A00100'),
('N5072', 'A00100'),
('N5282', 'A00100'),
('N5743', 'A00100'),
('N6690', 'A00100'),
('N7031', 'A00100'),
('N7710', 'A00100'),
('N8603', 'A00100'),
('N8707', 'A00100'),
('N9109', 'A00100'),
('N9352', 'A00100'),
('N9834', 'A00100'),
('G0286', 'A00101'),
('G0419', 'A00101'),
('G1022', 'A00101'),
('G1118', 'A00101'),
('G1153', 'A00101'),
('G1475', 'A00101'),
('G1704', 'A00101'),
('G2106', 'A00101'),
('G3151', 'A00101'),
('G3660', 'A00101'),
('G3965', 'A00101'),
('G4585', 'A00101'),
('G5117', 'A00101'),
('G5882', 'A00101'),
('G6085', 'A00101'),
('G6870', 'A00101'),
('G7373', 'A00101'),
('G7411', 'A00101'),
('G7443', 'A00101'),
('G7731', 'A00101'),
('G7797', 'A00101'),
('G8017', 'A00101'),
('G8315', 'A00101'),
('G8615', 'A00101'),
('G8761', 'A00101'),
('G9123', 'A00101'),
('G9178', 'A00101'),
('G9450', 'A00101'),
('G9618', 'A00101'),
('N0105', 'A00101'),
('N0321', 'A00101'),
('N1161', 'A00101'),
('N1290', 'A00101'),
('N1499', 'A00101'),
('N2200', 'A00101'),
('N2292', 'A00101'),
('N2660', 'A00101'),
('N2993', 'A00101'),
('N3094', 'A00101'),
('N3541', 'A00101'),
('N3674', 'A00101'),
('N3741', 'A00101'),
('N3954', 'A00101'),
('N4002', 'A00101'),
('N4349', 'A00101'),
('N4516', 'A00101'),
('N4852', 'A00101'),
('N5072', 'A00101'),
('N5282', 'A00101'),
('N5743', 'A00101'),
('N6690', 'A00101'),
('N7031', 'A00101'),
('N7710', 'A00101'),
('N8603', 'A00101'),
('N8707', 'A00101'),
('N9109', 'A00101'),
('N9352', 'A00101'),
('N9779', 'A00101'),
('N9834', 'A00101'),
('G0286', 'A00111'),
('G0419', 'A00111'),
('G1022', 'A00111'),
('G1118', 'A00111'),
('G1153', 'A00111'),
('G1475', 'A00111'),
('G1704', 'A00111'),
('G2106', 'A00111'),
('G3151', 'A00111'),
('G3660', 'A00111'),
('G3965', 'A00111'),
('G4585', 'A00111'),
('G5117', 'A00111'),
('G5882', 'A00111'),
('G6085', 'A00111'),
('G6870', 'A00111'),
('G7373', 'A00111'),
('G7443', 'A00111'),
('G7731', 'A00111'),
('G7797', 'A00111'),
('G8017', 'A00111'),
('G8315', 'A00111'),
('G8615', 'A00111'),
('G8761', 'A00111'),
('G9123', 'A00111'),
('G9178', 'A00111'),
('G9450', 'A00111'),
('G9618', 'A00111'),
('N0105', 'A00111'),
('N0321', 'A00111'),
('N1290', 'A00111'),
('N1499', 'A00111'),
('N2200', 'A00111'),
('N2660', 'A00111'),
('N2993', 'A00111'),
('N3094', 'A00111'),
('N3541', 'A00111'),
('N3674', 'A00111'),
('N3741', 'A00111'),
('N4002', 'A00111'),
('N4349', 'A00111'),
('N4516', 'A00111'),
('N4852', 'A00111'),
('N5072', 'A00111'),
('N5743', 'A00111'),
('N6690', 'A00111'),
('N8603', 'A00111'),
('N8707', 'A00111'),
('N9109', 'A00111'),
('N9352', 'A00111'),
('N9779', 'A00111'),
('N9834', 'A00111'),
('G0419', 'A01010'),
('G1153', 'A01010'),
('G3151', 'A01010'),
('G4585', 'A01010'),
('G6085', 'A01010'),
('G8761', 'A01010'),
('N0321', 'A01010'),
('N1499', 'A01010'),
('N2660', 'A01010'),
('N3094', 'A01010'),
('N4852', 'A01010'),
('N5743', 'A01010'),
('N8707', 'A01010'),
('N9834', 'A01010'),
('G1153', 'A01101'),
('G3151', 'A01101'),
('G8761', 'A01101'),
('N4852', 'A01101'),
('N8707', 'A01101'),
('N9352', 'A01101'),
('N9834', 'A01101');

-- --------------------------------------------------------

--
-- Table structure for table `AllergeneProduitNonPersonalisable`
--

CREATE TABLE `AllergeneProduitNonPersonalisable` (
  `IDProduit` varchar(15) NOT NULL,
  `IDAllergene` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `AllergeneProduitNonPersonalisable`
--

INSERT INTO `AllergeneProduitNonPersonalisable` (`IDProduit`, `IDAllergene`) VALUES
('N0105', 'A00001'),
('N0321', 'A00001'),
('N1161', 'A00001'),
('N1290', 'A00001'),
('N1499', 'A00001'),
('N2200', 'A00001'),
('N2292', 'A00001'),
('N2660', 'A00001'),
('N2993', 'A00001'),
('N3094', 'A00001'),
('N3541', 'A00001'),
('N3674', 'A00001'),
('N3741', 'A00001'),
('N3954', 'A00001'),
('N4002', 'A00001'),
('N4349', 'A00001'),
('N4516', 'A00001'),
('N4852', 'A00001'),
('N5072', 'A00001'),
('N5282', 'A00001'),
('N5743', 'A00001'),
('N6690', 'A00001'),
('N7031', 'A00001'),
('N7710', 'A00001'),
('N8603', 'A00001'),
('N8707', 'A00001'),
('N9109', 'A00001'),
('N9352', 'A00001'),
('N9779', 'A00001'),
('N9834', 'A00001'),
('N0105', 'A00100'),
('N0321', 'A00100'),
('N1161', 'A00100'),
('N1290', 'A00100'),
('N1499', 'A00100'),
('N2200', 'A00100'),
('N2292', 'A00100'),
('N2660', 'A00100'),
('N3094', 'A00100'),
('N3541', 'A00100'),
('N3674', 'A00100'),
('N3741', 'A00100'),
('N3954', 'A00100'),
('N4349', 'A00100'),
('N4516', 'A00100'),
('N4852', 'A00100'),
('N5072', 'A00100'),
('N5282', 'A00100'),
('N5743', 'A00100'),
('N6690', 'A00100'),
('N7031', 'A00100'),
('N7710', 'A00100'),
('N8603', 'A00100'),
('N8707', 'A00100'),
('N9109', 'A00100'),
('N9352', 'A00100'),
('N9834', 'A00100'),
('N0105', 'A00101'),
('N0321', 'A00101'),
('N1161', 'A00101'),
('N1290', 'A00101'),
('N1499', 'A00101'),
('N2200', 'A00101'),
('N2292', 'A00101'),
('N2660', 'A00101'),
('N2993', 'A00101'),
('N3094', 'A00101'),
('N3541', 'A00101'),
('N3674', 'A00101'),
('N3741', 'A00101'),
('N3954', 'A00101'),
('N4002', 'A00101'),
('N4349', 'A00101'),
('N4516', 'A00101'),
('N4852', 'A00101'),
('N5072', 'A00101'),
('N5282', 'A00101'),
('N5743', 'A00101'),
('N6690', 'A00101'),
('N7031', 'A00101'),
('N7710', 'A00101'),
('N8603', 'A00101'),
('N8707', 'A00101'),
('N9109', 'A00101'),
('N9352', 'A00101'),
('N9779', 'A00101'),
('N9834', 'A00101'),
('N0105', 'A00111'),
('N0321', 'A00111'),
('N1290', 'A00111'),
('N1499', 'A00111'),
('N2200', 'A00111'),
('N2660', 'A00111'),
('N2993', 'A00111'),
('N3094', 'A00111'),
('N3541', 'A00111'),
('N3674', 'A00111'),
('N3741', 'A00111'),
('N4002', 'A00111'),
('N4349', 'A00111'),
('N4516', 'A00111'),
('N4852', 'A00111'),
('N5072', 'A00111'),
('N5743', 'A00111'),
('N6690', 'A00111'),
('N8603', 'A00111'),
('N8707', 'A00111'),
('N9109', 'A00111'),
('N9352', 'A00111'),
('N9779', 'A00111'),
('N9834', 'A00111'),
('N0321', 'A01010'),
('N1499', 'A01010'),
('N2660', 'A01010'),
('N3094', 'A01010'),
('N4852', 'A01010'),
('N5743', 'A01010'),
('N8707', 'A01010'),
('N9834', 'A01010'),
('N4852', 'A01101'),
('N8707', 'A01101'),
('N9352', 'A01101'),
('N9834', 'A01101');

-- --------------------------------------------------------

--
-- Table structure for table `AllergeneProduitPersonalisable`
--

CREATE TABLE `AllergeneProduitPersonalisable` (
  `IDProduit` varchar(15) NOT NULL,
  `IDAllergene` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `AllergeneProduitPersonalisable`
--

INSERT INTO `AllergeneProduitPersonalisable` (`IDProduit`, `IDAllergene`) VALUES
('G0286', 'A00001'),
('G0419', 'A00001'),
('G1022', 'A00001'),
('G1118', 'A00001'),
('G1153', 'A00001'),
('G1475', 'A00001'),
('G1704', 'A00001'),
('G2106', 'A00001'),
('G3151', 'A00001'),
('G3660', 'A00001'),
('G3965', 'A00001'),
('G4585', 'A00001'),
('G5117', 'A00001'),
('G5882', 'A00001'),
('G6085', 'A00001'),
('G6870', 'A00001'),
('G7373', 'A00001'),
('G7411', 'A00001'),
('G7443', 'A00001'),
('G7731', 'A00001'),
('G7797', 'A00001'),
('G8017', 'A00001'),
('G8315', 'A00001'),
('G8615', 'A00001'),
('G8761', 'A00001'),
('G9123', 'A00001'),
('G9178', 'A00001'),
('G9450', 'A00001'),
('G9618', 'A00001'),
('G0286', 'A00100'),
('G0419', 'A00100'),
('G1118', 'A00100'),
('G1153', 'A00100'),
('G1475', 'A00100'),
('G1704', 'A00100'),
('G2106', 'A00100'),
('G3151', 'A00100'),
('G3660', 'A00100'),
('G3965', 'A00100'),
('G4585', 'A00100'),
('G5117', 'A00100'),
('G5882', 'A00100'),
('G6085', 'A00100'),
('G6870', 'A00100'),
('G7373', 'A00100'),
('G7443', 'A00100'),
('G7731', 'A00100'),
('G7797', 'A00100'),
('G8017', 'A00100'),
('G8315', 'A00100'),
('G8615', 'A00100'),
('G8761', 'A00100'),
('G9123', 'A00100'),
('G9178', 'A00100'),
('G9450', 'A00100'),
('G9618', 'A00100'),
('G0286', 'A00101'),
('G0419', 'A00101'),
('G1022', 'A00101'),
('G1118', 'A00101'),
('G1153', 'A00101'),
('G1475', 'A00101'),
('G1704', 'A00101'),
('G2106', 'A00101'),
('G3151', 'A00101'),
('G3660', 'A00101'),
('G3965', 'A00101'),
('G4585', 'A00101'),
('G5117', 'A00101'),
('G5882', 'A00101'),
('G6085', 'A00101'),
('G6870', 'A00101'),
('G7373', 'A00101'),
('G7411', 'A00101'),
('G7443', 'A00101'),
('G7731', 'A00101'),
('G7797', 'A00101'),
('G8017', 'A00101'),
('G8315', 'A00101'),
('G8615', 'A00101'),
('G8761', 'A00101'),
('G9123', 'A00101'),
('G9178', 'A00101'),
('G9450', 'A00101'),
('G9618', 'A00101'),
('G0286', 'A00111'),
('G0419', 'A00111'),
('G1022', 'A00111'),
('G1118', 'A00111'),
('G1153', 'A00111'),
('G1475', 'A00111'),
('G1704', 'A00111'),
('G2106', 'A00111'),
('G3151', 'A00111'),
('G3660', 'A00111'),
('G3965', 'A00111'),
('G4585', 'A00111'),
('G5117', 'A00111'),
('G5882', 'A00111'),
('G6085', 'A00111'),
('G6870', 'A00111'),
('G7373', 'A00111'),
('G7443', 'A00111'),
('G7731', 'A00111'),
('G7797', 'A00111'),
('G8017', 'A00111'),
('G8315', 'A00111'),
('G8615', 'A00111'),
('G8761', 'A00111'),
('G9123', 'A00111'),
('G9178', 'A00111'),
('G9450', 'A00111'),
('G9618', 'A00111'),
('G0419', 'A01010'),
('G1153', 'A01010'),
('G3151', 'A01010'),
('G4585', 'A01010'),
('G6085', 'A01010'),
('G8761', 'A01010'),
('G1153', 'A01101'),
('G3151', 'A01101'),
('G8761', 'A01101');

-- --------------------------------------------------------

--
-- Table structure for table `Commande`
--

CREATE TABLE `Commande` (
  `IDCommande` varchar(20) NOT NULL,
  `DateCommande` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Commande`
--

INSERT INTO `Commande` (`IDCommande`, `DateCommande`) VALUES
('0000923', '2026-03-02 00:00:00'),
('0748862', '2026-03-07 00:00:00'),
('0841046', '2026-03-03 00:00:00'),
('094820874', '2026-04-21 00:00:00'),
('1494631', '2026-03-01 00:00:00'),
('1641291', '2026-03-04 00:00:00'),
('2018909', '2026-03-06 00:00:00'),
('2022879', '2026-03-02 00:00:00'),
('2122018', '2026-03-05 00:00:00'),
('2884269', '2026-03-01 00:00:00'),
('3372210', '2026-03-01 00:00:00'),
('3539491', '2026-03-03 00:00:00'),
('4061229', '2026-03-09 00:00:00'),
('4066250', '2026-03-04 00:00:00'),
('4216376', '2026-03-07 00:00:00'),
('4343556674893', '2026-04-22 00:00:00'),
('4780594', '2026-03-01 00:00:00'),
('4942053', '2026-03-09 00:00:00'),
('4988890', '2026-03-10 00:00:00'),
('5020771', '2026-03-03 00:00:00'),
('5029067', '2026-03-07 00:00:00'),
('5920068', '2026-03-03 00:00:00'),
('5988735', '2026-03-05 00:00:00'),
('6186756', '2026-03-05 00:00:00'),
('7031346', '2026-03-10 00:00:00'),
('7381923', '2026-03-02 00:00:00'),
('7698078', '2026-03-01 00:00:00'),
('7708114', '2026-03-10 00:00:00'),
('7758826', '2026-03-08 00:00:00'),
('8118159', '2026-03-03 00:00:00'),
('8384638', '2026-03-05 00:00:00'),
('8404830', '2026-03-02 00:00:00'),
('8501931', '2026-03-07 00:00:00'),
('8541506', '2026-03-09 00:00:00'),
('8801701', '2026-03-04 00:00:00'),
('8837380', '2026-03-01 00:00:00'),
('9235941', '2026-03-10 00:00:00'),
('9271005', '2026-03-05 00:00:00'),
('9472231', '2026-03-02 00:00:00'),
('9541765', '2026-03-08 00:00:00'),
('9581335', '2026-03-04 00:00:00'),
('9627223', '2026-03-07 00:00:00'),
('CMD20260421103921', NULL),
('CMD20260421104630', NULL),
('CMD20260421104703', NULL),
('CMD20260421104713', NULL),
('CMD20260421104733', NULL),
('CMD20260421104749', NULL),
('CMD20260421104828', NULL),
('CMD20260421104859', NULL),
('CMD20260421110338', NULL),
('CMD20260421110356', NULL),
('CMD20260421110432', '2026-04-23 00:00:00'),
('CMD20260421111432', '2026-04-25 00:00:00'),
('CMD20260421141131', NULL),
('CMD20260421141201', '2026-04-30 00:00:00'),
('CMD20260421141327', '2026-04-30 00:00:00'),
('CMD20260421145521', '2026-04-30 00:00:00'),
('CMD20260421145556', NULL),
('CMD20260421145629', NULL),
('CMD20260421150357', '2026-04-29 00:00:00'),
('CMD20260421153312', NULL),
('CMD20260603163209', '2026-06-04 00:00:00'),
('CMD20260603163750', '2026-06-05 00:00:00'),
('CMD20260603214717', '2026-06-03 00:00:00'),
('CMD20260603214843', '2026-06-07 00:00:00'),
('CMD20260603220351', '2026-06-09 00:00:00'),
('CMD20260604102641', '2026-06-26 00:00:00'),
('CMD20260604104123', '2026-06-13 00:00:00'),
('CMD20260604105456', '2026-06-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `CommandeNonPersonalisable`
--

CREATE TABLE `CommandeNonPersonalisable` (
  `IDCommande` varchar(20) NOT NULL,
  `IDProduit` varchar(15) NOT NULL,
  `TextePersonalisable` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CommandeNonPersonalisable`
--

INSERT INTO `CommandeNonPersonalisable` (`IDCommande`, `IDProduit`, `TextePersonalisable`) VALUES
('0000923', 'N5743', ''),
('0841046', 'N8707', 'Maximilien'),
('1494631', 'N3094', 'Love You!'),
('1641291', 'N5282', 'Maria'),
('2018909', 'N7710', ''),
('2884269', 'N8603', ''),
('3539491', 'N9834', ''),
('4066250', 'N3954', '2 years'),
('4942053', 'N9352', ''),
('4988890', 'N2993', ''),
('5029067', 'N3741', 'Mila'),
('5988735', 'N2292', 'Leon'),
('6186756', 'N1161', ''),
('7031346', 'N4002', 'Stich'),
('7381923', 'N1499', ''),
('8118159', 'N4852', 'Welcome back'),
('8501931', 'N7031', ''),
('8541506', 'N9109', 'Teddy'),
('8837380', 'N6690', ''),
('9541765', 'N4349', ''),
('CMD20260603163750', 'N9109', NULL),
('CMD20260603214717', 'N9109', NULL),
('CMD20260603220351', 'N9109', NULL),
('CMD20260604105456', 'N9109', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CommandePersonalisable`
--

CREATE TABLE `CommandePersonalisable` (
  `IDCommande` varchar(20) NOT NULL,
  `IDProduit` varchar(15) NOT NULL,
  `TextePersonalisable` varchar(50) DEFAULT NULL,
  `IDParfum` varchar(15) DEFAULT NULL,
  `IDDecoration` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CommandePersonalisable`
--

INSERT INTO `CommandePersonalisable` (`IDCommande`, `IDProduit`, `TextePersonalisable`, `IDParfum`, `IDDecoration`) VALUES
('0748862', 'G1118', '', 'PP5391', '1028'),
('2022879', 'G0419', 'Congratulations!', 'PL0102', '1023'),
('2122018', 'G1704', '', 'PC1414', ''),
('3372210', 'G1704', '', '', '1020'),
('4061229', 'G3965', '', 'Pp1645', '1024'),
('4216376', 'G8017', 'To The Moon', 'Pj3229', ''),
('4780594', 'G7411', 'Happy Birthday', 'PJ9972', '1019'),
('5020771', 'G3151', 'Love', 'P58717', '1021'),
('5920068', 'G1153', 'Happy Birthday', '', ''),
('7698078', 'G1022', '', '', ''),
('7708114', 'G8615', '', '', '1027'),
('7758826', 'G5882', '', 'PC1414', ''),
('8384638', 'G9123', '', 'P97309', ''),
('8404830', 'G4585', '', 'PT9028', ''),
('8801701', 'G1475', '', 'PP5391', ''),
('9235941', 'G8615', '', 'Ph0779', ''),
('9271005', 'G7373', 'Happy Birthday Veronica', 'PT9028', ''),
('9472231', 'G8761', '', 'Pp1645', ''),
('9581335', 'G2106', '', 'Pj3229', '1022'),
('9627223', 'G7731', '', '', ''),
('CMD20260421150357', 'G8017', NULL, NULL, NULL),
('CMD20260603163209', 'G8017', NULL, NULL, NULL),
('CMD20260603214843', 'G8017', NULL, 'PJ5188', '1011'),
('CMD20260604102641', 'G7731', NULL, 'PL0102', '1011'),
('CMD20260604104123', 'G7411', NULL, 'PL0102', '1012');

-- --------------------------------------------------------

--
-- Table structure for table `CommpatibiliteParfum`
--

CREATE TABLE `CommpatibiliteParfum` (
  `IDParfum` varchar(15) NOT NULL,
  `IDProduit` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CommpatibiliteParfum`
--

INSERT INTO `CommpatibiliteParfum` (`IDParfum`, `IDProduit`) VALUES
('P00704', 'G0286'),
('PJ9972', 'G0286'),
('P58717', 'G0419'),
('Pj3229', 'G0419'),
('PJ5188', 'G0419'),
('PL0102', 'G0419'),
('PT9028', 'G0419'),
('PJ5188', 'G1022'),
('PJ9972', 'G1022'),
('P73191', 'G1118'),
('P97309', 'G1118'),
('PP5391', 'G1118'),
('PT9028', 'G1118'),
('P58717', 'G1153'),
('Pj3229', 'G1153'),
('PJ5188', 'G1153'),
('P73191', 'G1475'),
('PC1414', 'G1475'),
('Pj3229', 'G1475'),
('PP5391', 'G1475'),
('P73191', 'G1704'),
('PC1414', 'G1704'),
('Pj3229', 'G1704'),
('PP5391', 'G1704'),
('P73191', 'G2106'),
('PC1414', 'G2106'),
('Pj3229', 'G2106'),
('PP5391', 'G2106'),
('P58717', 'G3151'),
('Pj3229', 'G3151'),
('PJ5188', 'G3151'),
('Pp1645', 'G3151'),
('PE7533', 'G3660'),
('Pe9489', 'G3660'),
('Ph0779', 'G3660'),
('PJ5188', 'G3660'),
('Po2675', 'G3660'),
('Pp1645', 'G3660'),
('PE7533', 'G3965'),
('Pe9489', 'G3965'),
('Ph0779', 'G3965'),
('PJ5188', 'G3965'),
('Po2675', 'G3965'),
('Pp1645', 'G3965'),
('P58717', 'G4585'),
('Pj3229', 'G4585'),
('PJ5188', 'G4585'),
('PL0102', 'G4585'),
('Pt6261', 'G4585'),
('PT9028', 'G4585'),
('P00704', 'G5117'),
('P93001', 'G5117'),
('PP5391', 'G5117'),
('P93001', 'G5882'),
('P97309', 'G5882'),
('PC1414', 'G5882'),
('Pj3229', 'G5882'),
('PL0102', 'G5882'),
('P58717', 'G6085'),
('Pj3229', 'G6085'),
('PJ5188', 'G6085'),
('PL0102', 'G6085'),
('PT9028', 'G6085'),
('P00704', 'G6870'),
('P93001', 'G6870'),
('PP5391', 'G6870'),
('P73191', 'G7373'),
('P97309', 'G7373'),
('PP5391', 'G7373'),
('PT9028', 'G7373'),
('PJ5188', 'G7411'),
('PJ9972', 'G7411'),
('P00704', 'G7443'),
('PJ9972', 'G7443'),
('P93001', 'G7731'),
('P97309', 'G7731'),
('PC1414', 'G7731'),
('Pj3229', 'G7731'),
('PL0102', 'G7731'),
('PE7533', 'G7797'),
('Pe9489', 'G7797'),
('Po2675', 'G7797'),
('P93001', 'G8017'),
('P97309', 'G8017'),
('PC1414', 'G8017'),
('Pj3229', 'G8017'),
('PL0102', 'G8017'),
('PE7533', 'G8315'),
('Pe9489', 'G8315'),
('Po2675', 'G8315'),
('PE7533', 'G8615'),
('Pe9489', 'G8615'),
('Ph0779', 'G8615'),
('PJ5188', 'G8615'),
('Po2675', 'G8615'),
('Pp1645', 'G8615'),
('P58717', 'G8761'),
('Pj3229', 'G8761'),
('PJ5188', 'G8761'),
('Pp1645', 'G8761'),
('P73191', 'G9123'),
('P97309', 'G9123'),
('PP5391', 'G9123'),
('PT9028', 'G9123'),
('PE7533', 'G9178'),
('Pe9489', 'G9178'),
('Po2675', 'G9178'),
('P00704', 'G9450'),
('PJ9972', 'G9450'),
('P00704', 'G9618'),
('P93001', 'G9618'),
('PP5391', 'G9618');

-- --------------------------------------------------------

--
-- Table structure for table `CompatibiliteDecoration`
--

CREATE TABLE `CompatibiliteDecoration` (
  `IDProduit` varchar(15) NOT NULL,
  `IDDecoration` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CompatibiliteDecoration`
--

INSERT INTO `CompatibiliteDecoration` (`IDProduit`, `IDDecoration`) VALUES
('G1022', '1010'),
('G5882', '1010'),
('G7411', '1010'),
('G7731', '1010'),
('G8017', '1010'),
('G1022', '1011'),
('G5882', '1011'),
('G7411', '1011'),
('G7731', '1011'),
('G8017', '1011'),
('G1022', '1012'),
('G5882', '1012'),
('G7411', '1012'),
('G7731', '1012'),
('G8017', '1012'),
('G1022', '1013'),
('G5882', '1013'),
('G7411', '1013'),
('G7731', '1013'),
('G8017', '1013'),
('G1022', '1014'),
('G5882', '1014'),
('G7411', '1014'),
('G7731', '1014'),
('G8017', '1014'),
('G1022', '1015'),
('G5882', '1015'),
('G7411', '1015'),
('G7731', '1015'),
('G8017', '1015'),
('G1022', '1016'),
('G5882', '1016'),
('G7411', '1016'),
('G7731', '1016'),
('G8017', '1016'),
('G1022', '1017'),
('G5882', '1017'),
('G7411', '1017'),
('G7731', '1017'),
('G8017', '1017'),
('G1022', '1018'),
('G5882', '1018'),
('G7411', '1018'),
('G7731', '1018'),
('G8017', '1018'),
('G1022', '1019'),
('G5882', '1019'),
('G7411', '1019'),
('G7731', '1019'),
('G8017', '1019'),
('G1022', '1020'),
('G3660', '1020'),
('G3965', '1020'),
('G5882', '1020'),
('G7411', '1020'),
('G7731', '1020'),
('G8017', '1020'),
('G8615', '1020'),
('G0286', '1021'),
('G0419', '1021'),
('G1153', '1021'),
('G3151', '1021'),
('G4585', '1021'),
('G5117', '1021'),
('G6085', '1021'),
('G6870', '1021'),
('G7443', '1021'),
('G8315', '1021'),
('G8761', '1021'),
('G9178', '1021'),
('G9450', '1021'),
('G9618', '1021'),
('G0286', '1022'),
('G0419', '1022'),
('G1153', '1022'),
('G3151', '1022'),
('G4585', '1022'),
('G5117', '1022'),
('G6085', '1022'),
('G6870', '1022'),
('G7443', '1022'),
('G7797', '1022'),
('G8761', '1022'),
('G9178', '1022'),
('G9450', '1022'),
('G9618', '1022'),
('G0419', '1023'),
('G1153', '1023'),
('G1475', '1023'),
('G1704', '1023'),
('G2106', '1023'),
('G3151', '1023'),
('G3660', '1023'),
('G3965', '1023'),
('G4585', '1023'),
('G6085', '1023'),
('G8615', '1023'),
('G8761', '1023'),
('G1475', '1024'),
('G1704', '1024'),
('G2106', '1024'),
('G3660', '1024'),
('G3965', '1024'),
('G8615', '1024'),
('G1118', '1025'),
('G5117', '1025'),
('G6870', '1025'),
('G7373', '1025'),
('G7797', '1025'),
('G9123', '1025'),
('G9178', '1025'),
('G9618', '1025'),
('G0286', '1026'),
('G1118', '1026'),
('G7373', '1026'),
('G7443', '1026'),
('G9123', '1026'),
('G9450', '1026'),
('G1118', '1027'),
('G7373', '1027'),
('G9123', '1027'),
('G1475', '1028'),
('G1704', '1028'),
('G2106', '1028');

-- --------------------------------------------------------

--
-- Table structure for table `Decoration`
--

CREATE TABLE `Decoration` (
  `IDDecoration` varchar(15) NOT NULL,
  `NomDecoration` varchar(30) NOT NULL,
  `Stock` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Decoration`
--

INSERT INTO `Decoration` (`IDDecoration`, `NomDecoration`, `Stock`) VALUES
('1010', 'Bougie chiffre 0', 7),
('1011', 'Bougie chiffre 1', 1),
('1012', 'Bougie chiffre 2', 6),
('1013', 'Bougie chiffre 3', 4),
('1014', 'Bougie chiffre 4', 5),
('1015', 'Bougie chiffre 5', 8),
('1016', 'Bougie chiffre 6', 3),
('1017', 'Bougie chiffre 7', 6),
('1018', 'Bougie chiffre 8', 1),
('1019', 'Bougie chiffre 9', 9),
('1020', 'Bougie décoration divers', 3),
('1021', 'Boules de chocolat', 18),
('1022', 'Boules de vanille', 60),
('1023', 'Fleurs de sucre', 3),
('1024', 'Perles de sucre', 52),
('1025', 'Glaçage coloré', 23),
('1026', 'Sprinkles', 7),
('1027', 'Disques comestibles', 12),
('1028', 'Coeurs de sucre', 5);

-- --------------------------------------------------------

--
-- Table structure for table `Parfum`
--

CREATE TABLE `Parfum` (
  `IDParfum` varchar(15) NOT NULL,
  `NomParfum` varchar(30) NOT NULL,
  `Prix` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Parfum`
--

INSERT INTO `Parfum` (`IDParfum`, `NomParfum`, `Prix`) VALUES
('P00704', 'Matcha', 20),
('P58717', 'Chocolat', 15),
('P73191', 'Citron framboise', 15),
('P93001', 'Miel', 18),
('P97309', 'Fraise', 13),
('PC1414', 'Citron', 13),
('PE7533', 'Oreo', 18),
('Pe9489', 'Carrote', 13),
('Ph0779', 'Mandarine', 13),
('Pj3229', 'Vanille', 15),
('PJ5188', 'Banane', 13),
('PJ9972', 'Mangue', 13),
('PL0102', 'Caramel', 18),
('Po2675', 'Pistache', 18),
('Pp1645', 'Orange', 13),
('PP5391', 'Vanilla fraise', 15),
('Pt6261', 'Ovomaltine', 18),
('PT9028', 'Framboise', 13);

-- --------------------------------------------------------

--
-- Table structure for table `ProduitNonPersonalisable`
--

CREATE TABLE `ProduitNonPersonalisable` (
  `IDProduit` varchar(15) NOT NULL,
  `NomProduit` varchar(50) NOT NULL,
  `PrixProduit` decimal(10,0) NOT NULL,
  `Poids` float NOT NULL,
  `Capacite` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ProduitNonPersonalisable`
--

INSERT INTO `ProduitNonPersonalisable` (`IDProduit`, `NomProduit`, `PrixProduit`, `Poids`, `Capacite`) VALUES
('N0105', 'White and Red Hearts Cake 8 personnes', 95, 0.8, 8),
('N0321', 'Strawberry Pistachio Cake 8 personnes', 95, 0.8, 8),
('N1161', 'Fraisier 4 personnes', 45, 0.3, 4),
('N1290', 'Millefeuille 4 personnes', 45, 0.5, 4),
('N1499', 'Fôret blanc 4 personnes', 45, 0.3, 4),
('N2200', 'White and Red Hearts Cake 10 personnes', 110, 1, 10),
('N2292', 'Fraisier 6 personnes', 75, 0.5, 6),
('N2660', 'Strawberry Pistachio Cake 10 personnes', 110, 1, 10),
('N2993', 'Ice Cream Cake 6 personnes', 75, 0.6, 6),
('N3094', 'Fôrét blanc 2 personnes', 25, 0.15, 2),
('N3541', 'Millefeuille 8 personnes', 95, 1, 8),
('N3674', 'Vanilla Salted Caramel Cake 8 personnes', 95, 0.8, 8),
('N3741', 'Charlotte aux fruits rouges 6 personnes', 75, 0.5, 6),
('N3954', 'Fraisier 2 personnes', 25, 0.15, 2),
('N4002', 'Ice Cream Cake 4 personnes', 55, 0.4, 4),
('N4349', 'Charlotte aux fruits rouges 8 personnes', 95, 0.7, 8),
('N4516', 'White and Red Hearts Cake 6 personnes', 75, 0.6, 6),
('N4852', 'Fôrét noir 2 personnes', 25, 0.15, 2),
('N5072', 'Vanilla Salted Caramel Cake 10 personnes', 110, 1, 10),
('N5282', 'Napoléon 8 personnes', 90, 0.8, 8),
('N5743', 'Fôrét blanc 8 personnes', 80, 0.7, 8),
('N6690', 'Red Velvet 10 personnes', 100, 1, 10),
('N7031', 'Paris-Brest 8 personnes', 75, 0.6, 8),
('N7710', 'Paris-Brest 4 personnes', 55, 0.4, 4),
('N8603', 'Red Velvet 8 personnes', 80, 0.7, 8),
('N8707', 'Fôrét noir 8 personnes', 80, 0.7, 8),
('N9109', 'Charlotte aux fruits rouges 10 personnes', 110, 1, 10),
('N9352', 'Gâteau Moka 8 personnes', 120, 1.2, 8),
('N9779', 'Ice Cream Cake 8 personnes', 95, 0.8, 8),
('N9834', 'Fôrét noir 4 personnes', 45, 0.3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ProduitPersonalisable`
--

CREATE TABLE `ProduitPersonalisable` (
  `IDProduit` varchar(15) NOT NULL,
  `NomProduit` varchar(50) NOT NULL,
  `PrixProduit` decimal(10,0) NOT NULL,
  `Poids` float NOT NULL,
  `Capacite` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ProduitPersonalisable`
--

INSERT INTO `ProduitPersonalisable` (`IDProduit`, `NomProduit`, `PrixProduit`, `Poids`, `Capacite`) VALUES
('G0286', 'White Cake 6 personnes', 55, 0.4, 6),
('G0287', 'Réligieux 4 personnes', 35, 0.3, 4),
('G0419', 'Vanilla Cake 10 personnes', 95, 0.7, 10),
('G1022', 'Cheescake 8 personnes', 75, 0.5, 8),
('G1111', 'Gateau fruits 4 personnes', 35, 0.3, 4),
('G1118', 'Pink Cake 8 personnes', 75, 0.5, 8),
('G1153', 'Chocolate Cake 10 personnes', 95, 0.7, 10),
('G1475', 'Red Velvet Cake 6 personnes', 55, 0.4, 6),
('G1704', 'Red Velvet Cake 10 personnes', 95, 0.7, 10),
('G2106', 'Red Velvet Cake 8 personnes', 75, 0.5, 8),
('G3151', 'Chocolate Cake 8 personnes', 75, 0.5, 8),
('G3660', 'Yellow Cake 8 personnes', 75, 0.5, 8),
('G3965', 'Yellow Cake 4 personnes', 35, 0.3, 4),
('G4585', 'Vanilla Cake 6 personnes', 55, 0.4, 6),
('G5117', 'Green Cake 6 personnes', 55, 0.4, 6),
('G5882', 'Blue Cake 8 personnes', 75, 0.5, 8),
('G6085', 'Vanilla Cake 8 personnes', 75, 0.5, 8),
('G6870', 'Green Cake 4 personnes', 35, 0.3, 4),
('G7373', 'Pink Cake 4 personnes', 35, 0.3, 4),
('G7411', 'Cheescake 10 personnes', 95, 0.7, 10),
('G7443', 'White Cake 8 personnes', 75, 0.5, 8),
('G7731', 'Blue Cake 6 personnes', 55, 0.4, 6),
('G7797', 'Orange Cake 6 personnes', 55, 0.4, 6),
('G8017', 'Blue Cake 4 personnes', 35, 0.3, 4),
('G8315', 'Orange Cake 4 personnes', 35, 0.3, 4),
('G8615', 'Yellow Cake 6 personnes', 55, 0.4, 6),
('G8761', 'Chocolate Cake 6 personnes', 55, 0.4, 6),
('G9123', 'Pink Cake 6 personnes', 55, 0.4, 6),
('G9178', 'Orange Cake 8 personnes', 75, 0.5, 8),
('G9450', 'White Cake 4 personnes', 35, 0.3, 4),
('G9618', 'Green Cake 8 personnes', 75, 0.5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Utilisateur`
--

CREATE TABLE `Utilisateur` (
  `IDUser` varchar(30) NOT NULL,
  `Nom` varchar(15) NOT NULL,
  `Prenom` varchar(15) NOT NULL,
  `AdresseLivraison` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Utilisateur`
--

INSERT INTO `Utilisateur` (`IDUser`, `Nom`, `Prenom`, `AdresseLivraison`) VALUES
('aavrahm11', 'Avrahm', 'Afton', '85966 Heffernan Terrace'),
('abendigz', 'Bendig', 'Alikee', '8200 Gateway Parkway'),
('acrozierd', 'Crozier', 'Ashlan', '59673 Forster Plaza'),
('aeldretto', 'Eldrett', 'Austin', '70 Almo Drive'),
('ahawthorne1k', 'Hawthorne', 'Andreana', '5 Bunting Circle'),
('ajurkowski', 'N', 'N', 'dhwed'),
('ajurkowski0', 'Jurkowski', 'Antonia', '5997 Sachs Place'),
('ashrimpling9', 'Shrimpling', 'Adelbert', '45 Myrtle Way'),
('bgrzesl', 'Grzes', 'Bartholomeus', '613 Moose Crossing'),
('bmcconville1f', 'McConville', 'Berta', '797 Graedel Parkway'),
('bpimlock1', 'Pimlock', 'Ban', '5 Novick Way'),
('bsellars1t', 'Sellars', 'Bria', '19 Bluestem Circle'),
('cgianninotti12', 'Gianninotti', 'Colver', '84377 David Place'),
('cgladwishh', 'Gladwish', 'Carmela', '7 Northridge Parkway'),
('clinceym', 'Lincey', 'Christiane', '11 Clyde Gallagher Pass'),
('cmcclary3', 'McClary', 'Carlita', '1214 Meadow Valley Court'),
('cquadrio1d', 'Quadrio', 'Caren', '8 Kenwood Hill'),
('dddddd', 'D', 'D', 'blabla'),
('dgarnb', 'Garn', 'Darrick', '4968 Florence Trail'),
('dhamley6', 'Hamley', 'Darcee', '11317 Delladonna Crossing'),
('dloche', 'Loch', 'Dinah', '0 Mccormick Hill'),
('dmccoughanr', 'McCoughan', 'Darcey', '09 Bartelt Road'),
('eshilstonek', 'Shilstone', 'Emily', '838 Sutherland Point'),
('fbenedettii', 'Benedetti', 'Fields', '08698 Crownhardt Street'),
('fluffy', 'f', 'f', 'ffff'),
('frawsthorne10', 'Rawsthorne', 'Faulkner', '8810 Pearson Center'),
('gbainv', 'Bain', 'Gardner', '93 Summerview Hill'),
('hbowyer2', 'Bowyer', 'Hyacinth', '84 Sachs Parkway'),
('hdellow1e', 'Dellow', 'Hammad', '6613 Vahlen Pass'),
('hfarmer1o', 'Farmer', 'Hazlett', '8981 Calypso Drive'),
('jalthropn', 'Althrop', 'Jackelyn', '0377 Ridgeway Pass'),
('jcollumbell16', 'Collumbell', 'Jere', '715 Graceland Street'),
('jgassq', 'Gass', 'Jessey', '95 Amoth Street'),
('jskeenea', 'Skeene', 'Joline', '0220 Steensland Terrace'),
('kemanson1a', 'Emanson', 'Kaycee', '0678 Stang Park'),
('knormadell1i', 'Normadell', 'Karlan', '488 Southridge Pass'),
('kpostillj', 'Postill', 'Karry', '477 Birchwood Place'),
('lcouvertu', 'Couvert', 'Lionello', '3047 Cambridge Lane'),
('lskill1l', 'Skill', 'Lurlene', '3331 Garrison Center'),
('lsparshett1c', 'Sparshett', 'Larina', '333 New Castle Terrace'),
('mbiggamc', 'Biggam', 'May', '74 Sauthoff Terrace'),
('mheatlie1s', 'Heatlie', 'Marcia', '151 Mayer Parkway'),
('rcaroline1p', 'Caroline', 'Riccardo', '48796 Fieldstone Drive'),
('rocarmody1j', 'Carmody', 'Ronald', '687 Glendale Court'),
('skorfg', 'Korf', 'Shane', '2 Buena Vista Terrace'),
('smundells', 'Mundell', 'Shel', '680 Kennedy Alley'),
('sniese8', 'Niese', 'Steffi', '2 Jana Avenue'),
('spessolt5', 'Pessolt', 'Stacey', '43556 Moulton Place'),
('tbenadette15', 'Benadette', 'Trix', '1 Rigney Road'),
('tdumpleton7', 'Dumpleton', 'Teresa', '52031 Westerfield Park'),
('tlemon1m', 'Lemon', 'Tobin', '60 Thierer Plaza'),
('wgillisf', 'Gillis', 'Wolfie', '9 Burrows Road'),
('ycham1b', 'Cham', 'Yvor', '410 Ludington Place');

-- --------------------------------------------------------

--
-- Table structure for table `UtilisateurCommande`
--

CREATE TABLE `UtilisateurCommande` (
  `IDCommande` varchar(20) NOT NULL,
  `IDUser` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `UtilisateurCommande`
--

INSERT INTO `UtilisateurCommande` (`IDCommande`, `IDUser`) VALUES
('9541765', 'aavrahm11'),
('CMD20260603214717', 'aavrahm11'),
('5029067', 'abendigz'),
('5020771', 'acrozierd'),
('5988735', 'aeldretto'),
('CMD20260603214843', 'ajurkowski0'),
('CMD20260603220351', 'ajurkowski0'),
('CMD20260604102641', 'ajurkowski0'),
('CMD20260604104123', 'ajurkowski0'),
('CMD20260604105456', 'ajurkowski0'),
('2022879', 'ashrimpling9'),
('2122018', 'bgrzesl'),
('3372210', 'bpimlock1'),
('CMD20260603163209', 'bpimlock1'),
('7758826', 'cgianninotti12'),
('8801701', 'cgladwishh'),
('6186756', 'clinceym'),
('4780594', 'cmcclary3'),
('7708114', 'cquadrio1d'),
('9472231', 'dgarnb'),
('1494631', 'dhamley6'),
('3539491', 'dloche'),
('2018909', 'dmccoughanr'),
('4066250', 'eshilstonek'),
('1641291', 'fbenedettii'),
('9627223', 'frawsthorne10'),
('4216376', 'gbainv'),
('2884269', 'hbowyer2'),
('CMD20260603163750', 'hbowyer2'),
('4988890', 'hdellow1e'),
('9271005', 'jalthropn'),
('4061229', 'jcollumbell16'),
('8384638', 'jgassq'),
('0000923', 'jskeenea'),
('4942053', 'kemanson1a'),
('9581335', 'kpostillj'),
('8501931', 'lcouvertu'),
('7031346', 'lsparshett1c'),
('8118159', 'mbiggamc'),
('0841046', 'skorfg'),
('0748862', 'smundells'),
('7381923', 'sniese8'),
('8837380', 'spessolt5'),
('8541506', 'tbenadette15'),
('8404830', 'tdumpleton7'),
('5920068', 'wgillisf'),
('9235941', 'ycham1b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Allergene`
--
ALTER TABLE `Allergene`
  ADD PRIMARY KEY (`IDAllergene`);

--
-- Indexes for table `AllergeneProduit`
--
ALTER TABLE `AllergeneProduit`
  ADD PRIMARY KEY (`IDProduit`,`IDAllergene`),
  ADD KEY `fk_all` (`IDAllergene`);

--
-- Indexes for table `AllergeneProduitNonPersonalisable`
--
ALTER TABLE `AllergeneProduitNonPersonalisable`
  ADD PRIMARY KEY (`IDProduit`,`IDAllergene`),
  ADD KEY `fk_alln` (`IDAllergene`);

--
-- Indexes for table `AllergeneProduitPersonalisable`
--
ALTER TABLE `AllergeneProduitPersonalisable`
  ADD PRIMARY KEY (`IDProduit`,`IDAllergene`),
  ADD KEY `fk_allg` (`IDAllergene`);

--
-- Indexes for table `Commande`
--
ALTER TABLE `Commande`
  ADD PRIMARY KEY (`IDCommande`);

--
-- Indexes for table `CommandeNonPersonalisable`
--
ALTER TABLE `CommandeNonPersonalisable`
  ADD PRIMARY KEY (`IDCommande`),
  ADD KEY `fk_cnp_produit` (`IDProduit`);

--
-- Indexes for table `CommandePersonalisable`
--
ALTER TABLE `CommandePersonalisable`
  ADD PRIMARY KEY (`IDCommande`),
  ADD KEY `fk_cp_produit` (`IDProduit`);

--
-- Indexes for table `CommpatibiliteParfum`
--
ALTER TABLE `CommpatibiliteParfum`
  ADD PRIMARY KEY (`IDParfum`,`IDProduit`),
  ADD KEY `fk_pw` (`IDProduit`);

--
-- Indexes for table `CompatibiliteDecoration`
--
ALTER TABLE `CompatibiliteDecoration`
  ADD PRIMARY KEY (`IDProduit`,`IDDecoration`),
  ADD KEY `fk_deco` (`IDDecoration`);

--
-- Indexes for table `Decoration`
--
ALTER TABLE `Decoration`
  ADD PRIMARY KEY (`IDDecoration`);

--
-- Indexes for table `Parfum`
--
ALTER TABLE `Parfum`
  ADD PRIMARY KEY (`IDParfum`);

--
-- Indexes for table `ProduitNonPersonalisable`
--
ALTER TABLE `ProduitNonPersonalisable`
  ADD PRIMARY KEY (`IDProduit`);

--
-- Indexes for table `ProduitPersonalisable`
--
ALTER TABLE `ProduitPersonalisable`
  ADD PRIMARY KEY (`IDProduit`);

--
-- Indexes for table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD PRIMARY KEY (`IDUser`);

--
-- Indexes for table `UtilisateurCommande`
--
ALTER TABLE `UtilisateurCommande`
  ADD PRIMARY KEY (`IDCommande`,`IDUser`),
  ADD KEY `fk_user` (`IDUser`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AllergeneProduit`
--
ALTER TABLE `AllergeneProduit`
  ADD CONSTRAINT `fk_all` FOREIGN KEY (`IDAllergene`) REFERENCES `Allergene` (`IDAllergene`);

--
-- Constraints for table `AllergeneProduitNonPersonalisable`
--
ALTER TABLE `AllergeneProduitNonPersonalisable`
  ADD CONSTRAINT `fk_alln` FOREIGN KEY (`IDAllergene`) REFERENCES `AllergeneProduit` (`IDAllergene`),
  ADD CONSTRAINT `fk_prds` FOREIGN KEY (`IDProduit`) REFERENCES `ProduitNonPersonalisable` (`IDProduit`);

--
-- Constraints for table `AllergeneProduitPersonalisable`
--
ALTER TABLE `AllergeneProduitPersonalisable`
  ADD CONSTRAINT `fk_allg` FOREIGN KEY (`IDAllergene`) REFERENCES `AllergeneProduit` (`IDAllergene`),
  ADD CONSTRAINT `fk_prd` FOREIGN KEY (`IDProduit`) REFERENCES `ProduitPersonalisable` (`IDProduit`);

--
-- Constraints for table `CommandeNonPersonalisable`
--
ALTER TABLE `CommandeNonPersonalisable`
  ADD CONSTRAINT `fk_cnp_commande` FOREIGN KEY (`IDCommande`) REFERENCES `Commande` (`IDCommande`),
  ADD CONSTRAINT `fk_cnp_produit` FOREIGN KEY (`IDProduit`) REFERENCES `ProduitNonPersonalisable` (`IDProduit`);

--
-- Constraints for table `CommandePersonalisable`
--
ALTER TABLE `CommandePersonalisable`
  ADD CONSTRAINT `fk_cp_commande` FOREIGN KEY (`IDCommande`) REFERENCES `Commande` (`IDCommande`),
  ADD CONSTRAINT `fk_cp_produit` FOREIGN KEY (`IDProduit`) REFERENCES `ProduitPersonalisable` (`IDProduit`);

--
-- Constraints for table `CommpatibiliteParfum`
--
ALTER TABLE `CommpatibiliteParfum`
  ADD CONSTRAINT `fk_parf` FOREIGN KEY (`IDParfum`) REFERENCES `Parfum` (`IDParfum`),
  ADD CONSTRAINT `fk_pw` FOREIGN KEY (`IDProduit`) REFERENCES `ProduitPersonalisable` (`IDProduit`);

--
-- Constraints for table `CompatibiliteDecoration`
--
ALTER TABLE `CompatibiliteDecoration`
  ADD CONSTRAINT `fk_comp` FOREIGN KEY (`IDProduit`) REFERENCES `ProduitPersonalisable` (`IDProduit`),
  ADD CONSTRAINT `fk_deco` FOREIGN KEY (`IDDecoration`) REFERENCES `Decoration` (`IDDecoration`);

--
-- Constraints for table `UtilisateurCommande`
--
ALTER TABLE `UtilisateurCommande`
  ADD CONSTRAINT `fk_comma` FOREIGN KEY (`IDCommande`) REFERENCES `Commande` (`IDCommande`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`IDUser`) REFERENCES `Utilisateur` (`IDUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
