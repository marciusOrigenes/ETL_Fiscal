select t1.nome_arquivo,t3.nome,t1.ano_mes,t3.dt_geracao,t1.operadora,t1.uf 
from Resumo_Fiscal t1 
left join 
(select nome, dt_geracao from arquivos_fiscais t2 where mes_dia_emissao like "04%" and ano_movimento=2018) t3  
on t1.nome_arquivo=t3.nome 
where t1.ano_mes="2018.04"
order by t3.nome,t1.operadora;