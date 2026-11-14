# Cadastro de Pacientes com PostgreSQL

Projeto acadêmico para praticar a criação e alteração de tabelas em um banco de dados de uma clínica.

O exemplo utiliza três entidades: pacientes, médicos e consultas.

## Tecnologias

- PostgreSQL
- SQL
- pgAdmin

## Conceitos praticados

- Criação de tabelas com `CREATE TABLE`
- Definição de chaves primárias (`PRIMARY KEY`)
- Relacionamento entre tabelas com chaves estrangeiras (`FOREIGN KEY`)
- Restrição `NOT NULL`
- Alteração de estrutura com `ALTER TABLE`
- Renomeação de tabela e remoção de coluna
- Consulta de dados com `SELECT`

## Estrutura

- **pacientes:** dados básicos dos pacientes.
- **medicos:** nome e especialidade dos médicos.
- **consultas:** data, valor e referências ao paciente e ao médico.

## Arquivo

- `dt_base_cadastro de paciente.sql`: comandos de criação, alteração e consulta das tabelas.

## Como executar

Abra o pgAdmin, conecte-se a um banco de dados de estudo e execute o script em um banco vazio.

Projeto de prática desenvolvido durante a graduação.
