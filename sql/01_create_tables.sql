CREATE TABLE `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Cliente` (
  cliente_id INT64,
  nome STRING,
  email STRING,
  telefone STRING,
  data_nascimento DATE,
  genero STRING,
  cep STRING,
  numero STRING,
  complemento STRING,
  bairro STRING,
  cidade STRING,
  estado STRING,
  data_cadastro TIMESTAMP,
  status_cliente BOOL
);

CREATE TABLE `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Produto` (
  produto_id INT64,
  nome STRING,
  tipo STRING,
  preco NUMERIC,
  estoque INT64,
  descricao STRING,
  detalhes_livro STRUCT<
    autor STRING,
    editora STRING,
    ano_publicacao INT64,
    isbn STRING,
    genero STRING,
    numero_paginas INT64
  >,
  detalhes_papelaria STRUCT<
    categoria STRING,
    cor STRING,
    marca STRING,
    material STRING
  >,
  data_cadastro TIMESTAMP,
  ativo BOOL
);

CREATE TABLE `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Vendas` (
  id_venda INT64,
  id_cliente INT64,
  data_venda DATE,
  valor_total NUMERIC
);

CREATE TABLE `t1engenhariadados.Turma_2_Grupo_8_Livraria_DevSaber.Aux` (
  id_aux INT64,
  id_venda INT64,
  id_produto INT64,
  quantidade INT64
);
