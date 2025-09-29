# 📚 Livraria DevSaber

Projeto desenvolvido no curso de Engenharia de Dados - Grupo 8.  
O objetivo é modelar e analisar os dados de uma livraria fictícia usando **Google BigQuery**.

## 🚀 Estrutura do Projeto
- `data/` → arquivos CSV com dados de clientes, produtos, vendas e itens vendidos
- `sql/` → scripts SQL para criação das tabelas, inserção e análises
- `docs/` → documentação e relatório do trabalho
- `notebooks/` → (opcional) exemplos de análises em Python

## 🔧 Tecnologias
- Google BigQuery
- SQL (DDL e DML)
- CSV (dados de entrada)

## ▶️ Como executar
1. Crie um dataset no BigQuery.
2. Execute os scripts em `sql/create_tables.sql`.
3. Faça a ingestão dos arquivos em `data/`.
4. Rode as queries em `sql/queries_analise.sql`.
5. Consulte a view criada em `sql/views.sql` para resumo de vendas por estado.

## 📊 Exemplos de análises
- Faturamento diário, semanal e mensal
- Ranking de produtos mais vendidos
- Perfil demográfico dos clientes
- Valor médio das compras
