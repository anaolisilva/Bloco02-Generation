use db_lojagames;

select * from tb_categoria;
select * from tb_produto;

insert into tb_categoria (descricao) values ("Game PC");
insert into tb_categoria (descricao) values ("Game PS4");
insert into tb_categoria (descricao) values ("Game PS5");
insert into tb_categoria (descricao) values ("Game XBOX");
insert into tb_categoria (descricao) values ("Periférico PC");

insert into tb_produto (nome, preco, estoque, categoria_id) values ("The Last of Us 2 PS4", 200, 10, 2);
insert into tb_produto (nome, preco, estoque, categoria_id) values ("The Last of Us 2 PS5", 200, 10, 3);
insert into tb_produto (nome, preco, estoque, categoria_id) values ("Five Nights at Freddie's", 30.90, 10, 1);
insert into tb_produto (nome, preco, estoque, categoria_id) values ("The Sims 4 PC", 79.90, 20, 1);
insert into tb_produto (nome, preco, estoque, categoria_id) values ("The Sims 4 Console", 120, 10, 4);
insert into tb_produto (nome, preco, estoque, categoria_id) values ("Teclado que brilha", 300, 10, 5);

delete from tb_produto where id = 2;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id; 