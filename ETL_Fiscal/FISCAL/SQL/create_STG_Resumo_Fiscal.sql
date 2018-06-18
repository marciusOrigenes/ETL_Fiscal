drop table if exists STG_Resumo_Fiscal; 
create table STG_Resumo_Fiscal(
NOME_ARQUIVO	varchar(100),
ANO_MES	varchar(100),
OPERADORA	varchar(100),	
UF	varchar(100),	
SERIE	varchar(100),	
MINIMO	varchar(100),	
MAXIMO	varchar(100),
VALOR_TOTAL	varchar(100),
BASE	varchar(100),
ICMS	varchar(100),
ISENTAS	varchar(100),
OUTRAS	varchar(100),
DESCONTOS	varchar(100),
CANCELADA	varchar(100),
Qtd_NF	varchar(100)
);
select * from STG_Resumo_Fiscal