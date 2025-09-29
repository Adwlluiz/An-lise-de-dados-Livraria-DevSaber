SELECT 
  FORMAT_DATE('%G-%V', v.data_venda) AS semana,
  SUM(v.valor_total) AS faturamento_semanal
FROM `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Vendas` v
GROUP BY semana
ORDER BY semana;
