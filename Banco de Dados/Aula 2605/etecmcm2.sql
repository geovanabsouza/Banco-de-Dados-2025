-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/05/2025 às 04:09
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
-- Banco de dados: `etecmcm2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'limpeza'),
(2, 'frios'),
(3, 'oculos'),
(4, 'carnes'),
(5, 'enlatados'),
(6, 'eletronicos'),
(7, 'perfumaria'),
(8, 'bebidas'),
(9, 'hortifrut'),
(10, 'congelados');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `unidade_medida` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `id_categoria`, `unidade_medida`) VALUES
(1, 'Sabão em pó', 25.00, 4, 'OMO', 1, 'uni'),
(2, 'Detergente', 3.00, 25, 'Ypê', 1, 'uni'),
(3, 'Mussarela', 10.00, 80, 'Sadia', 2, '300g'),
(4, 'Oculos', 200.00, 1, 'Extra Otica', 3, 'uni'),
(5, 'Carne de panela', 25.00, 7, 'Perdigão', 4, '200g'),
(6, 'Milho', 4.00, 55, 'Qualitá', 5, '100g'),
(7, 'Celular', 900.00, 67, 'Samsung', 6, 'uni'),
(8, 'Body Splash Floratta Blue', 90.00, 59, 'O boticario', 7, 'uni'),
(9, 'Refrigerante', 3.00, 478, 'Guaraná Jesus', 8, '300ml'),
(10, 'Uva', 10.00, 92, 'turma da Mônica', 9, '400g'),
(11, 'Presunto', 8.00, 60, 'Sadia', 2, '300g'),
(12, 'Óculos escuros', 100.00, 10, 'Extra Otica', 3, 'uni'),
(13, 'Frango', 20.00, 8, 'Sadia', 4, '1kg'),
(14, 'Hidratante Corporal', 35.00, 87, 'Natura', 7, 'uni'),
(15, 'Suco de Uva', 5.00, 89, 'Vigor', 8, '500ml'),
(16, 'Nuggets', 15.00, 20, 'Perdigão', 10, '300g');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
