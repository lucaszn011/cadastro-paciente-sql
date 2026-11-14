-- Cadastro de pacientes - PostgreSQL
-- Execute este script em um banco de dados vazio.

CREATE TABLE pacientes (
    id_pac INT PRIMARY KEY,
    nome_pac VARCHAR(100) NOT NULL,
    tel_pac VARCHAR(20),
    data_nasc_pac DATE
);

CREATE TABLE medicos (
    id_med INT PRIMARY KEY,
    nome_med VARCHAR(100) NOT NULL,
    especialidade_med VARCHAR(100) NOT NULL
);

CREATE TABLE consultas (
    id_cons INT PRIMARY KEY,
    data_cons DATE NOT NULL,
    valor_cons NUMERIC(7,2) NOT NULL CHECK (valor_cons >= 0),
    id_pac INT NOT NULL REFERENCES pacientes(id_pac),
    id_med INT NOT NULL REFERENCES medicos(id_med)
);

-- Dados fictícios para praticar as consultas.
INSERT INTO pacientes (id_pac, nome_pac, tel_pac, data_nasc_pac) VALUES
(1, 'Ana Souza', '11990001111', '1998-04-12'),
(2, 'Bruno Lima', '11990002222', '1985-09-23'),
(3, 'Carla Mendes', '11990003333', '2001-01-05');

INSERT INTO medicos (id_med, nome_med, especialidade_med) VALUES
(1, 'Dra. Paula Costa', 'Cardiologia'),
(2, 'Dr. Marcos Silva', 'Dermatologia');

INSERT INTO consultas (id_cons, data_cons, valor_cons, id_pac, id_med) VALUES
(1, '2026-10-10', 180.00, 1, 1),
(2, '2026-10-12', 150.00, 2, 2),
(3, '2026-10-15', 180.00, 1, 1),
(4, '2026-10-18', 200.00, 3, 1);

-- 1. Lista as consultas com paciente, médico e especialidade.
SELECT
    c.id_cons,
    p.nome_pac AS paciente,
    m.nome_med AS medico,
    m.especialidade_med AS especialidade,
    c.data_cons,
    c.valor_cons
FROM consultas c
JOIN pacientes p ON c.id_pac = p.id_pac
JOIN medicos m ON c.id_med = m.id_med
ORDER BY c.data_cons;

-- 2. Conta quantas consultas cada médico realizou.
SELECT
    m.nome_med AS medico,
    COUNT(c.id_cons) AS total_consultas
FROM medicos m
LEFT JOIN consultas c ON c.id_med = m.id_med
GROUP BY m.id_med, m.nome_med
ORDER BY total_consultas DESC;

-- 3. Mostra médicos com pelo menos duas consultas.
SELECT
    m.nome_med AS medico,
    COUNT(c.id_cons) AS total_consultas
FROM medicos m
JOIN consultas c ON c.id_med = m.id_med
GROUP BY m.id_med, m.nome_med
HAVING COUNT(c.id_cons) >= 2
ORDER BY total_consultas DESC;

-- 4. Soma o valor das consultas por especialidade.
SELECT
    m.especialidade_med,
    SUM(c.valor_cons) AS total_arrecadado
FROM medicos m
JOIN consultas c ON c.id_med = m.id_med
GROUP BY m.especialidade_med
ORDER BY total_arrecadado DESC;