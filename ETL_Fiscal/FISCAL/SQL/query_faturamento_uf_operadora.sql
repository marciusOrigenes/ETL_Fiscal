select uf,operadora,sum(valor_total) valor_total,sum(isentas+outras) isencoes,sum(base) base,sum(icms) ICMS 
from Resumo_Fiscal where ano_mes="2018.04" 
group by uf,operadora
order by uf,operadora;