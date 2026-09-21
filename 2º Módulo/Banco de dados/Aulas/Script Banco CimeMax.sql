
/* TABELA DE CATEGORIAS */
CREATE TABLE TBCATEGORIAS (
    COD_CATEGORIA integer primary key AUTOINCREMENT,
    NOME_CATEGORIA VARCHAR(200) NOT NULL    
);

/* TABELA DE CLIENTES */
CREATE TABLE TBCLIENTES (
    COD_CLIENTE integer primary key AUTOINCREMENT,
    RG VARCHAR(14) NOT NULL,
    NOME VARCHAR(200) NOT NULL,
    ENDERECO VARCHAR(200) NOT NULL,
    BAIRRO VARCHAR(200) NOT NULL,
    CIDADE VARCHAR(100) NOT NULL,
    ESTADO VARCHAR(150) NOT NULL,
    TELEFONE VARCHAR(15) NOT NULL,
    EMAIL VARCHAR(200) NOT NULL,
    DATANASCIMENTO DATETIME NOT NULL,
    ESTADO_CIVIL VARCHAR(100)
);

/* TABELA DE FILMES */
CREATE TABLE TBFILMES (
    COD_FILME INTEGER PRIMARY KEY AUTOINCREMENT,
    FILME  VARCHAR(200) NOT NULL,
    COD_CATEGORIA INTEGER NOT NULL,
    DIRETOR VARCHAR (150) NOT NULL,
    VALOR_LOCACAO DECIMAL(3,2) NOT NULL,
    RESERVADA BOOLEAN,
    
    FOREIGN KEY (COD_CATEGORIA) REFERENCES TBCATEGORIAS (COD_CATEGORIA)
);

/* TABELA DE LOCAÇÕES */
CREATE TABLE TBLOCACOES (
    COD_LOCACAO INTEGER primary key AUTOINCREMENT,
    COD_CLIENTE INTEGER NOT NULL,
    COD_FILME   INTEGER NOT NULL,
    DATA_RETIRADA DATETIME NOT NULL,
    DATA_DEVOLUCAO DATETIME NOT NULL,
    
    FOREIGN KEY (COD_CLIENTE) REFERENCES TBCLIENTES (COD_CLIENTE),
    FOREIGN KEY (COD_FILME)   REFERENCES TBFILMES (COD_FILME)
);

/* INSERINDO AS CATEGORIAS */
INSERT INTO TBCATEGORIAS (COD_CATEGORIA, NOME_CATEGORIA) VALUES
(1, 'Ação'),
(2, 'Romance'),
(3, 'Aventura'),
(4, 'Ficção'),
(5, 'Drama'),
(6, 'Terror'),
(7, 'Desenho'),
(8, 'Policial'),
(9, 'Comédia');

/* INSERINDO OS FILMES */
INSERT INTO TBFILMES (COD_FILME, FILME, COD_CATEGORIA, DIRETOR, VALOR_LOCACAO, RESERVADA) VALUES
(1, '300', 1, 'Richard Donner', 3.5, 'n'),
(2, 'Máquina Mortífera', 1, 'Richard Donner', 3.6, 'n'),
(3, 'A Mexicana', 2, 'Burr Steers', 2.0, 's'),
(4, 'A Verdade Nua e Crua', 2, 'Robert Luketic', 4.0, 'n'),
(5, 'A vida é bela', 2, 'Roberto Benigni', 3.5, 's'),
(6, 'Austrália', 3, 'Baz Luhrmann', 4.0, 's'),
(7, 'Ultimato Bourne', 3, 'Paul Greengrass', 3.5, 'n'),
(8, 'Constantine', 4, 'Francis Lawrence', 2.5, 's'),
(9, 'Os Irmãos Grimm', 4, 'Terry Gilliam', 3.5, 'n'),
(10, 'Os Doze Macacos', 4, 'Terry Gilliam', 2.5, 'n'),
(11, 'Amadeus', 5, 'Milos Forman', 10.0, 'n'),
(12, 'As Torres Gêmeas', 5, 'Oliver Stone', 2.5, 's'),
(13, 'Platoon', 1, 'Oliver Stone', 5.5, 's'),
(14, 'O Advogado do Diabo', 6, 'Taylor Hackford', 1.5, 's'),
(15, 'Beowulf', 7, 'Robert Zemeckis', 1.0, 'n'),
(16, 'Bolt o super cão', 7, 'Byron Howard', 1.5, 's'),
(17, 'Apertem o cinto o piloto sumiu', 9, 'Jim Abrahams', 3.6, 's'),
(18, 'Doze é demais', 9, 'Shawn Levy', 9.2, 's'),
(19, 'Uma noite no museu', 9, 'Shawn Levy', 2.5, 'n');


/* INSERINDO OS CLIENTES */

