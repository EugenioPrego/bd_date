
create database IMTT;
use IMTT;

create table Finalistas(
num_process int primary key auto_increment,
nome varchar(35),
datNasc date,
notaDeEstagio int
);

create table Curso(
idCurso int primary key auto_increment,
nome_Curso varchar(35),
valorPago int
);
ALTER TABLE Finalistas ADD CONSTRAINT FOREIGN KEY(num_process) REFERENCES Curso(idCurso);

create table disciplinas(
iddisciplinas int primary key auto_increment,
nome_disciplinas varchar(35)
);
ALTER TABLE disciplinas ADD CONSTRAINT FOREIGN KEY(iddisciplinas) REFERENCES Aluno(idAluno);

create table Orientador(
codOrientador int primary key auto_increment,
nomeOrientador varchar(35),
contatoOrientador int,
AvaliacaoFinal float
);

create table Endereco(
codEndereco int primary key auto_increment,
nome_Endereco varchar(35),
bairro varchar(45)
);

create table Aluno(
idAluno int primary key auto_increment,
nome_Aluno varchar(35)
);
ALTER TABLE Aluno ADD CONSTRAINT FOREIGN KEY(idAluno) REFERENCES Orientador(codOrientador);
ALTER TABLE Aluno ADD CONSTRAINT FOREIGN KEY(idAluno) REFERENCES Curso(idCurso);
select*from Finalistas where 'notaDeEstagio' between 0 and 20;
