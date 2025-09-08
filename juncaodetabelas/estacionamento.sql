-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/09/2025 às 05:18
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
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `andar`
--

DROP TABLE IF EXISTS `andar`;
CREATE TABLE `andar` (
  `codlugar` int(11) NOT NULL,
  `capacidade` int(11) NOT NULL,
  `andar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `andar`
--

INSERT INTO `andar` (`codlugar`, `capacidade`, `andar`) VALUES
(1, 50, 'Térreo'),
(2, 45, '1º Andar'),
(3, 40, '2º Andar'),
(4, 35, '3º Andar'),
(5, 30, '4º Andar'),
(6, 25, '5º Andar'),
(7, 20, '6º Andar'),
(8, 15, '7º Andar'),
(9, 10, '8º Andar'),
(10, 5, '9º Andar');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `datanascimento` date NOT NULL,
  `rg` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `nome`, `datanascimento`, `rg`, `telefone`, `email`) VALUES
('00000000000', 'Juliana Pinto', '1991-04-12', 'GO7654321', '62900000010', 'juliana.pinto@email.com'),
('22222222222', 'Bruno Souza', '1990-07-20', 'SP7654321', '11988880002', 'bruno.souza@email.com'),
('33333333333', 'Carlos Lima', '1975-12-05', 'RJ2345678', '21977770003', 'carlos.lima@email.com'),
('44444444444', 'Daniela Rocha', '1988-03-10', 'RS8765432', '51966660004', 'daniela.rocha@email.com'),
('55555555555', 'Eduardo Alves', '1995-09-30', 'BA3456789', '71955550005', 'eduardo.alves@email.com'),
('66666666666', 'Fabiana Costa', '1982-11-25', 'PR9876543', '41944440006', 'fabiana.costa@email.com'),
('77777777777', 'Gabriel Martins', '1993-01-17', 'PE4567890', '81933330007', 'gabriel.martins@email.com'),
('88888888888', 'Helena Ferreira', '1985-06-06', 'CE6543210', '85922220008', 'helena.ferreira@email.com'),
('99999999999', 'Igor Dias', '1978-08-22', 'SC5678901', '47911110009', 'igor.dias@email.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estaciona`
--

DROP TABLE IF EXISTS `estaciona`;
CREATE TABLE `estaciona` (
  `codestaciona` int(11) NOT NULL,
  `horaentrada` datetime NOT NULL,
  `horasaida` datetime DEFAULT NULL,
  `codplaca` varchar(20) NOT NULL,
  `codlugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estaciona`
--

INSERT INTO `estaciona` (`codestaciona`, `horaentrada`, `horasaida`, `codplaca`, `codlugar`) VALUES
(2, '2025-09-05 08:15:00', NULL, 'DEF5678', 2),
(3, '2025-09-05 08:30:00', NULL, 'GHI9012', 3),
(4, '2025-09-05 08:45:00', NULL, 'JKL3456', 4),
(5, '2025-09-05 09:00:00', NULL, 'MNO7890', 5),
(6, '2025-09-05 09:15:00', NULL, 'PQR2345', 6),
(7, '2025-09-05 09:30:00', NULL, 'STU6789', 7),
(8, '2025-09-05 09:45:00', NULL, 'VWX0123', 8),
(9, '2025-09-05 10:00:00', NULL, 'YZA4567', 9),
(10, '2025-09-05 10:15:00', NULL, 'BCD8901', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

DROP TABLE IF EXISTS `modelo`;
CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`) VALUES
(1, 'Honda Civic'),
(2, 'Toyota Corolla'),
(3, 'Ford Ka'),
(4, 'Chevrolet Onix'),
(5, 'Volkswagen Golf'),
(6, 'Renault Sandero'),
(7, 'Hyundai HB20'),
(8, 'Nissan Versa'),
(9, 'Jeep Renegade'),
(10, 'Fiat Uno');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
CREATE TABLE `veiculo` (
  `codplaca` varchar(20) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `codmodelo` int(11) NOT NULL,
  `cpf` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`codplaca`, `cor`, `codmodelo`, `cpf`) VALUES
('BCD8901', 'Roxo', 3, '00000000000'),
('DEF5678', 'Preto', 2, '22222222222'),
('GHI9012', 'Vermelho', 3, '33333333333'),
('JKL3456', 'Azul', 4, '44444444444'),
('MNO7890', 'Cinza', 5, '55555555555'),
('PQR2345', 'Prata', 6, '66666666666'),
('STU6789', 'Verde', 7, '77777777777'),
('VWX0123', 'Amarelo', 8, '88888888888'),
('YZA4567', 'Marrom', 9, '99999999999');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codlugar`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`codestaciona`),
  ADD KEY `codplaca` (`codplaca`),
  ADD KEY `codlugar` (`codlugar`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`codplaca`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `codlugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `codestaciona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`codplaca`) REFERENCES `veiculo` (`codplaca`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codlugar`) REFERENCES `andar` (`codlugar`);

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
