SELECT
  ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE()) - EXTRACT(YEAR FROM data_nascimento)), 1) AS idade_media,
  genero,
  bairro,
  cidade,
  COUNT(*) AS total_clientes
FROM `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Cliente`
WHERE status_cliente = TRUE
GROUP BY genero, bairro, cidade
ORDER BY total_clientes DESC;
