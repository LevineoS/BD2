CREATE DATABASE db_prefeitura;

USE db_prefeitura;

CREATE TABLE empresa(
	id_empresa INT AUTO_INCREMENT PRIMARY KEY,
    cnpj VARCHAR (100) NOT NULL,
    CEP VARCHAR(100) NOT NULL,
	razaoSocial VARCHAR(100) NOT NULL
);

CREATE TABLE veiculo(
	id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(100) NOT NULL,
    cor VARCHAR(100) NOT NULL,
    placa VARCHAR(100) NOT NULL,
    id_empresa INT,
    id_motorista INT,
    CONSTRAINT id_motorista FOREIGN KEY(id_motorista) REFERENCES motorista(id_motorista),
    CONSTRAINT id_empresa FOREIGN KEY(id_empresa) REFERENCES empresa (id_empresa)
);

CREATE TABLE motorista(
	id_motorista INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    CNH VARCHAR(100) NOT NULL,
    dt_nascimento DATE NOT NULL
);

INSERT INTO empresa (cnpj, CEP, razaoSocial)VALUES(
'12345671234', '0123456', 'CleitonVeiculos');
INSERT INTO motorista (nome, cnh, dt_nascimento)VALUES(
'Clwiton', '012345346', '1976-02-02');
INSERT INTO veiculo (modelo, cor, placa)VALUES(
'Ford ka', 'azul', '134sad66');

select * from empresa;
select * from motorista;
select * from veiculo;

SELECT * 
FROM 
	motorista a
INNER JOIN
	veiculo b
ON
	a.id_motorista = b.id_veiculo;