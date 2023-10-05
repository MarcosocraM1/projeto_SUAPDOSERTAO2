
create table Cliente(
    nome varchar2(100),
    cpf varchar2(100),
    email varchar2(100),
    estado varchar2(100),
    rua varchar2(100),
    numero number,
    bairro varchar2(100),
    cidade varchar2(100),
    cep varchar2(100),
    pais varchar2(100),
    constraint cpf_pk primary key (cpf)
);

create table Fornecedor(
    cnpj varchar2(100),
    nome varchar2(100),
    estado varchar2(100),
    rua varchar2(100),
    numero number,
    bairro varchar2(100),
    cidade varchar2(100),
    cep varchar2(100),
    pais varchar2(100),
    constraint cnpj_pk primary key (cnpj)
);


create table Produto(
    nome varchar2(100),
    id_produto int,
    qtd_produto int,
    marca varchar2(100),
    categoria varchar2(100),
    preco int,
    cnpj_forncedor varchar2(100),
    constraint id_produto_pk primary key (id_produto),
    constraint produto_fk foreign key (cnpj_forncedor)references Fornecedor (cnpj)
);


create sequence seq_produto
start with 1
increment by 1
nocache
nocycle;



create sequence seq_cliente
start with 1
increment by 1
nocache
nocycle;

create sequence seq_fornecedor
start with 1
increment by 1
nocache
nocycle;
