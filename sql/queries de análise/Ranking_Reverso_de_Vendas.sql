SELECT 
  p.nome,
  p.tipo,
  p.estoque,
  COUNT(va.id_produto) AS qtd_vendida
FROM `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Produto` p
LEFT JOIN `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Aux` va
  ON p.produto_id = va.id_produto
GROUP BY p.nome, p.tipo, p.estoque
ORDER BY qtd_vendida ASC;