INSERT INTO TBCLIENTES (COD_CLIENTE, RG, NOME, ENDERECO, BAIRRO, CIDADE, ESTADO, TELEFONE, EMAIL, DATANASCIMENTO, ESTADO_CIVIL) VALUES
(1, '321346530', 'Edson Martin Feitosa', 'Rua Orlando Alvarenga, 1', 'Jd. Vera Cruz', 'Sorocaba', 'SP', '32125809', 'edson.feitosa@ig.com.br', '1982-11-30', 'M'),
(2, '421346111', 'Rafael Fernando de Moraes Moreno', 'Rua Francisco de Souza, 123', 'Jd. Nova Esperança', 'São Roque', 'SP', '32274567', 'rafael@terra.com.br', '1985-04-01', 'M'),
(3, '324857670', 'João da Silva', 'Rua Mario Quintana, 13', 'Av. Bartolomeu', 'Sorocaba', 'SP', '32134098', 'joao@uol.com.br', '1992-12-05', 'M'),
(4, '112345553', 'Maria Chiquinha', 'Rua Padre Luiz, 55', 'Jd. Vera Cruz', 'Sorocaba', 'SP', '23336684', 'maria@ig.com.br', '1982-11-30', 'F'),
(5, '945848768', 'Rafael Nunes Sales', 'Rua Orlando Alvarenga, 4', 'Jd. Vera Cruz', 'Sorocaba', 'SP', '32124609', 'rafael.sales@terra.com.br', '1985-04-01', 'M'),
(6, '676548499', 'Daniela Martin Feitosa', 'Rua Guilherme Oliveria, 1', 'Jd. Vera das Acássicas', 'Votorantim', 'SP', '32132109', 'daniela.martin@gmail.com', '1986-12-26', 'F'),
(7, '321349999', 'Renata Cristina', 'Rua Orlando Alvarenga, 1', 'Jd. Vera Cruz', 'Sorocaba', 'SP', '32125809', 'renata@gmail.com', '1970-09-01', 'F'),
(8, '335466531', 'Joaquim Ferreira de Souza Junior', 'Rua Outubro Vermelho, 65', 'Jd. Santa Rosália', 'Votorantim', 'SP', '11125809', 'joaquim.junior@ig.com.br', '1980-04-08', 'M'),
(9, '112233445', 'Ladislau Ferreira', 'Rua Orlando Alvarenga, 12345', 'Jd. Vera Cruz', 'Sorocaba', 'SP', '32144409', 'ladislau@terra.com.br', '1988-01-03', 'M'),
(10, '222222222', 'Vanessa Oliveira', 'Rua das Flores, 1', 'Jd. do Sol', 'Votorantim', 'SP', '32122222', 'vanessa@ig.com.br', '1998-08-08', 'F');

/* INSERINDO AS LOCAÇÕES */

INSERT INTO TBLOCACOES (COD_LOCACAO, COD_CLIENTE, COD_FILME, DATA_RETIRADA, DATA_DEVOLUCAO) VALUES
(1, 1, 1, '2010-03-20 19:05:43', '2010-03-23 00:00:00'),
(2, 1, 6, '2010-03-20 19:05:43', '2010-03-23 00:00:00'),
(3, 1, 8, '2010-03-20 19:05:43', '2010-03-23 00:00:00'),
(4, 1, 2, '2010-03-15 00:00:00', '2010-03-17 00:00:00'),
(5, 1, 13, '2010-03-15 00:00:00', '2010-03-17 00:00:00'),
(6, 2, 5, '2010-03-20 19:05:43', '2010-03-21 00:00:00'),
(7, 3, 3, '2010-03-18 19:05:43', '2010-03-20 00:00:00'),
(8, 3, 19, '2010-03-18 19:05:43', '2010-03-20 00:00:00'),
(9, 4, 17, '2010-03-01 19:05:43', '2010-03-03 00:00:00'),
(10, 5, 5, '2010-03-03 19:05:43', '2010-03-05 00:00:00'),
(11, 6, 7, '2010-03-03 19:05:43', '2010-03-04 00:00:00'),
(12, 6, 9, '2010-03-03 19:05:43', '2010-03-04 00:00:00'),
(13, 7, 16, '2010-03-13 19:05:43', '2010-03-15 00:00:00'),
(14, 7, 1, '2010-03-13 19:05:43', '2010-03-15 00:00:00'),
(15, 7, 5, '2010-03-14 19:05:43', '2010-03-16 00:00:00'),
(16, 7, 8, '2010-03-14 19:05:43', '2010-03-16 00:00:00'),
(17, 7, 11, '2010-03-14 19:05:43', '2010-03-16 00:00:00'),
(18, 7, 12, '2010-03-15 19:05:43', '2010-03-17 00:00:00'),
(19, 8, 9, '2010-03-20 19:05:43', '2010-03-21 00:00:00'),
(20, 9, 3, '2010-03-21 19:05:43', '2010-03-22 00:00:00'),
(21, 9, 6, '2010-03-21 19:05:43', '2010-03-22 00:00:00'),
(22, 10, 10, '2010-02-20 19:05:43', '2010-02-21 00:00:00');