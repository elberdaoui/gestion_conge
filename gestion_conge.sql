-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2020 at 01:09 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion_conge`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `login`, `pwd`) VALUES
(2, 'HA235', '1111'),
(3, 'LM234', '2222'),
(4, 'LK90', '3333'),
(6, 'HA321', '6666'),
(7, 'HA123', '9999'),
(8, 'ha667', '202cb962ac59075b964b07152d234b70'),
(11, 'gh90', '1d72310edc006dadf2190caad5802983'),
(12, 'gh77', '3b712de48137572f3849aabd5666a4e3'),
(13, 'jk56', 'c26820b8a4c1b3c2aa868d6d57e14a79'),
(14, 'bl00', '202cb962ac59075b964b07152d234b70'),
(15, 'tl99', '202cb962ac59075b964b07152d234b70'),
(16, 'gh12', '202cb962ac59075b964b07152d234b70'),
(17, 'mmm45', '81dc9bdb52d04dc20036dbd8313ed055'),
(18, 'hhhh123', '202cb962ac59075b964b07152d234b70'),
(19, 'hjk55', '81dc9bdb52d04dc20036dbd8313ed055'),
(20, 'fg123', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `demande_conge`
--

CREATE TABLE `demande_conge` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `date_demande` date DEFAULT NULL,
  `id_employe` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `decision` varchar(200) NOT NULL DEFAULT 'In Progress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `demande_conge`
--

INSERT INTO `demande_conge` (`id`, `nom`, `prenom`, `date_debut`, `date_fin`, `date_demande`, `id_employe`, `id_type`, `decision`) VALUES
(14, 'ech-choufi', 'mouhsine', '2020-06-10', '2020-06-25', '2020-06-13', 6, 23, 'Accepted'),
(16, 'ech-choufi', 'mouhsine', '2020-06-03', '2020-06-10', '2020-06-13', 6, 21, 'Accepted'),
(17, 'elbardaoui', 'imad', '2020-06-02', '2020-06-12', '2020-06-13', 5, 21, 'Accepted'),
(30, 'elbardaoui', 'imad', '2020-06-16', '2020-06-18', '2020-06-17', 5, 20, 'Accepted'),
(31, 'abdsamad', 'massif', '2020-06-25', '2020-06-27', '2020-06-17', 2, 20, 'Accepted'),
(32, 'abdsamad', 'massif', '2020-07-14', '2020-07-24', '2020-06-17', 2, 20, 'Accepted'),
(33, 'abdsamad', 'massif', '2020-08-20', '2020-08-29', '2020-06-17', 2, 20, 'Accepted'),
(34, 'fayz', 'nadifi', '2020-06-04', '2020-06-27', '2020-06-17', 4, 23, 'Refused'),
(59, 'fayz', 'nadifi', '2020-06-18', '2020-06-27', '2020-06-18', 4, 20, 'In Progress'),
(60, 'fayz', 'nadifi', '2020-06-19', '2020-06-22', '2020-06-18', 4, 20, 'In Progress'),
(61, 'aa', 'bb', '2020-06-21', '2020-06-24', '2020-06-21', 17, 20, 'In Progress'),
(62, 'aa', 'bb', '2020-06-24', '2020-06-25', '2020-06-21', 17, 20, 'In Progress');

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `cin` varchar(45) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `situa_famil` varchar(200) DEFAULT NULL,
  `pays` char(200) DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `id_login` int(11) DEFAULT NULL,
  `salaire` float DEFAULT NULL,
  `date_embauche` date DEFAULT NULL,
  `id_service` int(11) DEFAULT NULL,
  `sexe` char(1) DEFAULT NULL,
  `nbr_jour` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`id`, `nom`, `prenom`, `cin`, `adress`, `date_naissance`, `situa_famil`, `pays`, `tel`, `email`, `grade`, `id_login`, `salaire`, `date_embauche`, `id_service`, `sexe`, `nbr_jour`) VALUES
(2, 'abdsamad', 'massif', 'HJ456', ' canada', '1987-11-10', 'marie', 'canada', 690800032, 'massif@gmail.com', 'directeur ', 4, 40000, '2020-06-17', 3, 'M', '20'),
(4, 'fayz', 'nadifi', 'HA158207', 'QY salam N309 YOUSSOUFIA', '2020-06-17', 'marie', 'france', 630767609, 'fayz@gmail.com', 'ingénieur de devllopement', 2, 50000, '2020-06-17', 3, 'M', NULL),
(5, 'elbardaoui', 'imad', 'HA123', 'labita numero 335 youssofia ', '1991-11-10', 'marie avec quelque chose', 'morocco', 600435265, 'imad@gmail.com', 'chef département informatique', 7, 25000, '2020-06-01', 3, 'M', '22'),
(6, 'ech-choufi', 'mouhsine', 'HA321', 'qu heloba 43 somal ', '1994-06-09', 'marié', 'morocco', 600435243, 'echoufi@gmail.com', 'directeur rh', 6, 30000, '2020-06-08', 2, 'M', '10'),
(13, 'fgjfkd', 'dgdflk', 'ldkgmdl', 'ldkgkdmfgk', '2020-05-13', 'fklbdfk', 'dpofkgdok', 12, 'dfdf@gmail.com', 'flkmlfd', 3, 19, '2020-06-19', 3, 'm', NULL),
(14, 'fgjfkd', 'dgdflk', 'ldkgmdl', 'ldkgkdmfgk', '2020-05-13', 'fklbdfk', 'dpofkgdok', 12, 'dfdf@gmail.com', 'flkmlfd', 3, 19, '2020-06-19', 3, 'm', NULL),
(15, 'fgjfkd', 'dgdflk', 'ldkgmdl', 'ldkgkdmfgk', '2020-05-13', 'fklbdfk', 'dpofkgdok', 12, 'dfdf@gmail.com', 'flkmlfd', 3, 19, '2020-06-19', 3, 'm', NULL),
(16, 'mad', 'mad', 'hh44', 'ldkgkdmfgk', '2020-06-09', 'fklbdfk', 'fggf', 31, 'mad@gmail.com', 'jkjjk', 15, 56, '2020-07-01', 3, 'm', NULL),
(17, 'aa', 'bb', 'gjfg11', 'fgdf', '2020-06-18', 'fgdl', 'fggf', 555, 'dfdf@gmail.com', '', 20, 777, '2020-06-24', 1, 'm', NULL),
(18, 'ab', 'cd', 'ef', 'gh', '2020-06-17', 'ij', 'kl', 8867, 'dfdf@gmail.com', 'mn', 20, 888, '2020-06-25', 1, 'm', NULL),
(19, 'mod', 'demo', 'hhj24', 'fghgkk', '2020-06-18', '', 'morocco', 43, 'dfdf@gmail.com', 'guhj', 20, 31, '2020-06-19', 1, 'm', NULL),
(20, 'demo', 'demo', 'hhgf444', 'fghgkk', '2020-06-26', '', 'morocco', 5666, 'dfdf@gmail.com', 'gttr5', 20, 28, '2020-06-25', 1, 'm', NULL),
(21, 'demo', 'lemo', 'ddg', 'fffffffffffff', '2020-06-16', '', 'morocco', 4444, 'dfdf@gmail.com', 'gttr5', 20, 36, '2020-06-23', 1, 'm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paiement`
--

