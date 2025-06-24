-- Projeto Físico 
CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    identificacao VARCHAR(50) NOT NULL,
    contato VARCHAR(100) NOT NULL
);

CREATE TABLE Quarto (
    id_quarto INT AUTO_INCREMENT PRIMARY KEY,
    qtd_vagas INT NOT NULL,
    temBanheiro BOOLEAN NOT NULL
);

CREATE TABLE Reserva (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    tipo_reserva VARCHAR(10) NOT NULL,
    data_entrada DATE NOT NULL,
    data_saida DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Reserva_Quarto (
    id_reserva_quarto INT PRIMARY KEY,
    id_quarto INT NOT NULL,
    data_entrada DATE NOT NULL,
    data_saida DATE NOT NULL,
    FOREIGN KEY (id_reserva_quarto) REFERENCES Reserva(id_reserva),
    FOREIGN KEY (id_quarto) REFERENCES Quarto(id_quarto)
);

CREATE TABLE Vaga (
    id_vaga INT AUTO_INCREMENT PRIMARY KEY,
    numero_cama INT NOT NULL,
    peculiaridade VARCHAR(100),
    id_quarto INT NOT NULL,
    FOREIGN KEY (id_quarto) REFERENCES Quarto(id_quarto)
);

CREATE TABLE Reserva_Vaga (
    id_reserva_vaga INT PRIMARY KEY,
    id_vaga INT NOT NULL,
    data_entrada DATE NOT NULL,
    data_saida DATE NOT NULL,
    FOREIGN KEY (id_reserva_vaga) REFERENCES Reserva(id_reserva),
    FOREIGN KEY (id_vaga) REFERENCES Vaga(id_vaga)
);

CREATE TABLE Pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status_pagamento VARCHAR(20) NOT NULL,
    data_cancelamento DATETIME,
    FOREIGN KEY (id_reserva) REFERENCES Reserva(id_reserva)
);

CREATE TABLE Peculiaridades (
    id_peculiaridade INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE Vagas_Peculiaridades (
    id_vaga INT NOT NULL,
    id_peculiaridade INT NOT NULL,
    PRIMARY KEY (id_vaga, id_peculiaridade),
    FOREIGN KEY (id_vaga) REFERENCES Vaga(id_vaga),
    FOREIGN KEY (id_peculiaridade) REFERENCES Peculiaridades(id_peculiaridade)
);
