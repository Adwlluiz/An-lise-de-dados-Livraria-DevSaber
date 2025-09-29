SELECT 
  DATE(v.data_venda) AS dia,
  SUM(v.valor_total) AS faturamento_diario
FROM `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Vendas` v
GROUP BY dia
ORDER BY dia;
