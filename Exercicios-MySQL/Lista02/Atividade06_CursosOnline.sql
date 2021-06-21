-- Lista02, Atividade 06 - Site de cursos online | Ana Oliveira

create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment primary key,
area_conhecimento varchar(255),
aula_sincrono bool
);

create table tb_curso(
id bigint auto_increment primary key,
nome varchar(255),
nivel int,
preco decimal(6,2),
duracao_horas time,
categoria_id bigint,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (area_conhecimento, aula_sincrono) values ("Programação", false);
insert into tb_categoria (area_conhecimento, aula_sincrono) values ("Costura", true);
insert into tb_categoria (area_conhecimento, aula_sincrono) values ("Desenho", false);
insert into tb_categoria (area_conhecimento, aula_sincrono) values ("Design", true);
insert into tb_categoria (area_conhecimento, aula_sincrono) values ("Escrita", true);

insert into tb_curso (nome, nivel, preco, duracao_horas, categoria_id) values ("Introdução a Python", 1, 60.00, '24:00:00', 1);
insert into tb_curso (nome, nivel, preco, duracao_horas, categoria_id) values ("Introdução ao realismo", 3, 100.00, '30:00:00', 3);
insert into tb_curso (nome, nivel, preco, duracao_horas, categoria_id) values ("Barra e ajustes de tamanho em roupas", 2, 70.00, '10:00:00', 2);
insert into tb_curso (nome, nivel, preco, duracao_horas, categoria_id) values ("Noções de UX e UI", 2, 58.00, '15:00:00', 4);
insert into tb_curso (nome, nivel, preco, duracao_horas, categoria_id) values ("Introdução a Java e Eclipse IDE", 1, 25.00, '8:00:00', 1);
insert into tb_curso (nome, nivel, preco, duracao_horas, categoria_id) values ("Desenvolvimento de personagem", 1, 50.00, '12:00:00', 5);
insert into tb_curso (nome, nivel, preco, duracao_horas, categoria_id) values ("Descobrindo seu estilo", 3, 80.00, '26:00:00', 5);
insert into tb_curso (nome, nivel, preco, duracao_horas, categoria_id) values ("Introdução a Front-end", 2, 200.00, '90:00:00', 1);

select * from tb_curso where preco > 50 order by preco DESC;
select * from tb_curso where preco between 3 and 60 order by preco;
select * from tb_curso where nome like "%j%";

select tb_curso.nome, tb_curso.nivel, tb_curso.preco, tb_curso.duracao_horas as "duração em horas", tb_categoria.area_conhecimento, tb_categoria.aula_sincrono as "aulas síncronas"
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id order by tb_categoria.id, nivel, preco;

select tb_curso.nome, tb_curso.nivel, tb_curso.preco, tb_curso.duracao_horas as "duração em horas", tb_categoria.area_conhecimento, tb_categoria.aula_sincrono as "aulas síncronas"
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1 order by preco;
