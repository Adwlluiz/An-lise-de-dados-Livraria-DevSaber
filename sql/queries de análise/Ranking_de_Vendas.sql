SELECT 
  p.nome AS produto,
  p.tipo,
  COUNT(*) AS qtd_vendida
FROM `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Aux` va
JOIN `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Produto` p
  ON va.id_produto = p.produto_id
GROUP BY produto, tipo
ORDER BY qtd_vendida DESC;
