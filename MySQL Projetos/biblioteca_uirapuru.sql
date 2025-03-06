/*DDL - Comando de Definição de Estrutura*/
CREATE DATABASE biblioteca_uirapuru;

/*Diz ao SGBDR que vamos usar este banco de dados daqui pra frente*/
USE biblioteca_uirapuru;

CREATE TABLE livros (
	id INT PRIMARY KEY,
	titulo VARCHAR(255),
    autor VARCHAR(255),
    preco DECIMAL (10, 2),
	editora VARCHAR(255),
    genero VARCHAR(255),
    ano_publicacao INT
);

/* Alterar o Tipo de Dado de uma coluna, exemplo:
em 2025, o campo de CNPJ passará a ser alfanumerico, então ele nao pode ser Int, vamos alterar */

ALTER TABLE livros MODIFY CNPJ VARCHAR(25);

/*Alterar a coluna para impedir que ela seja nula, ou seja, ela vai precisar ter registros, senão tera erros*/
ALTER TABLE livros MODIFY titulo VARCHAR(255) NOT NULL;
ALTER TABLE livros MODIFY autor VARCHAR(255) NOT NULL;

/*Remover a coluna CNPJ*/
ALTER TABLE livros DROP CNPJ;

/*Inserir Múltiplos Registos */
INSERT INTO livros (id, titulo, autor) VALUES
(1, 'Quebrando a cabeça com Java', 'Josefino' ),
(2, 'Java 8', 'Peter Jandl' ),
(3, 'Google Android', 'Ricardo Lecheta' );

UPDATE livros 
SET preco = 99.99
WHERE id = 1;

SELECT * FROM livros;
DESC livros;

/* Remover todos os registros da tabela */
TRUNCATE TABLE livros;

/*Apaga a tabela no banco de dados*/
DROP table livros;