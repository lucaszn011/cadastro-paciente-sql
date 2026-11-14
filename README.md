# Cadastro de Pacientes com PostgreSQL

Projeto acadêmico para praticar a criação de um banco de dados simples para uma clínica.

O exemplo utiliza pacientes, médicos e consultas, com dados fictícios para demonstrar consultas e relacionamentos.

## Tecnologias

- PostgreSQL
- SQL
- pgAdmin

## Conceitos praticados

- Criação de tabelas com `CREATE TABLE`
- Chaves primárias (`PRIMARY KEY`)
- Chaves estrangeiras (`FOREIGN KEY`)
- Restrições `NOT NULL` e `CHECK`
- Inserção de dados com `INSERT INTO`
- Junção de tabelas com `JOIN`
- Contagem e soma com `COUNT` e `SUM`
- Agrupamento com `GROUP BY`
- Filtro de grupos com `HAVING`
- Ordenação com `ORDER BY`

## Estrutura

- **pacientes:** nome, telefone e data de nascimento.
- **medicos:** nome e especialidade.
- **consultas:** data, valor e referências ao paciente e ao médico.

## Como executar

1. Abra o pgAdmin e conecte-se ao PostgreSQL.
2. Selecione um banco de dados de estudo vazio.
3. Abra o Query Tool.
4. Execute o arquivo `dt_base_cadastro de paciente.sql`.

O script cria as tabelas, insere dados fictícios e executa consultas de exemplo. Execute-o uma única vez em um banco vazio para evitar conflitos.

Projeto de prática desenvolvido durante a graduação.