CREATE TABLE `paiement` (
  `id` int(11) NOT NULL,
  `mois` date DEFAULT NULL,
  `salaire_brut` float DEFAULT NULL,
  `heures_supl` int(11) DEFAULT NULL,
  `jour_absence` int(11) DEFAULT NULL,
  `id_employe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `libelle` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `libelle`) VALUES
(1, 'comptabilité'),
(2, 'RH'),
(3, 'devllopeur');

-- --------------------------------------------------------

--
-- Table structure for table `type_conge`
--

CREATE TABLE `type_conge` (
  `id` int(11) NOT NULL,
  `libelle` varchar(200) DEFAULT NULL,
  `duree` int(11) DEFAULT NULL,
  `solde_conge` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type_conge`
--

INSERT INTO `type_conge` (`id`, `libelle`, `duree`, `solde_conge`) VALUES
(20, 'maladie', 10, NULL),
(21, 'marié', 7, NULL),
(22, 'formation', 10, NULL),
(23, 'examen', 3, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demande_conge`
--
ALTER TABLE `demande_conge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_employe` (`id_employe`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_login` (`id_login`),
  ADD KEY `id_service` (`id_service`);

--
-- Indexes for table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_employe` (`id_employe`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_conge`
--
ALTER TABLE `type_conge`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `demande_conge`
--
ALTER TABLE `demande_conge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `type_conge`
--
ALTER TABLE `type_conge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `demande_conge`
--
ALTER TABLE `demande_conge`
  ADD CONSTRAINT `demande_conge_ibfk_1` FOREIGN KEY (`id_employe`) REFERENCES `employe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `demande_conge_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `type_conge` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`id_login`) REFERENCES `auth` (`id`),
  ADD CONSTRAINT `employe_ibfk_2` FOREIGN KEY (`id_service`) REFERENCES `service` (`id`);

--
-- Constraints for table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `paiement_ibfk_1` FOREIGN KEY (`id_employe`) REFERENCES `employe` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
