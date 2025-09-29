SELECT
  ROUND(AVG(DATE_DIFF(CURRENT_DATE(), data_nascimento, YEAR)), 1) AS idade_media,
  COUNTIF(genero = 'Feminino') AS total_feminino,
  COUNTIF(genero = 'Masculino') AS total_masculino,
  COUNT(*) AS total_clientes
FROM `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Cliente`
WHERE status_cliente = TRUE;
