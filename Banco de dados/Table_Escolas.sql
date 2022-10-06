use BD_UMA;
drop table Escolas;
select * from Escolas;
create table Escolas(
	/*Dados Escola*/
    idEscola int auto_increment not null primary key,
	CNPJ varchar(14) not null,
    NomeEscola varchar(50) not null,
    
    /*Endereço*/
    Rua varchar(30) not null,
	Numero varchar(5) default 'S/N',
	Bairro varchar(30) not null,
	Cidade varchar(30) not null,
	Estado varchar(30) not null ,
	CEP varchar(30) not null ,
    idAluno int,
    
	/*Dados da escola*/
    CONSTRAINT fk_IdAluno FOREIGN KEY (idAluno) REFERENCES Alunos (idAluno)
    
 ) default charset = utf8;
 
