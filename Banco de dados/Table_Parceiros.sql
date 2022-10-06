use BD_UMA;
drop table Parceiros;
select * from Parceiros;

create table Parceiros(
	/*Dados produto*/
    idParceiro int auto_increment not null primary key,
	Categoria enum ('Privada', 'Publica') not null,
    CNPJ varchar(14) not null,
    Email varchar(30) not null,
    Telefone varchar(12),
    NomeEmpresa varchar(40),
    
    /*Dados dos produtos*/
    Tipo varchar(20) not null,
    NomeProduto varchar(50) not null

    
 ) default charset = utf8;
 