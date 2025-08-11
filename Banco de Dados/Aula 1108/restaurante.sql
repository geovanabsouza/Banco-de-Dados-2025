-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/08/2025 às 00:31
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `restaurante`
--
CREATE DATABASE IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurante`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `arearestaurante`
--

CREATE TABLE `arearestaurante` (
  `codarea` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `arearestaurante`
--

INSERT INTO `arearestaurante` (`codarea`, `descricao`) VALUES
(1, 'Área 1'),
(2, 'Área 2'),
(3, 'Área 3'),
(4, 'Área 4'),
(5, 'Área 5'),
(6, 'Área 6'),
(7, 'Área 7'),
(8, 'Área 8'),
(9, 'Área 9'),
(10, 'Área 10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `codatendimento` int(11) NOT NULL,
  `codgarcom` int(11) DEFAULT NULL,
  `codmesa` int(11) DEFAULT NULL,
  `horarioentrada` datetime DEFAULT NULL,
  `horariosaida` datetime DEFAULT NULL,
  `qtdpessoas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento`
--

INSERT INTO `atendimento` (`codatendimento`, `codgarcom`, `codmesa`, `horarioentrada`, `horariosaida`, `qtdpessoas`) VALUES
(1, 1, 1, '2025-08-11 10:00:00', '2025-08-11 11:00:00', 4),
(2, 2, 2, '2025-08-11 10:15:00', '2025-08-11 11:15:00', 2),
(3, 3, 3, '2025-08-11 10:30:00', '2025-08-11 11:30:00', 6),
(4, 4, 4, '2025-08-11 10:45:00', '2025-08-11 11:45:00', 4),
(5, 5, 5, '2025-08-11 11:00:00', '2025-08-11 12:00:00', 8),
(6, 6, 6, '2025-08-11 11:15:00', '2025-08-11 12:15:00', 4),
(7, 7, 7, '2025-08-11 11:30:00', '2025-08-11 12:30:00', 10),
(8, 8, 8, '2025-08-11 11:45:00', '2025-08-11 12:45:00', 4),
(9, 9, 9, '2025-08-11 12:00:00', '2025-08-11 13:00:00', 6),
(10, 10, 10, '2025-08-11 12:15:00', '2025-08-11 13:15:00', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `conta`
--

CREATE TABLE `conta` (
  `codconta` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `valortotal` decimal(10,2) DEFAULT NULL,
  `valorporpessoa` decimal(10,2) DEFAULT NULL,
  `codmesa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `conta`
--

