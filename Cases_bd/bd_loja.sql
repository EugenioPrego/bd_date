
create database db_loja;
use db_loja;

create table Produto(
idProduto int primary key auto_increment,
NProdutos varchar(50)
);
ALTER TABLE Produto ADD CONSTRAINT FOREIGN KEY (idProduto) REFERENCES cliente(nClient);

create table codigoVendedor(
Gvendedor enum("M","F"),
dtNasc date,
Nvendedor varchar(45),
codigoVendedor int primary key auto_increment
);
ALTER TABLE codigoVendedor  ADD CONSTRAINT FOREIGN KEY (codigoVendedor) REFERENCES Produto(idProduto);

create table cliente(
nClient int primary key auto_increment,
nomeClient varchar(37),
QtdComprado int
);

create table Endereco(
codigoEndereco int primary key auto_increment,
rua varchar(30)
);
ALTER TABLE Endereco  ADD CONSTRAINT FOREIGN KEY (codigoEndereco) REFERENCES cliente(nClient);


