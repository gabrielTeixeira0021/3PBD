-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 20/05/2025 às 15:37
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clinica_estetica_rosangela`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente_table`
--

CREATE TABLE `cliente_table` (
  `cliente_id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `telefone` varchar(40) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `credito_disponivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `especialidade`
--

CREATE TABLE `especialidade` (
  `especialidade_id` int(11) NOT NULL,
  `nome` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `profissional`
--

CREATE TABLE `profissional` (
  `profissional_id` int(11) NOT NULL,
  `especialidade_id` int(11) NOT NULL,
  `primeiro_nome` varchar(50) NOT NULL,
  `sobrenome` varchar(70) NOT NULL,
  `telefone` varchar(60) NOT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva`
--

CREATE TABLE `reserva` (
  `reserva_id` int(11) NOT NULL,
  `reserva_status` varchar(20) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `profissional_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `serviço`
--

CREATE TABLE `serviço` (
  `servico_id` int(11) NOT NULL,
  `nome` int(11) NOT NULL,
  `duração` int(10) UNSIGNED NOT NULL,
  `valor` double UNSIGNED NOT NULL,
  `descricao` text DEFAULT NULL,
  `especialidade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente_table`
--
ALTER TABLE `cliente_table`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Índices de tabela `especialidade`
--
ALTER TABLE `especialidade`
  ADD PRIMARY KEY (`especialidade_id`);

--
-- Índices de tabela `profissional`
--
ALTER TABLE `profissional`
  ADD PRIMARY KEY (`profissional_id`),
  ADD KEY `especialidade_id` (`especialidade_id`);

--
-- Índices de tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`reserva_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `profissional_id` (`profissional_id`);

--
-- Índices de tabela `serviço`
--
ALTER TABLE `serviço`
  ADD PRIMARY KEY (`servico_id`),
  ADD KEY `especialidade_id` (`especialidade_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente_table`
--
ALTER TABLE `cliente_table`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `especialidade`
--
ALTER TABLE `especialidade`
  MODIFY `especialidade_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `profissional`
--
ALTER TABLE `profissional`
  MODIFY `profissional_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `reserva_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `serviço`
--
ALTER TABLE `serviço`
  MODIFY `servico_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `profissional`
--
ALTER TABLE `profissional`
  ADD CONSTRAINT `profissional_ibfk_1` FOREIGN KEY (`especialidade_id`) REFERENCES `especialidade` (`especialidade_id`);

--
-- Restrições para tabelas `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente_table` (`cliente_id`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`profissional_id`) REFERENCES `profissional` (`profissional_id`);

--
-- Restrições para tabelas `serviço`
--
ALTER TABLE `serviço`
  ADD CONSTRAINT `serviço_ibfk_1` FOREIGN KEY (`especialidade_id`) REFERENCES `especialidade` (`especialidade_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
