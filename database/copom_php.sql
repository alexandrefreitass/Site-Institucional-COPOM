-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Fev-2023 às 03:25
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `copom_php`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamados`
--

CREATE TABLE `chamados` (
  `id_chamado` int(5) NOT NULL,
  `data_hora` varchar(11) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `numero_chamado` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `atendente` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `solicitante` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `local_chamado` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `motivo` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `reiteracoes` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `chamados`
--

INSERT INTO `chamados` (`id_chamado`, `data_hora`, `numero_chamado`, `atendente`, `solicitante`, `local_chamado`, `motivo`, `reiteracoes`) VALUES
(1, '29DEZ22', 'RDI659463', 'Leonardo', 'Alexandre', 'mesa sup despacho', 'ramal mudo telefone branco analógico teste de continuar utilizando', '-'),
(2, '05JAN23', 'RDI555666', 'Rosana', 'Alexandre', 'Impressora ADM', 'enroscando papel em cima e em baixo, borrachinha gasta', ''),
(3, '05JAN23', 'RDS662878', 'Higor', 'Alexandre', 'Google gmail', 'erro ao entrar', ''),
(4, '17JAN17', 'RDI659463', 'Leonardo', 'Alexandre', 'COPOM mesa sup despacho', 'ramal mudo telefone branco analógico', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inventario`
--

CREATE TABLE `inventario` (
  `id_item` int(5) NOT NULL,
  `nome_item` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `detalhes_item` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nserie_item` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `patrimonio_item` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `local_item` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `inventario`
--

INSERT INTO `inventario` (`id_item`, `nome_item`, `detalhes_item`, `nserie_item`, `patrimonio_item`, `local_item`) VALUES
(1, 'Computador novo', 'lenovo M75q', 'PE08SMJ5', 'NXDR34223423', 'PA 11 - 190');

-- --------------------------------------------------------

--
-- Estrutura da tabela `missoes`
--

CREATE TABLE `missoes` (
  `id_missao` int(11) NOT NULL,
  `descricao_missao` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tecnico` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `prazo_missao` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status_missao` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `missoes`
--

INSERT INTO `missoes` (`id_missao`, `descricao_missao`, `tecnico`, `prazo_missao`, `status_missao`) VALUES
(1, 'PA 06 com problema no solidus, no videowall aparece não disponível', 'Alexandre', '-', 'concluído'),
(2, 'Piso elevado cortando os cabos no master site', 'Alexandre', '-', 'concluído'),
(3, 'trocar teclado', 'Alexandre', '5 dias', 'em andamento'),
(5, '', 'Alexandre', '', 'em andamento'),
(6, 'aaaaaaaaaaa', 'C. Lopes', '5 dias', 'em andamento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `USUARIO` varchar(255) CHARACTER SET latin1 NOT NULL,
  `SENHA` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`ID`, `USUARIO`, `SENHA`) VALUES
(1, 'admin', 'telematica2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chamados`
--
ALTER TABLE `chamados`
  ADD PRIMARY KEY (`id_chamado`);

--
-- Indexes for table `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `missoes`
--
ALTER TABLE `missoes`
  ADD PRIMARY KEY (`id_missao`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `USUARIO` (`USUARIO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chamados`
--
ALTER TABLE `chamados`
  MODIFY `id_chamado` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_item` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `missoes`
--
ALTER TABLE `missoes`
  MODIFY `id_missao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
