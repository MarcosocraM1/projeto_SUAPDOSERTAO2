drop table cliente;
drop table produto;
drop table endereco;
drop table fornecedor;

create table cliente(
    nome varchar2(50),
    cpf varchar2(50),
    email varchar2(100),
    constraint cpf_pk primary key (cpf)
);


create table produto(
    nome varchar2(100),
    id_produto int,
    qtd_produto int,
    marca varchar2(100),
    categoria varchar2(100),
    preco int,
    constraint id_produto_pk primary key (id_produto)
);


create table fornecedor(
    cnpj varchar2(100),
    nome varchar2(100),
    constraint cnpj_pk primary key (cnpj)
);


create table endereco(
    numero int,
    rua varchar2(100),
    bairro varchar2(100),
    cidade varchar2(100),
    pais varchar2(100),
    constraint numero_pk primary key (numero)
);


create sequence seq_produto
start with 1
increment by 1
nocache
nocycle;
