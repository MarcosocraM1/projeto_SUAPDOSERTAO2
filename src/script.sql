drop table Cliente;
drop table Produto;
drop table Endereco;
drop table Fornecedor;

create table Cliente(
    nome varchar2(100),
    cpf varchar2(100),
    email varchar2(100),
    id_endereco int,
    constraint cpf_pk primary key (cpf)
);


create table Produto(
    nome varchar2(100),
    id_produto int,
    qtd_produto int,
    marca varchar2(100),
    categoria varchar2(100),
    preco int,
    cnpj_forncedor varchar2(100),
    constraint id_produto_pk primary key (id_produto)
);


create table Fornecedor(
    cnpj varchar2(100),
    nome varchar2(100),
    id_endereco int,
    constraint cnpj_pk primary key (cnpj)
);


create table Endereco(
    id_endereco int,
    numero int,
    rua varchar2(100),
    bairro varchar2(100),
    cidade varchar2(100),
    pais varchar2(100),
    constraint id_endereco_pk primary key (id_endereco)
);


alter table Cliente
add constraint cliente_fk foreign key (id_endereco)
    references Endereco (id_endereco);

alter table Produto
add constraint produto_fk foreign key (cnpj_forncedor)
    references Fornecedor (cnpj);

alter table Fornecedor
add constraint fornecedor_fk foreign key (id_endereco)
    references Endereco (id_endereco);



create sequence seq_produto
start with 1
increment by 1
nocache
nocycle;

create sequence seq_endereco
start with 1
increment by 1
nocache
nocycle;
