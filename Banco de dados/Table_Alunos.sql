create database BD_UMA;
use BD_UMA;
Drop table Alunos;
select * from Alunos;

create table Alunos(
	/*Dados pessoais*/
    idAluno int auto_increment primary key not null,
	NomeCompleto varchar(30) not null,
    DataNascimento date not null,
    CPF int not null,
    Etnia varchar(10),
    Email varchar(30) not null,
    Telefone varchar(12) not null,
    NomeDaMae varchar(30) not null,
    
    /*Endereço*/
    Rua varchar(30) not null,
	NCasa varchar(5) default 'S/N',
	Bairro varchar(30) not null,
	Cidade varchar(30) not null,
	Estado varchar(30) not null ,
	CEP varchar(30) not null ,
    
	/*Dados da escola*/
	Matricula varchar(20),
    Serie varchar(20),
    
    /*Dados sensíveis*/
    Senha varchar(8) not null

 ) default charset = utf8;