create database Guayacan;
create table Funcionarios(
nome varchar (30) not null,
cod_func int auto_increment,
funcao_func varchar (15),
FK_cod_proj int,
primary key (cod_func)
);
insert into funcionarios(cod_func, nome, funcao_func)
values 
(default,'Edilson Mariano Souza', 'Projetista'),
(default,'Diego Pereira', 'Instalador'),
(default,'Juliana Oliviera Mello', 'Vendas'),
(default,'Takeda Tsubasa', 'Desenvolvedor web'),
(default,'Hashida Toriama', 'Vendas'),
(default,'Nelson Luiz Nascimento', 'Projetista'),
(default,'Jordana Campos', 'Instalador');
alter table funcionarios add foreign key (FK_cod_proj) references projetos(cod_proj);


create table projetos(
cod_proj int auto_increment,
data_inicio date,
data_entrega date,
FK_cod_func int,
FK_cpf_cliente bigint,
Fk_cod_orcamento int,
primary key (cod_proj)
);
insert into projetos(cod_proj, data_inicio, data_entrega)
values 
(default,'2022-09-20','2022-10-22'),
(default,'2022-10-05','2022-11-06'),
(default,'2022-11-11','2022-12-23'),
(default,'2023-01-30','2023-03-14');
/*alter table projetos add foreign key (FK_cod_func) references funcionarios(cod_func);
alter table projetos add foreign key (FK_cpf_cliente) references cliente(cpf);
alter table projetos add foreign key (Fk_cod_orcamento) references orcamento(cod_orcamento);*/



create table cliente(
nome varchar (30),
endereco varchar (35),
cpf bigint,
primary Key (cpf)
);
insert into cliente(nome, endereco, cpf)
values 
('Nicolas Tesla', 'Rua Madalena n°267', '31694687350'),
('Violet Louise', 'Rua 15 de Novembro n°710', '47903182477'),
('Clarise Aurora', 'Rua Maristela Braga n°456', '49630430535'),
('Ruan Edison Bruno Ferreira', 'Avenida Getúlio n°999', '58596983643');

create table Orcamento(
cod_orcamento int auto_increment,
data_orcamento date,
valor_orcamento decimal (6,2),
primary key (cod_orcamento)
);
insert into orcamento (cod_orcamento, data_orcamento, valor_orcamento)
values
(default, '2022-08-15', '5000.00'),
(default, '2022-09-20', '4000.00'),
(default, '2022-10-28', '6000.00'),
(default, '2022-12-17', '9000.00');
/*Deixar apenas o cod_orçamento,data_orcamento,valor_orçamento
alter table orcamento modify valor_orcamento decimal(7,2);*/

create table Estoque (
cod_estoque int auto_increment,
disponibilidade boolean,
quantidade int,
FK_cod_produto int,
primary key (cod_estoque)
);
insert into estoque(cod_estoque, disponibilidade, quantidade)
values
(default, true, 40),
(default, true, 40),
(default, true, 50),
(default,false, 0),
(default, true, 40);
/*alter table estoque add foreign key (FK_cod_produto) references produto(cod_produto);*/


create table Produto(
cod_produto int auto_increment,
nome_produto varchar (25),
preco_produto decimal (4,2),
FK_cod_proj int,
primary key (cod_produto)
);
insert into produto(cod_produto, nome_produto, preco_produto)
values
(default, 'Lâmpada inteligente', 69.90),
(default, 'Interruptor inteligente', 102.49),
(default, 'Fita de led inteligente', 102.00),
(default, 'Central de controle infravermelho universal', 89.10),
(default, 'Sensor Wi-Fi de fumaça', 209.90),
(default, 'Câmera full HD 1080', 273.99);
/*alter table produto modify nome_produto varchar(60);
alter table produto modify preco_produto decimal(7,2);
alter table produto add foreign key (FK_cod_proj) references projetos(cod_proj);*/
/*projeto será extrangeira de produtos*/


select*from funcionarios;
select*from  projetos;
select*from cliente;
select*from orcamento;
select*from estoque;
select*from produto;



