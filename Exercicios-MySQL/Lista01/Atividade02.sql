-- Exercício: criar database para e-commerce com os produtos dele e fazer as ações indicadas no enunciado.

create database db_ecommerce_y;

use db_ecommerce_y;

create table tb_produtos (
id bigInt auto_increment primary key,
nome varchar(255),
marca varchar(255),
preco decimal(5,2),
qtd_estoque bigInt
);

insert into tb_produtos (nome, marca, preco, qtd_estoque) values ("Tênis azul", "Nike", 320.00, 10);
insert into tb_produtos (nome, marca, preco, qtd_estoque) values ("Fone JBL com microfone", "JBL", 999.99, 10);
insert into tb_produtos (nome, marca, preco, qtd_estoque) values ("Robô aspirador", "Philco", 507.80, 8);
insert into tb_produtos (nome, marca, preco, qtd_estoque) values ("Descascador de abacaxi", "Inventey", 20.50, 20);
insert into tb_produtos (nome, marca, preco, qtd_estoque) values ("Carregador original", "Motorola", 100.00, 10);
insert into tb_produtos (nome, marca, preco, qtd_estoque) values ("Tênis preto", "Adidas", 299.00, 10);
insert into tb_produtos (nome, marca, preco, qtd_estoque) values ("iPhone 12 max", "Apple", 10000.00, 5);

alter table tb_produtos modify preco decimal(10,2);


select * from tb_produtos where preco > 500;
select * from tb_produtos where preco <= 500;

update tb_produtos set qtd_estoque = 9 where id = 1;







