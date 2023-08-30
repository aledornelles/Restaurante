create table cardapio (
    uuid uuid primarykey,
    ativo boolean not null,
    descricao varchar not null,
    nome varchar not null,
    turno integer not null
);

create table turno (
    id integer primary key,
    desricao varchar not null
)

create table cardapio add constraint fk_cardapio_turno foreing key (turn) references turno(id)

insert into turno values (3, 'NOITE'),
(2, 'TARDE'),
(1, 'MANHA');

create table bebida (
    id uuid primary key,
    nome varchar(200) not null,
    ingredientes varchar(300) not null,
    preco decimal(6,2) not null,
    pessoas_servidas integer not null,
    tem_lactose boolean not null,
    tem_gluten boolean not null,
    qtd_ml_drink integer not null,
    tem_alcool boolean not null
)


create table  comida (
	id UUID primary key,
	nome varchar(100) not null,
	ingredientes varchar(300) not null,
	preco decimal (6,2) not null,
	pessoas_servidas integer not null,
	tem_lactose boolean not null,
	tem_gluten boolean not null,
	peso_grama_porcao integer not null,
	eh_vegetariano boolean not null
)

create table rl_cardapio_comida (
    id_cardapio uuid not null references cardapio(id),
    id_comida uuid not null references comida(id)
)

create table rl_cardapio_bebida (
    id_cardapio uuid not null references cardapio(id),
    id_bebida uuid not null references comida(id)
)