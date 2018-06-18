drop table if exists Resumo_Fiscal; 
create table Resumo_Fiscal(
id double AUTO_INCREMENT,
nome_arquivo varchar(100),
ano_mes	varchar(100),
operadora	varchar(100),	
uf	varchar(100),	
serie	varchar(100),	
minimo	integer,	
maximo	integer,
valor_total	decimal(10,2),
base	decimal(10,2),
ICMS	decimal(10,2),
isentas	decimal(10,2),
outras	decimal(10,2),
desconto	decimal(10,2),
cancelada	varchar(100),
qtd_nf	integer,
constraint pk_id primary key(id)
);
