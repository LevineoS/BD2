create database etecuirapuru;

use etecuirapuru;

Create table Alunos (
id INT auto_increment PRIMARY KEY,

nome varchar (250),
Curso varchar (250),
Salario double,
idade int);

insert into Alunos (nome, curso, salario, idade) VALUES ('Levi', 'Desenvolvimento de Sistemas', '1900.99', '20');
insert into Alunos (nome, curso, salario, idade) VALUES ('Matheo', 'Nutrição', '1500.00', '18');
insert into Alunos (nome, curso, salario, idade) VALUES ('Lucas', 'Administração', '1700.09', '17');
insert into Alunos (nome, curso, salario, idade) VALUES ('Julia', 'Desenvolvimento de Sistemas', '1800.03', '30');
insert into Alunos (nome, curso, salario, idade) VALUES ('Thiago', 'Desenvolvimento de Sistemas', '1300.03', '32');

select * from Alunos where  idade >= 18;

select count(*) from Alunos where idade >= 30;

select avg(idade) from Alunos;

select avg(idade) as medidade from Alunos;

select * from Alunos where idade = (select max(idade) from Alunos);

select * from Alunos where idade = (select min(idade) from Alunos);

select * from Alunos where idade between 30 and 33;


select * from Alunos;
desc Alunos;
