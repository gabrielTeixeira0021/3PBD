
-- ============================
-- ITEM 4: Scripts de SELECT (todos os registros e um registro específico)
-- ============================

-- CLIENTE
SELECT * FROM Cliente;
SELECT * FROM Cliente WHERE id_cliente = 1;

-- QUARTO
SELECT * FROM Quarto;
SELECT * FROM Quarto WHERE id_quarto = 1;

-- RESERVA
SELECT * FROM Reserva;
SELECT * FROM Reserva WHERE id_reserva = 1;

-- RESERVA_QUARTO
SELECT * FROM Reserva_Quarto;
SELECT * FROM Reserva_Quarto WHERE id_reserva_quarto = 1;

-- VAGA
SELECT * FROM Vaga;
SELECT * FROM Vaga WHERE id_vaga = 1;

-- RESERVA_VAGA
SELECT * FROM Reserva_Vaga;
SELECT * FROM Reserva_Vaga WHERE id_reserva_vaga = 2;

-- PAGAMENTO
SELECT * FROM Pagamento;
SELECT * FROM Pagamento WHERE id_pagamento = 1;

-- PECULIARIDADES
SELECT * FROM Peculiaridades;
SELECT * FROM Peculiaridades WHERE id_peculiaridade = 1;

-- VAGAS_PECULIARIDADES
SELECT * FROM Vagas_Peculiaridades;
SELECT * FROM Vagas_Peculiaridades WHERE id_vaga = 1 AND id_peculiaridade = 1;
