-- Lista02, Atividade 03 - Farmácia | Ana Oliveira

create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment primary key,
categoria varchar(100), -- categoria de sintoma a ser tratado.
receita varchar(100) -- se pode vender com receita, sem receita, tarja preta.  
);

create table tb_produto(
id bigint auto_increment primary key,
nome varchar(100) not null,
preco decimal (6,2) not null,
validade date,
id_cat bigint,
FOREIGN KEY (id_cat) REFERENCES tb_categoria (id)
);

insert into tb_categoria (categoria, receita) values ("Anti-gripal", "Sem receita");
insert into tb_categoria (categoria, receita) values ("Analgésico", "Sem receita");
insert into tb_categoria (categoria, receita) values ("Cólicas menstruais", "Sem receita");
insert into tb_categoria (categoria, receita) values ("Asma", "Com receita");
insert into tb_categoria (categoria, receita) values ("Antibiótico", "Com receita");
insert into tb_categoria (categoria, receita) values ("Mental", "Tarja preta");

insert into tb_produto (nome, preco, validade, id_cat) values ("Buscofem", 10.00, '2024-06-21', 3);
insert into tb_produto (nome, preco, validade, id_cat) values ("Dorflex", 17.70, '2028-05-06', 2);
insert into tb_produto (nome, preco, validade, id_cat) values ("Doril", 15.00, '2025-08-30', 2);
insert into tb_produto (nome, preco, validade, id_cat) values ("Penincilina", 50.00, '2022-06-21', 5);
insert into tb_produto (nome, preco, validade, id_cat) values ("Coristina D", 36.00, '2025-02-21', 1);
insert into tb_produto (nome, preco, validade, id_cat) values ("Symbicort", 149.00, '2024-09-12', 4);
insert into tb_produto (nome, preco, validade, id_cat) values ("Aerolyn", 30.00, '2023-06-04', 4);
insert into tb_produto (nome, preco, validade, id_cat) values ("Rivotril", 44.90, '2024-08-12', 6);

select * from tb_produto where preco > 50 order by preco;
select * from tb_produto where preco between 3 and 60 order by preco;

select * from tb_produto where nome like "b%";

select tb_produto.nome, tb_produto.preco, tb_produto.validade, tb_categoria.categoria, tb_categoria.receita 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_cat order by id_cat, preco;

select tb_produto.nome, tb_produto.preco, tb_produto.validade, tb_categoria.categoria, tb_categoria.receita 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_cat where id_cat = 2 order by preco;
