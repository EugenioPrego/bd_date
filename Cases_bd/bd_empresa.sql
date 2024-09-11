
create database tecInfo;
use tecInfo;

select*from nacionalidade;

create table Empresa(
cod_empresa int primary key auto_increment,
nome_empresa varchar(45),
endereco_empresa varchar(35)
);
alter table Empresa add constraint foreign key(cod_empresa)references fundador(id_fundador);

create table Endereco(
idEndereco  int primary key auto_increment,
nome_Endereco varchar(20),
rua varchar(45)
);
alter table Endereco add constraint foreign key(idEndereco)references Empresa(cod_empresa);

create table fundador(
id_fundador int primary key auto_increment,
nome_fundador varchar(40)
);
alter table nacionalidade add constraint foreign key(id_nacionalidade)references fundador(id_fundador);

create table nacionalidade(
id_nacionalidade int primary key auto_increment,
nome_nacionalidade varchar(40)
);

create table filial(
filial_nro int primary key auto_increment,
filial_local varchar(30),
filial_data_abertura date
);
alter table filial add constraint foreign key(filial_nro)references Empresa(cod_empresa);

