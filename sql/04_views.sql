CREATE VIEW t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.resumo_vendas_por_estado AS
SELECT
  t2.estado,
  t2.cidade,
  SUM(t1.valor_total) AS receita_total,
  COUNT(t1.id_venda) AS total_vendas,
  SUM(t3.quantidade) AS total_itens_vendidos
FROM
  t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Vendas AS t1
LEFT JOIN
  t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Cliente AS t2
  ON t1.id_cliente = t2.cliente_id
LEFT JOIN
  t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Aux AS t3
  ON t1.id_venda = t3.id_venda
GROUP BY
  t2.estado,
  t2.cidade
ORDER BY
  t2.estado,
  receita_total DESC;
