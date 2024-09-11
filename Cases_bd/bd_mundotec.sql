
create database mundodasTecnologias;
use mundodasTecnologias;

create table Funcionário(
idFuncionario int primary key auto_increment,
nome_Funcionario varchar(30),
datanascim date
);
ALTER TABLE Funcionário ADD CONSTRAINT FOREIGN KEY(idFuncionario) REFERENCES Chefe(idChefe);

create table Chefe(
idChefe int primary key auto_increment,
nome_Chefe varchar(50)
);

create table Formando(
idFormando int primary key auto_increment,
nome_Formando varchar(40),
valorPago int
);
ALTER TABLE SaladeFormacao ADD CONSTRAINT FOREIGN KEY(idSaladeFormacao) REFERENCES Formando(idFormando);

create table SaladeFormacao(
idSaladeFormacao int primary key auto_increment,
nome_SaladeFormacao varchar(35)
);

create table Curso(
idCurso int primary key auto_increment,
nome_Curso varchar(45),
preco_Curso int
);
ALTER TABLE Formando ADD CONSTRAINT FOREIGN KEY(idFormandoformando) REFERENCES Curso(idCurso);
