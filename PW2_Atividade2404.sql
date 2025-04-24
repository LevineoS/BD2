CREATE DATABASE PW2_Atividade2404;

USE PW2_Atividade2404;

CREATE TABLE Usuario(
	idUsuario INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
    dataNascimento DATE NOT NULL,
    CPF VARCHAR(100),
    CNPJ VARCHAR(100),
    RazaoSocial VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE Login(
	idLogin INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
	hash_senha VARCHAR(20) UNIQUE NOT NULL,
    idUsuario INT,
	CONSTRAINT fk_Login_Usuario FOREIGN KEY(idUsuario) REFERENCES Usuario(idUsuario)
);

INSERT INTO
	Usuario (nome, dataNascimento, email, CPF, CNPJ, RazaoSocial, senha)
VALUES
	('Daniel', '2001-05-10', 'daniel@gmail.com', '111.111.111-11', '12.345.678/0001-99', 'BD S.A', 'bd12345'),
    ('Vitor', '1999-08-22', 'vitor@gmail.com', '222.222.222-22', '87.654.321/0002-88', 'PW S.A', 'pw12345'),
    ('Renata', '2000-12-03', 'renata@gmail.com', '333.333.333-33', '76.854.321/0003-77', 'PAM S.A', 'pam12345');

INSERT INTO 
	Login (email)
VALUES
	('daniel@gmail.com'),
    ('vitor@gmail.com'),
    ('renata@gmail.com');
