-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Set-2022 às 17:28
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dblaravel-final`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcategoria`
--

CREATE TABLE `tbcategoria` (
  `idCategoria` int(11) NOT NULL,
  `nomeCategoria` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbcategoria`
--

INSERT INTO `tbcategoria` (`idCategoria`, `nomeCategoria`, `created_at`, `updated_at`) VALUES
(1, 'Camisas', '2022-08-29 20:08:25', '2022-09-11 12:18:26'),
(2, 'Bermudas', '2022-08-29 20:08:25', '2022-09-11 12:18:11'),
(3, 'Botas', '0000-00-00 00:00:00', '2022-09-11 12:20:18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcliente`
--

CREATE TABLE `tbcliente` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(255) DEFAULT NULL,
  `dtNascCliente` date DEFAULT NULL,
  `estadoCivilCliente` varchar(20) DEFAULT NULL,
  `enderecoCliente` varchar(255) DEFAULT NULL,
  `numeroCliente` int(11) DEFAULT NULL,
  `complementoCliente` varchar(60) DEFAULT NULL,
  `cepCliente` varchar(8) DEFAULT NULL,
  `cidadeCliente` varchar(60) DEFAULT NULL,
  `estadoCliente` varchar(60) DEFAULT NULL,
  `rgCliente` varchar(9) DEFAULT NULL,
  `cpfCliente` varchar(11) DEFAULT NULL,
  `emailCliente` varchar(60) DEFAULT NULL,
  `foneCliente` varchar(11) DEFAULT NULL,
  `celularCliente` varchar(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbcliente`
--

INSERT INTO `tbcliente` (`idCliente`, `nomeCliente`, `dtNascCliente`, `estadoCivilCliente`, `enderecoCliente`, `numeroCliente`, `complementoCliente`, `cepCliente`, `cidadeCliente`, `estadoCliente`, `rgCliente`, `cpfCliente`, `emailCliente`, `foneCliente`, `celularCliente`, `created_at`, `updated_at`) VALUES
(1, 'João', '1990-10-05', 'Solteiro', 'Rua Jonival Andrade', 32, 'Casa', '00000000', 'São Paulo', 'São Paulo', '000000000', '00000000000', 'joao@gmail.com', '11111111111', '11111111111', '2022-08-29 20:08:46', '2022-08-29 17:08:46'),
(2, 'André', '1980-10-05', 'Solteiro', 'Rua José Freitas', 12, 'Casa', '00000000', 'São Paulo', 'São Paulo', '000000000', '00000000000', 'andre@gmail.com', '11111111111', '11111111111', '2022-08-29 20:08:46', '2022-08-29 17:08:46'),
(3, 'Josefina', '2000-10-05', 'Casada', 'Rua José Freitas', 88, 'Casa', '00000000', 'São Paulo', 'São Paulo', '000000000', '00000000000', 'josefina@gmail.com', '11111111111', '11111111111', '2022-08-29 20:08:46', '2022-08-29 17:08:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpedido`
--

CREATE TABLE `tbpedido` (
  `idPedido` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `dtPedido` date NOT NULL,
  `horaPedido` time NOT NULL,
  `quantPedido` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbpedido`
--

INSERT INTO `tbpedido` (`idPedido`, `idProduto`, `idCategoria`, `idCliente`, `dtPedido`, `horaPedido`, `quantPedido`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 1, '2022-10-07', '13:40:00', 2, '2022-08-29 20:09:02', '2022-08-29 17:09:02'),
(2, 3, 1, 3, '2022-10-07', '10:45:00', 1, '2022-08-29 20:09:02', '2022-08-29 17:09:02'),
(3, 2, 2, 2, '2022-12-22', '12:45:00', 1, '2022-08-29 20:09:02', '2022-08-29 17:09:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbproduto`
--

CREATE TABLE `tbproduto` (
  `idProduto` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `nomeProduto` varchar(100) NOT NULL,
  `valorProduto` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbproduto`
--

INSERT INTO `tbproduto` (`idProduto`, `idCategoria`, `nomeProduto`, `valorProduto`, `created_at`, `updated_at`) VALUES
(1, 3, 'Bota Coturno', 180, '2022-08-29 20:08:35', '2022-09-11 12:20:37'),
(2, 2, 'Bermuda Praia', 80, '2022-08-29 20:08:35', '2022-09-11 12:19:00'),
(3, 1, 'Camisa Santa Cruz', 120, '2022-08-29 20:08:35', '2022-09-11 12:19:06');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbcategoria`
--
ALTER TABLE `tbcategoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Índices para tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `tbpedido`
--
ALTER TABLE `tbpedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idCategoria` (`idCategoria`),
  ADD KEY `idProduto` (`idProduto`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices para tabela `tbproduto`
--
ALTER TABLE `tbproduto`
  ADD PRIMARY KEY (`idProduto`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbcategoria`
--
ALTER TABLE `tbcategoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbpedido`
--
ALTER TABLE `tbpedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbproduto`
--
ALTER TABLE `tbproduto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tbpedido`
--
ALTER TABLE `tbpedido`
  ADD CONSTRAINT `tbpedido_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `tbcategoria` (`idCategoria`),
  ADD CONSTRAINT `tbpedido_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `tbproduto` (`idProduto`),
  ADD CONSTRAINT `tbpedido_ibfk_3` FOREIGN KEY (`idCliente`) REFERENCES `tbcliente` (`idCliente`);

--
-- Limitadores para a tabela `tbproduto`
--
ALTER TABLE `tbproduto`
  ADD CONSTRAINT `tbproduto_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `tbcategoria` (`idCategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
