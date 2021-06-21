-- Lista02, Atividade 02 - Pizzaria, Ana Oliveira

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment primary key,
tipo varchar(100), -- clássica, especial ou doce
tamanho char -- P, M, G
);

create table tb_pizza(
id bigint auto_increment primary key,
sabor varchar(255),
preco decimal (5,2),
categoria_id bigint,
disponivel boolean,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (tipo, tamanho) values ("Clássica", 'M');
insert into tb_categoria (tipo, tamanho) values ("Clássica", 'G');
insert into tb_categoria (tipo, tamanho) values ("Especial", 'M');
insert into tb_categoria (tipo, tamanho) values ("Especial", 'G');
insert into tb_categoria (tipo, tamanho) values ("Doce", 'P');

insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("Mussarela", 30.00, 1, true);
insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("Margherita", 30.00, 3, true);
insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("Calabresa com catupiry", 50.00, 4, true);
insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("Portuguesa", 48.00, 2, true);
insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("Chocolate com morango", 43.00, 5, true);
insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("Frango com catupiry", 45.00, 4, false);
insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("Baiana", 54.00, 2, true);
insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("Banana com doce de leite", 38.00, 5, true);

select sabor, preco, disponivel from tb_pizza where preco > 45 order by preco;
select sabor, preco, disponivel from tb_pizza where preco between 29 and 60 order by preco;
select sabor, preco, disponivel from tb_pizza where sabor like "%c%";

select tb_pizza.id, tb_pizza.sabor, tb_pizza.preco, tb_pizza.disponivel as disponível, tb_categoria.tipo, tb_categoria.tamanho from tb_pizza inner join tb_categoria 
on tb_categoria.id = tb_pizza.categoria_id order by disponivel DESC, tb_categoria.id, tb_pizza.preco;

select tb_pizza.id, tb_pizza.sabor, tb_pizza.preco, tb_pizza.disponivel as disponível, tb_categoria.tipo, tb_categoria.tamanho from tb_pizza inner join tb_categoria 
on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 5 order by preco;