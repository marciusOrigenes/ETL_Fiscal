insert into Resumo_Fiscal(NOME_ARQUIVO,ANO_MES, OPERADORA, UF, SERIE, MINIMO, MAXIMO, VALOR_TOTAL, BASE, ICMS, ISENTAS, OUTRAS, DESCONTO, CANCELADA, Qtd_NF)
select stg.NOME_ARQUIVO,
stg.ANO_MES, 
stg.OPERADORA, 
stg.UF, 
stg.SERIE, 
stg.MINIMO,
stg.MAXIMO, 
cast(replace(stg.VALOR_TOTAL,",",".") as decimal(10,2)), 
cast(replace(stg.BASE,",",".") as decimal(10,2)),
cast(replace(stg.ICMS,",",".") as decimal(10,2)), 
cast(replace(stg.ISENTAS,",",".") as decimal(10,2)), 
cast(replace(stg.OUTRAS,",",".") as decimal(10,2)),
cast(replace(stg.DESCONTOS,",",".") as decimal(10,2)),
stg.CANCELADA, 
stg.Qtd_NF 
from STG_Resumo_Fiscal stg
where stg.NOME_ARQUIVO not in( select nome_arquivo from Resumo_Fiscal);

truncate table STG_Resumo_Fiscal;
