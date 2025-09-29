SELECT 
  c.nome,
  COUNT(v.id_venda) AS qtd_compras,
  SUM(v.valor_total) AS valor_total_gasto
FROM `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Vendas` v
JOIN `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Cliente` c
  ON v.id_cliente = c.cliente_id
GROUP BY c.nome
ORDER BY valor_total_gasto DESC;