INSERT INTO `conta` (`codconta`, `data`, `valortotal`, `valorporpessoa`, `codmesa`) VALUES
(1, '2025-08-11', 100.00, 25.00, 1),
(2, '2025-08-11', 50.00, 25.00, 2),
(3, '2025-08-11', 150.00, 25.00, 3),
(4, '2025-08-11', 100.00, 25.00, 4),
(5, '2025-08-11', 200.00, 25.00, 5),
(6, '2025-08-11', 100.00, 25.00, 6),
(7, '2025-08-11', 250.00, 25.00, 7),
(8, '2025-08-11', 100.00, 25.00, 8),
(9, '2025-08-11', 150.00, 25.00, 9),
(10, '2025-08-11', 50.00, 25.00, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `garcon`
--

CREATE TABLE `garcon` (
  `codgarcom` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `garcon`
--

INSERT INTO `garcon` (`codgarcom`, `nome`) VALUES
(1, 'Garcon 1'),
(2, 'Garcon 2'),
(3, 'Garcon 3'),
(4, 'Garcon 4'),
(5, 'Garcon 5'),
(6, 'Garcon 6'),
(7, 'Garcon 7'),
(8, 'Garcon 8'),
(9, 'Garcon 9'),
(10, 'Garcon 10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `item`
--

CREATE TABLE `item` (
  `coditem` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `item`
--

INSERT INTO `item` (`coditem`, `nome`, `preco`) VALUES
(1, 'Item 1', 10.00),
(2, 'Item 2', 15.00),
(3, 'Item 3', 8.00),
(4, 'Item 4', 12.00),
(5, 'Item 5', 7.00),
(6, 'Item 6', 20.00),
(7, 'Item 7', 5.00),
(8, 'Item 8', 9.00),
(9, 'Item 9', 14.00),
(10, 'Item 10', 6.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `itensconta`
--

CREATE TABLE `itensconta` (
  `cod_itensconta` int(11) NOT NULL,
  `codconta` int(11) DEFAULT NULL,
  `coditem` int(11) DEFAULT NULL,
  `qtde` int(11) DEFAULT NULL,
  `totalitem` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itensconta`
--

INSERT INTO `itensconta` (`cod_itensconta`, `codconta`, `coditem`, `qtde`, `totalitem`) VALUES
(1, 1, 1, 2, 20.00),
(2, 2, 2, 1, 15.00),
(3, 3, 3, 3, 24.00),
(4, 4, 4, 1, 12.00),
(5, 5, 5, 5, 35.00),
(6, 6, 6, 2, 40.00),
(7, 7, 7, 4, 20.00),
(8, 8, 8, 2, 18.00),
(9, 9, 9, 3, 42.00),
(10, 10, 10, 1, 6.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mesa`
--

CREATE TABLE `mesa` (
  `codmesa` int(11) NOT NULL,
  `comporta` int(11) DEFAULT NULL,
  `codarea` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `mesa`
--

INSERT INTO `mesa` (`codmesa`, `comporta`, `codarea`) VALUES
(1, 4, 1),
(2, 2, 2),
(3, 6, 3),
(4, 4, 4),
(5, 8, 5),
(6, 4, 6),
(7, 10, 7),
(8, 4, 8),
(9, 6, 9),
(10, 2, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `arearestaurante`
--
ALTER TABLE `arearestaurante`
  ADD PRIMARY KEY (`codarea`);

--
-- Índices de tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`codatendimento`),
  ADD KEY `codgarcom` (`codgarcom`),
  ADD KEY `codmesa` (`codmesa`);

--
-- Índices de tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`codconta`),
  ADD KEY `codmesa` (`codmesa`);

--
-- Índices de tabela `garcon`
--
ALTER TABLE `garcon`
  ADD PRIMARY KEY (`codgarcom`);

--
-- Índices de tabela `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`coditem`);

--
-- Índices de tabela `itensconta`
--
ALTER TABLE `itensconta`
  ADD PRIMARY KEY (`cod_itensconta`),
  ADD KEY `codconta` (`codconta`),
  ADD KEY `coditem` (`coditem`);

--
-- Índices de tabela `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`codmesa`),
  ADD KEY `codarea` (`codarea`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arearestaurante`
--
ALTER TABLE `arearestaurante`
  MODIFY `codarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `codatendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `conta`
--
ALTER TABLE `conta`
  MODIFY `codconta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `garcon`
--
ALTER TABLE `garcon`
  MODIFY `codgarcom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `item`
--
ALTER TABLE `item`
  MODIFY `coditem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `itensconta`
--
ALTER TABLE `itensconta`
  MODIFY `cod_itensconta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `mesa`
--
ALTER TABLE `mesa`
  MODIFY `codmesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`codgarcom`) REFERENCES `garcon` (`codgarcom`),
  ADD CONSTRAINT `atendimento_ibfk_2` FOREIGN KEY (`codmesa`) REFERENCES `mesa` (`codmesa`);

--
-- Restrições para tabelas `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `conta_ibfk_1` FOREIGN KEY (`codmesa`) REFERENCES `mesa` (`codmesa`);

--
-- Restrições para tabelas `itensconta`
--
ALTER TABLE `itensconta`
  ADD CONSTRAINT `itensconta_ibfk_1` FOREIGN KEY (`codconta`) REFERENCES `conta` (`codconta`),
  ADD CONSTRAINT `itensconta_ibfk_2` FOREIGN KEY (`coditem`) REFERENCES `item` (`coditem`);

--
-- Restrições para tabelas `mesa`
--
ALTER TABLE `mesa`
  ADD CONSTRAINT `mesa_ibfk_1` FOREIGN KEY (`codarea`) REFERENCES `arearestaurante` (`codarea`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
