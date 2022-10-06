use BD_UMA;
drop table Premiacao;
select * from Premiacao;

create table Premiacao(
	/*Dados produto*/
    idPremio int auto_increment not null,
	Tipo varchar(20) not null,
    NomeProduto varchar(50) not null,
    ValorPremio int,
    
    /*Dados Fornecedor*/
    NoFornecedor varchar(30) not null,
	CNPJ varchar(14) not null,
    
	/*Chaves estrangeiras*/
    idAluno int,
    idParceiro int,
    CONSTRAINT fk_IdAluno FOREIGN KEY (idAluno) REFERENCES Alunos (idAluno),
    CONSTRAINT fk_IdParceiro FOREIGN KEY (idParceiro) REFERENCES Parceiros (idParceiro)
    
 ) default charset = utf8;
 
