-- Lista02, Atividade 05 - Loja de produtos de construção | Ana Oliveira

create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment primary key,
setor varchar(100),
varejo bool
);

create table tb_produto(
id bigint auto_increment primary key,
nome varchar(100),
preco decimal (7,2),
estoque bigint,
categoria_id bigint, 
foreign key (categoria_id) references tb_categoria (id) 
);

insert into tb_categoria (setor, varejo) values ("Construção - externo", false);
insert into tb_categoria (setor, varejo) values ("Construção - interno", true);
insert into tb_categoria (setor, varejo) values ("Encanamento", true);
insert into tb_categoria (setor, varejo) values ("Madeira, derivados", false);
insert into tb_categoria (setor, varejo) values ("Tinta", true);

insert into tb_produto (nome, preco, estoque, categoria_id) values ("Tijolo tipo 1", 0.50, 10000, 1);
insert into tb_produto (nome, preco, estoque, categoria_id) values ("Tijolo tipo 2", 0.70, 10000, 1);
insert into tb_produto (nome, preco, estoque, categoria_id) values ("Saco de areia", 10.00, 500, 1);
insert into tb_produto (nome, preco, estoque, categoria_id) values ("Porta de carvalho", 200, 100, 2);
insert into tb_produto (nome, preco, estoque, categoria_id) values ("Porta de bambu", 180, 1000, 2);
insert into tb_produto (nome, preco, estoque, categoria_id) values ("Torneira tipo 1", 19.50, 200, 3);
insert into tb_produto (nome, preco, estoque, categoria_id) values ("Torneira tipo 2, com ducha", 27.80, 210, 3);
insert into tb_produto (nome, preco, estoque, categoria_id) values ("Placa MDF (por metro quadrado)", 12.0, 1000, 4);
insert into tb_produto (nome, preco, estoque, categoria_id) values ("Tinta 5L", 30.90, 95, 5);
insert into tb_produto (nome, preco, estoque, categoria_id) values ("Carrinho de mão simples", 64.20, 30, 2);

select * from tb_produto where preco > 50;
select * from tb_produto where preco > 3 and preco < 60;
select * from tb_produto where nome like "C%";

select tb_produto.id, tb_produto.nome, tb_produto.preco, tb_produto.estoque, tb_categoria.setor, tb_categoria.varejo 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id order by tb_categoria.setor, tb_produto.preco;

select tb_produto.id, tb_produto.nome, tb_produto.preco, tb_produto.estoque, tb_categoria.setor, tb_categoria.varejo 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_produto.categoria_id = 3 order by preco;

