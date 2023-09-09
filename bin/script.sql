create table cliente(
    nome varchar2(50),
    cpf varchar2(50),
    email varchar2(100),
    cidade varchar2(50),
    bairro varchar2(50),
    rua varchar2(50),
    numero int,
    constraint cpf_pk primary key (cpf)
);


create table produto(
    nome varchar2(50),
    id_produto int,
    qtd_produto int,
    constraint id_produto_pk primary key (id_produto)
);


create sequence seq_produto
start with 1
increment by 1
nocache
nocycle;
