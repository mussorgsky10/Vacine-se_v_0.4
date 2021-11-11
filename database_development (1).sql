-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 08-Nov-2021 às 23:47
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `database_development`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `recompensas`
--

DROP TABLE IF EXISTS `recompensas`;
CREATE TABLE IF NOT EXISTS `recompensas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `recompensas`
--

INSERT INTO `recompensas` (`id`, `item`, `descricao`, `createdAt`, `updatedAt`) VALUES
(2, 'Porção de Batata frita', 'Serve 2 pessoas', '2021-11-08 12:30:24', '2021-11-08 12:30:24'),
(3, 'Pizza Banana c/ Canela', '4 pedaços', '2021-11-08 12:55:42', '2021-11-08 12:55:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
CREATE TABLE IF NOT EXISTS `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20211107230840-create-vacinado.js'),
('20211107231243-create-uso.js'),
('20211107231501-create-sorteio.js'),
('20211107231630-create-recompensa.js'),
('20211107231824-create-sorteado.js'),
('20211108140543-create-historico.js'),
('20211108163728-create-use.js');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sorteados`
--

DROP TABLE IF EXISTS `sorteados`;
CREATE TABLE IF NOT EXISTS `sorteados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_sorteado` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sorteios`
--

DROP TABLE IF EXISTS `sorteios`;
CREATE TABLE IF NOT EXISTS `sorteios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cracha_sorteado` varchar(255) DEFAULT NULL,
  `itemId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemId` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `uses`
--

DROP TABLE IF EXISTS `uses`;
CREATE TABLE IF NOT EXISTS `uses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cracha` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `uses`
--

INSERT INTO `uses` (`id`, `userId`, `nome`, `cracha`, `createdAt`, `updatedAt`) VALUES
(1, '4', 'Luizinho Lopes', '001', '2021-11-08 16:49:29', '2021-11-08 16:49:29'),
(2, '5', 'Helena Lopes', '002', '2021-11-08 17:20:04', '2021-11-08 17:20:04'),
(3, '10', 'Gustavo Dudamel', '003', '2021-11-08 17:44:48', '2021-11-08 17:44:48'),
(4, '12', 'Bernardino de Campos', '004', '2021-11-08 18:47:58', '2021-11-08 18:47:58'),
(5, '11', 'Gertrudes Casagrande', '005', '2021-11-08 19:18:09', '2021-11-08 19:18:09'),
(6, '13', 'Dona Florinda', '006', '2021-11-08 21:58:03', '2021-11-08 21:58:03'),
(7, '14', 'Vanuza Leão', '007', '2021-11-08 22:05:38', '2021-11-08 22:05:38'),
(11, '15', 'Henrique Quinto', '008', '2021-11-08 22:26:22', '2021-11-08 22:26:22'),
(12, '16', 'Bandeira Valente', '009', '2021-11-08 23:00:27', '2021-11-08 23:00:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vacinados`
--

DROP TABLE IF EXISTS `vacinados`;
CREATE TABLE IF NOT EXISTS `vacinados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vacinados`
--

INSERT INTO `vacinados` (`id`, `nome`, `telefone`, `createdAt`, `updatedAt`) VALUES
(4, 'Luizinho Lopes', '19993839873', '2021-11-08 12:26:59', '2021-11-08 12:26:59'),
(5, 'Helena Lopes', '19633221144', '2021-11-08 13:00:34', '2021-11-08 13:00:34'),
(10, 'Gustavo Dudamel', '11233665544', '2021-11-08 13:07:20', '2021-11-08 13:07:20'),
(11, 'Gertrudes Casagrande', '11233669988', '2021-11-08 17:03:54', '2021-11-08 17:03:54'),
(12, 'Bernardino de Campos', '22355221144', '2021-11-08 18:47:36', '2021-11-08 18:47:36'),
(13, 'Dona Florinda', '80744556633', '2021-11-08 18:49:15', '2021-11-08 18:49:15'),
(14, 'Vanuza Leão', '99633225588', '2021-11-08 21:58:36', '2021-11-08 21:58:36'),
(15, 'Henrique Quinto', '88522114477', '2021-11-08 22:14:11', '2021-11-08 22:14:11'),
(16, 'Bandeira Valente', '22355889966', '2021-11-08 22:37:05', '2021-11-08 22:37:05'),
(17, 'Jefferson Thomas', '77411223366', '2021-11-08 23:03:00', '2021-11-08 23:03:00');

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `sorteios`
--
ALTER TABLE `sorteios`
  ADD CONSTRAINT `sorteios_ibfk_1` FOREIGN KEY (`itemId`) REFERENCES `recompensas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
