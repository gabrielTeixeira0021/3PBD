-- ============================
-- ITEM 5: Mostrar Vagas Disponíveis e Camas Reservadas em um Determinado Dia
-- ============================

-- VAGAS RESERVADAS EM UM DIA ESPECÍFICO
SELECT v.id_vaga, v.numero_cama, q.id_quarto
FROM Vaga v
JOIN Reserva_Vaga rv ON v.id_vaga = rv.id_vaga
JOIN Quarto q ON v.id_quarto = q.id_quarto
WHERE '2025-07-01' BETWEEN rv.data_entrada AND rv.data_saida;

-- VAGAS DISPONÍVEIS EM UM DIA ESPECÍFICO
SELECT v.id_vaga, v.numero_cama, q.id_quarto
FROM Vaga v
JOIN Quarto q ON v.id_quarto = q.id_quarto
WHERE v.id_vaga NOT IN (
    SELECT rv.id_vaga
    FROM Reserva_Vaga rv
    WHERE '2025-06-01' BETWEEN rv.data_entrada AND rv.data_saida
);
