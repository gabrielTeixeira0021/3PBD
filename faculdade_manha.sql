-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2025 at 11:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faculdade_manha`
--

-- --------------------------------------------------------

--
-- Table structure for table `aluno`
--

CREATE TABLE `aluno` (
  `alunId` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cpf` varchar(21) DEFAULT NULL,
  `matricula` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `periodo` smallint(6) DEFAULT NULL,
  `emailInstitucional` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aluno`
--

INSERT INTO `aluno` (`alunId`, `nome`, `cpf`, `matricula`, `email`, `periodo`, `emailInstitucional`) VALUES
(1, 'Joao Ribeiro', '666.777.333-14', 2132131, 'joao231@gmail.com', 3, NULL),
(2, 'Camilla Rios', '123.345.322-15', 754346, 'camila123@gmail.com', 4, NULL),
(3, 'Davy Andrade', '343.654.646-54', 43242343, 'davy@gmail.com', 4, 'davy.2131231232@instituicao-rio.edu.br');

-- --------------------------------------------------------

--
-- Table structure for table `disciplina`
--

CREATE TABLE `disciplina` (
  `discId` int(11) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `cargaHoraria` int(11) DEFAULT NULL,
  `limite_falta` smallint(6) DEFAULT NULL,
  `periodo` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disciplina`
--

INSERT INTO `disciplina` (`discId`, `nome`, `sigla`, `cargaHoraria`, `limite_falta`, `periodo`) VALUES
(1, 'Fundamentos de programacao', '2FPR', 180, 20, 2),
(2, 'Construção de aplicações web', '2CAW', 160, 20, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`alunId`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`discId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `alunId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `discId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
