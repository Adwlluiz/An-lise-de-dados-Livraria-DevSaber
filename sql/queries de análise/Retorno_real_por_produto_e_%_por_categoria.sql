WITH faturamento_produto AS (
  SELECT
    p.produto_id,
    p.nome,
    p.tipo,
    SUM(a.quantidade * p.preco) AS faturamento_total
  FROM t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Aux a
  JOIN t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Produto p
    ON a.id_produto = p.produto_id
  GROUP BY p.produto_id, p.nome, p.tipo
),
faturamento_tipo AS (
  SELECT
    tipo,
    SUM(faturamento_total) AS total_tipo
  FROM faturamento_produto
  GROUP BY tipo
),
faturamento_geral AS (
  SELECT SUM(total_tipo) AS total_geral FROM faturamento_tipo
)
SELECT
  f.tipo,
  f.total_tipo,
  ROUND(f.total_tipo / g.total_geral * 100, 2) AS percentual
FROM faturamento_tipo f
CROSS JOIN faturamento_geral g
ORDER BY total_tipo DESC;
