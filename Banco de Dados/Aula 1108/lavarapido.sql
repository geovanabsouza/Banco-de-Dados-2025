-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/08/2025 às 00:23
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
-- Banco de dados: `lavarapido`
--
CREATE DATABASE IF NOT EXISTS `lavarapido` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lavarapido`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `codatendimento` int(11) NOT NULL,
  `codcarro` int(11) DEFAULT NULL,
  `totalgeral` decimal(10,2) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento`
--

INSERT INTO `atendimento` (`codatendimento`, `codcarro`, `totalgeral`, `data`) VALUES
(1, NULL, 80.00, '2025-08-01'),
(2, NULL, 150.00, '2025-08-02'),
(3, NULL, 50.00, '2025-08-03'),
(4, NULL, 100.00, '2025-08-04'),
(5, NULL, 250.00, '2025-08-05'),
(6, NULL, 70.00, '2025-08-06'),
(7, NULL, 90.00, '2025-08-07'),
(8, NULL, 200.00, '2025-08-08'),
(9, NULL, 300.00, '2025-08-09'),
(10, NULL, 120.00, '2025-08-10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento_servico`
--

CREATE TABLE `atendimento_servico` (
  `codatendimentoservico` int(11) NOT NULL,
  `codatendimento` int(11) DEFAULT NULL,
  `codservico` int(11) DEFAULT NULL,
  `qtde` int(11) NOT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento_servico`
--

INSERT INTO `atendimento_servico` (`codatendimentoservico`, `codatendimento`, `codservico`, `qtde`, `total`) VALUES
(1, 1, 1, 1, 30.00),
(2, 1, 2, 1, 50.00),
(3, 2, 3, 1, 100.00),
(4, 3, 4, 1, 80.00),
(5, 4, 5, 1, 150.00),
(6, 5, 6, 1, 70.00),
(7, 6, 7, 1, 90.00),
(8, 7, 8, 1, 200.00),
(9, 8, 9, 1, 300.00),
(10, 9, 10, 1, 120.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `codcarro` int(11) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `ano` int(11) NOT NULL,
  `codcliente` int(11) DEFAULT NULL,
  `codmodelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`codcarro`, `placa`, `ano`, `codcliente`, `codmodelo`) VALUES
(1, '', 2020, 1, 1),
(2, '', 2018, 2, 3),
(3, '', 2022, 3, 5),
(4, '', 2019, 4, 2),
(5, '', 2021, 5, 4),
(6, '', 2017, 6, 6),
(7, '', 2023, 7, 8),
(8, '', 2015, 8, 7),
(9, '', 2016, 9, 9),
(10, '', 2020, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `datanascimento` date NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `codendereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `nome`, `datanascimento`, `telefone`, `email`, `codendereco`) VALUES
(1, 'João Silva', '1990-05-12', '11999999999', 'joao@email.com', 1),
(2, 'Maria Oliveira', '1985-03-20', '21988888888', 'maria@email.com', 2),
(3, 'Carlos Souza', '1995-07-10', '41977777777', 'carlos@email.com', 3),
(4, 'Fernanda Lima', '1988-11-25', '31966666666', 'fernanda@email.com', 4),
(5, 'Ricardo Santos', '1992-01-15', '85955555555', 'ricardo@email.com', 5),
(6, 'Patrícia Gomes', '1987-08-19', '51944444444', 'patricia@email.com', 6),
(7, 'Lucas Mendes', '1994-09-30', '11933333333', 'lucas@email.com', 7),
(8, 'Ana Paula', '1991-04-05', '61922222222', 'ana@email.com', 8),
(9, 'Marcos Rocha', '1989-06-14', '31911111111', 'marcos@email.com', 9),
(10, 'Cláudia Torres', '1993-02-27', '48900000000', 'claudia@email.com', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `codendereco` int(11) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `num` varchar(10) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`codendereco`, `rua`, `num`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'Rua das Flores', '100', 'Centro', 'São Paulo', 'SP', '01000-000'),
(2, 'Av. Brasil', '250', 'Jardim América', 'Rio de Janeiro', 'RJ', '20000-000'),
(3, 'Rua 15 de Novembro', '50', 'Centro', 'Curitiba', 'PR', '80000-000'),
(4, 'Rua A', '123', 'Bairro X', 'Belo Horizonte', 'MG', '30000-000'),
(5, 'Av. Central', '555', 'Centro', 'Fortaleza', 'CE', '60000-000'),
(6, 'Rua das Palmeiras', '77', 'Zona Sul', 'Porto Alegre', 'RS', '90000-000'),
(7, 'Av. Paulista', '1500', 'Bela Vista', 'São Paulo', 'SP', '01310-200'),
(8, 'Rua das Acácias', '45', 'Jardim Botânico', 'Brasília', 'DF', '70000-000'),
(9, 'Rua Azul', '89', 'Santa Efigênia', 'Belo Horizonte', 'MG', '30100-000'),
(10, 'Av. Beira Mar', '200', 'Centro', 'Florianópolis', 'SC', '88000-000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `marca`
--

CREATE TABLE `marca` (
  `codmarca` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `marca`
--

INSERT INTO `marca` (`codmarca`, `marca`) VALUES
(1, 'Toyota'),
(2, 'Honda'),
(3, 'Ford'),
(4, 'Chevrolet'),
(5, 'Volkswagen'),
(6, 'Hyundai'),
(7, 'Nissan'),
(8, 'Fiat'),
(9, 'Peugeot'),
(10, 'Renault');

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `codmarca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`, `codmarca`) VALUES
(1, 'Corolla', 1),
(2, 'Civic', 2),
(3, 'Fiesta', 3),
(4, 'Onix', 4),
(5, 'Gol', 5),
(6, 'HB20', 6),
(7, 'Versa', 7),
(8, 'Argo', 8),
(9, '208', 9),
(10, 'Kwid', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `codservico` int(11) NOT NULL,
  `servico` varchar(50) NOT NULL,
  `valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`codservico`, `servico`, `valor`) VALUES
(1, 'Lavagem Simples', 30.00),
(2, 'Lavagem Completa', 50.00),
(3, 'Polimento', 100.00),
(4, 'Higienização Interna', 80.00),
(5, 'Cristalização de Pintura', 150.00),
(6, 'Lavagem de Motor', 70.00),
(7, 'Enceramento', 90.00),
(8, 'Descontaminação de Pintura', 200.00),
(9, 'Vitrificação', 300.00),
(10, 'Lavagem Premium', 120.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`codatendimento`),
  ADD KEY `codcarro` (`codcarro`);

--
-- Índices de tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD PRIMARY KEY (`codatendimentoservico`),
  ADD KEY `codatendimento` (`codatendimento`),
  ADD KEY `codservico` (`codservico`);

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`codcarro`),
  ADD KEY `codcliente` (`codcliente`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`),
  ADD KEY `codendereco` (`codendereco`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`codendereco`);

--
-- Índices de tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`codmarca`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`),
  ADD KEY `codmarca` (`codmarca`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`codservico`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `codatendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  MODIFY `codatendimentoservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `codcarro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `codendereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `codmarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `codservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`codcarro`) REFERENCES `carro` (`codcarro`);

--
-- Restrições para tabelas `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD CONSTRAINT `atendimento_servico_ibfk_1` FOREIGN KEY (`codatendimento`) REFERENCES `atendimento` (`codatendimento`),
  ADD CONSTRAINT `atendimento_servico_ibfk_2` FOREIGN KEY (`codservico`) REFERENCES `servico` (`codservico`);

--
-- Restrições para tabelas `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`codcliente`) REFERENCES `cliente` (`codcliente`),
  ADD CONSTRAINT `carro_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);

--
-- Restrições para tabelas `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`codendereco`) REFERENCES `endereco` (`codendereco`);

--
-- Restrições para tabelas `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`codmarca`) REFERENCES `marca` (`codmarca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
