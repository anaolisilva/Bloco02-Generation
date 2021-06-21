-- Lista02, Atividade 04 - Quitanda | Ana Oliveira

create database db_cidade_das_plantas;

use db_cidade_das_plantas;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_categoria (descricao, ativo) values ("Fruta",true);
insert into tb_categoria (descricao, ativo) values ("Verdura",true);
insert into tb_categoria (descricao, ativo) values ("Legume",true);
insert into tb_categoria (descricao, ativo) values ("Tempero",true);

insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Maçã", 5.00, 100, 1);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Pimenta rosa", 12.00, 30, 4);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cenoura", 4.00, 57, 3);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cebola", 6.00, 70, 3);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Alho", 9.90, 100, 4);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Alface", 3.00, 35, 2);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Repolho", 3.90, 30, 2);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Tomate", 7.80, 50, 1);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Batata", 4.00, 70, 3);

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60 order by preco;
select * from tb_produtos where nome like "c%" order by nome;

select tb_produtos.id, tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao, tb_categoria.ativo 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id order by tb_categoria.descricao;

select tb_produtos.id, tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao, tb_categoria.ativo 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_produtos.categoria_id = 3 order by preco;



