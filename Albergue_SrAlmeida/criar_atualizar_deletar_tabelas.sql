
-- ============================
-- Scripts INSERT / UPDATE / DELETE
-- ============================

-- CLIENTE
INSERT INTO Cliente (nome, identificacao, contato) VALUES ('João Silva', '12345678900', 'joao@email.com');
UPDATE Cliente SET contato = 'joao_silva@email.com' WHERE id_cliente = 1;
DELETE FROM Cliente WHERE id_cliente = 1;

-- QUARTO
INSERT INTO Quarto (qtd_vagas, temBanheiro) VALUES (4, TRUE);
UPDATE Quarto SET qtd_vagas = 6 WHERE id_quarto = 1;
DELETE FROM Quarto WHERE id_quarto = 1;

-- RESERVA
INSERT INTO Reserva (id_cliente, tipo_reserva, data_entrada, data_saida) VALUES (1, 'quarto', '2025-07-01', '2025-07-05');
UPDATE Reserva SET data_saida = '2025-07-06' WHERE id_reserva = 1;
DELETE FROM Reserva WHERE id_reserva = 1;

-- RESERVA_QUARTO
INSERT INTO Reserva_Quarto (id_reserva_quarto, id_quarto, data_entrada, data_saida) VALUES (1, 1, '2025-07-01', '2025-07-05');
UPDATE Reserva_Quarto SET data_saida = '2025-07-06' WHERE id_reserva_quarto = 1;
DELETE FROM Reserva_Quarto WHERE id_reserva_quarto = 1;

-- VAGA
INSERT INTO Vaga (numero_cama, peculiaridade, id_quarto) VALUES (1, 'Perto da janela', 1);
UPDATE Vaga SET peculiaridade = 'Perto do banheiro' WHERE id_vaga = 1;
DELETE FROM Vaga WHERE id_vaga = 1;

-- RESERVA_VAGA
INSERT INTO Reserva_Vaga (id_reserva_vaga, id_vaga, data_entrada, data_saida) VALUES (2, 1, '2025-07-01', '2025-07-03');
UPDATE Reserva_Vaga SET data_saida = '2025-07-04' WHERE id_reserva_vaga = 2;
DELETE FROM Reserva_Vaga WHERE id_reserva_vaga = 2;

-- PAGAMENTO
INSERT INTO Pagamento (id_reserva, valor, status_pagamento) VALUES (1, 300.00, 'confirmado');
UPDATE Pagamento SET status_pagamento = 'cancelado', data_cancelamento = NOW() WHERE id_pagamento = 1;
DELETE FROM Pagamento WHERE id_pagamento = 1;

-- PECULIARIDADES
INSERT INTO Peculiaridades (descricao) VALUES ('Ar-condicionado');
UPDATE Peculiaridades SET descricao = 'Ventilador' WHERE id_peculiaridade = 1;
DELETE FROM Peculiaridades WHERE id_peculiaridade = 1;

-- VAGAS_PECULIARIDADES
INSERT INTO Vagas_Peculiaridades (id_vaga, id_peculiaridade) VALUES (1, 1);
DELETE FROM Vagas_Peculiaridades WHERE id_vaga = 1 AND id_peculiaridade = 1;
