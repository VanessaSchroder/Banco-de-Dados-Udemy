-- Filme
CREATE TABLE Filme (
    id_filme INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    duracao INT NOT NULL, -- minutos
    genero VARCHAR(50),
    classificacao VARCHAR(10)
);

-- Sala
CREATE TABLE Sala (
    id_sala INT PRIMARY KEY AUTO_INCREMENT,
    numero INT NOT NULL,
    capacidade INT NOT NULL
);

-- Sessão
CREATE TABLE Sessao (
    id_sessao INT PRIMARY KEY AUTO_INCREMENT,
    id_filme INT,
    id_sala INT,
    data_hora DATETIME,
    tipo VARCHAR(10), -- 2D ou 3D
    idioma VARCHAR(20),
    FOREIGN KEY (id_filme) REFERENCES Filme(id_filme),
    FOREIGN KEY (id_sala) REFERENCES Sala(id_sala)
);

-- Cliente
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    email VARCHAR(100)
);

-- Ingresso
CREATE TABLE Ingresso (
    id_ingresso INT PRIMARY KEY AUTO_INCREMENT,
    id_sessao INT,
    id_cliente INT,
    assento VARCHAR(5),
    valor DECIMAL(6,2),
    data_compra DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_sessao) REFERENCES Sessao(id_sessao),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);