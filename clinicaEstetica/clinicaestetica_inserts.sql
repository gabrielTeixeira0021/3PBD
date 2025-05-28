
--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `telefone`, `email`, `credito_disponivel`) VALUES
(1, 'GabrielTeixeira', '21-96646 2979', 'charles@gmail.com', 40.00),
(2, 'DavyAnd', '21-9996 8929', 'andDavy@gmail.com', 10.00),
(3, 'Maria Silva', '11999999999', 'maria@example.com', 100.00),
(4, 'João Souza', '11888888888', 'joao@example.com', 50.00);

-- --------------------------------------------------------

--
-- Dumping data for table `especialidade`
--

INSERT INTO `especialidade` (`id_especialidade`, `nome`) VALUES
(1, 'Cabelereiro'),
(2, 'Esteticista');

-- --------------------------------------------------------

--
-- Dumping data for table `fila_de_espera`
--

INSERT INTO `fila_de_espera` (`id_fila`, `id_cliente`, `hora_de_chegada`, `status_fila`, `id_servico`) VALUES
(1, 1, '2025-05-28 09:00:00', 'aguardando', 2),
(2, 2, '2025-05-28 09:15:00', 'aguardando', 3);

-- --------------------------------------------------------

--
-- Dumping data for table `pacote`
--

INSERT INTO `pacote` (`id_pacote`, `nome`, `valor`, `descricao`) VALUES
(1, 'Pacote Relaxamento', 250.00, 'Massagem + Limpeza de pele'),
(2, 'Pacote Premium', 450.00, 'Serviços combinados de salão e estética');

-- --------------------------------------------------------

--
-- Dumping data for table `pacote_servico`
--

INSERT INTO `pacote_servico` (`id_pacote`, `id_servico`) VALUES
(1, 3),
(2, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Dumping data for table `pagamento`
--

INSERT INTO `pagamento` (`id_pagamento`, `data_pagamento`, `valor_pago`, `status_pagamento`, `id_reserva`) VALUES
(1, '2025-05-28 10:00:00', 150.00, 'pago', 1),
(2, '2025-05-28 11:00:00', 200.00, 'pago', 2);

-- --------------------------------------------------------

--
-- Dumping data for table `profissional`
--

INSERT INTO `profissional` (`id_profissional`, `id_especialidade`, `nome`, `telefone`, `email`) VALUES
(1, 1, 'Ana Paula', '1', 'ana@example.com'),
(2, 2, 'Carlos Lima', '2', 'carlos@example.com');

-- --------------------------------------------------------

--
-- Dumping data for table `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `status`, `id_cliente`, `id_profissional`) VALUES
(1, 'confirmada', 1, 1),
(2, 'confirmada', 2, 2);

-- --------------------------------------------------------

--
-- Dumping data for table `reserva_servico`
--

INSERT INTO `reserva_servico` (`id_reserva`, `id_servico`, `data`, `hora`) VALUES
(1, 1, '2025-05-30', '10:00:00'),
(2, 3, '2025-05-30', '11:00:00');

-- --------------------------------------------------------

--
-- Dumping data for table `servico`
--

INSERT INTO `servico` (`id_servico`, `nome`, `duracao`, `valor`, `descricao`, `id_especialidade`) VALUES
(1, 'Corte de cabelo', 30, 80.00, 'Corte feminino com lavagem', 1),
(2, 'Escova', 45, 100.00, 'Escova modeladora', 1),
(3, 'Limpeza de pele', 60, 150.00, 'Tratamento facial completo', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indexes for table `especialidade`
--
ALTER TABLE `especialidade`
  ADD PRIMARY KEY (`id_especialidade`);

--
-- Indexes for table `fila_de_espera`
--
ALTER TABLE `fila_de_espera`
  ADD PRIMARY KEY (`id_fila`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_servico` (`id_servico`);

--
-- Indexes for table `pacote`
--
ALTER TABLE `pacote`
  ADD PRIMARY KEY (`id_pacote`);

--
-- Indexes for table `pacote_servico`
--
ALTER TABLE `pacote_servico`
  ADD PRIMARY KEY (`id_pacote`,`id_servico`),
  ADD KEY `id_servico` (`id_servico`);

--
-- Indexes for table `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`id_pagamento`),
  ADD KEY `id_reserva` (`id_reserva`);

--
-- Indexes for table `profissional`
--
ALTER TABLE `profissional`
  ADD PRIMARY KEY (`id_profissional`),
  ADD KEY `id_especialidade` (`id_especialidade`);

--
-- Indexes for table `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_profissional` (`id_profissional`);

--
-- Indexes for table `reserva_servico`
--
ALTER TABLE `reserva_servico`
  ADD PRIMARY KEY (`id_reserva`,`id_servico`,`data`,`hora`),
  ADD KEY `id_servico` (`id_servico`);

--
-- Indexes for table `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`id_servico`),
  ADD KEY `id_especialidade` (`id_especialidade`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `especialidade`
--
ALTER TABLE `especialidade`
  MODIFY `id_especialidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fila_de_espera`
--
ALTER TABLE `fila_de_espera`
  MODIFY `id_fila` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pacote`
--
ALTER TABLE `pacote`
  MODIFY `id_pacote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `id_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profissional`
--
ALTER TABLE `profissional`
  MODIFY `id_profissional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `servico`
--
ALTER TABLE `servico`
  MODIFY `id_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fila_de_espera`
--
ALTER TABLE `fila_de_espera`
  ADD CONSTRAINT `fila_de_espera_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fila_de_espera_ibfk_2` FOREIGN KEY (`id_servico`) REFERENCES `servico` (`id_servico`);

--
-- Constraints for table `pacote_servico`
--
ALTER TABLE `pacote_servico`
  ADD CONSTRAINT `pacote_servico_ibfk_1` FOREIGN KEY (`id_pacote`) REFERENCES `pacote` (`id_pacote`),
  ADD CONSTRAINT `pacote_servico_ibfk_2` FOREIGN KEY (`id_servico`) REFERENCES `servico` (`id_servico`);

--
-- Constraints for table `pagamento`
--
ALTER TABLE `pagamento`
  ADD CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`);

--
-- Constraints for table `profissional`
--
ALTER TABLE `profissional`
  ADD CONSTRAINT `profissional_ibfk_1` FOREIGN KEY (`id_especialidade`) REFERENCES `especialidade` (`id_especialidade`);

--
-- Constraints for table `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`id_profissional`) REFERENCES `profissional` (`id_profissional`);

--
-- Constraints for table `reserva_servico`
--
ALTER TABLE `reserva_servico`
  ADD CONSTRAINT `reserva_servico_ibfk_1` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`),
  ADD CONSTRAINT `reserva_servico_ibfk_2` FOREIGN KEY (`id_servico`) REFERENCES `servico` (`id_servico`);

--
-- Constraints for table `servico`
--
ALTER TABLE `servico`
  ADD CONSTRAINT `servico_ibfk_1` FOREIGN KEY (`id_especialidade`) REFERENCES `especialidade` (`id_especialidade`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
