-- Exercício: criar database para empresa com uma tabela de dados de funcionários e executar as ações do enunciado.

create database db_rh_empresax;

use db_rh_empresax;

create table tb_funcionarios (
id bigint auto_increment primary key,
nome varchar(255),
cpf bigint not null,
departamento varchar(100),
cargo varchar(100),
salario decimal(10,2)
);

insert into tb_funcionarios (nome, cpf, departamento, cargo, salario) values ("Monica Silva", 12345678900, "Atendimento", "Supervisora", 6024.97);
insert into tb_funcionarios (nome, cpf, departamento, cargo, salario) values ("Janaína Modesta", 98765432100, "Vendas", "Vendedora plena", 4057.23);
insert into tb_funcionarios (nome, cpf, departamento, cargo, salario) values ("João Marcelo", 123412341234, "Vendas", "Vendedor Júnior", 3125.80);
insert into tb_funcionarios (nome, cpf, departamento, cargo, salario) values ("Kaique Legal", 00000000100, "RH", "Analista de recrutamento Jr.", 3009.87);
insert into tb_funcionarios (nome, cpf, departamento, cargo, salario) values ("Leila Pessoa", 432143214100, "Administração", "CEO", 15000.00);

select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario <= 2000.00;

update tb_funcionarios set cargo = "Vendedora sênior" where id = 2;
update tb_funcionarios set salario = 4500.98 where id = 2;
