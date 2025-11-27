create schema firma;
--create table nome_esquema.nome_table_entidade
--atributo tipo_atributo

create table firma.depto(
	coddtlo int primary key,
	nome varchar(80)
);

create table firma.empregado(
	code int primary key,
	nome varchar(100),
	dtlotacao date,
	codd int references firma.depto(coddtlo)
);

create schema firma2;

create table firma2.depto(
	codd int primary key,
	nome varchar(100)
);

--	insert into nome_esquema, nome_tabel_entidade( Atributo1, atributo2,)
insert into firma2.depto(codd, nome) values (1, 'BD'); -- inserir 1 valor
insert into firma2.depto(codd, nome) values (2, 'BD'), (3,'IA');

create table firma2.empregado(
	code int primary key,
	nome varchar(100)
);
create table firma2.lotacao(
	dtlotacao date
	codd int references firma2.depto(codd)
	code int references firma2.empregado(code)
);
insert into firma2.lotacao(dtlotacao, codd, code) values (10, 'Arthur'), (20,'Thiago');
