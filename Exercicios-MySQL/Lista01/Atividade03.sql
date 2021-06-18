-- Exercício: criar banco de dados para escola e fazer ações a partir das instruções do exercício

create database db_escolaZ;

use db_escolaZ;

create table tb_estudantes(
id bigint auto_increment primary key,
nome varchar(255),
serie varchar(100),
ano_nascimento int,
nome_mae varchar(255),
nota decimal(4,2)
);

insert into tb_estudantes (nome, serie, ano_nascimento, nome_mae, nota) values ("Maria Oliveira", "3o ano EM", 2004, "Denise Oliveira", 7.9);
insert into tb_estudantes (nome, serie, ano_nascimento, nome_mae, nota) values ("Letícia Amaral", "5a série EF", 2010, "Geise Amaral", 8.6);
insert into tb_estudantes (nome, serie, ano_nascimento, nome_mae, nota) values ("Joaquim Felício", "4a série EF", 2011, "Helena Bonito", 5.2);
insert into tb_estudantes (nome, serie, ano_nascimento, nome_mae, nota) values ("Carla Andreoli", "Maternal", 2018, "Paula Andreoli", 10);
insert into tb_estudantes (nome, serie, ano_nascimento, nome_mae, nota) values ("Teresa Rodrigues", "3o ano EM", 2003, "Fabiana Rodrigues", 3.7);
insert into tb_estudantes (nome, serie, ano_nascimento, nome_mae, nota) values ("Paulo Menor", "2a série EF", 2013, "Joana Menor", 7.5);
insert into tb_estudantes (nome, serie, ano_nascimento, nome_mae, nota) values ("Eliana Bernardes", "5a série EF", 2010, "Ana Bernardes", 9.0);

select * from tb_estudantes where nota >= 7.0;
select * from tb_estudantes where nota < 7.0;

update tb_estudantes set nota = 5.0 where id = 5;










