SELECT 
  FORMAT_DATE('%Y-%m', v.data_venda) AS mes,
  SUM(v.valor_total) AS faturamento_mensal
FROM `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Vendas` v
GROUP BY mes
ORDER BY mes;
