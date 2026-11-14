-- Criação das tabelas
CREATE TABLE paciente
(
    id_pac INT,
    nome_pac VARCHAR(100),
    tel_pac VARCHAR(20),
    data_nasc_pac DATE
);

CREATE TABLE medicos
(
    id_med INT,
    nome_med VARCHAR(100),
    especialidade_med VARCHAR(100)
);

CREATE TABLE consultas
(
    id_cons INT,
    data_cons DATE,
    valor_cons NUMERIC(7,2),
    id_pac INT,
    id_med INT
);

-- Definição das chaves primárias
ALTER TABLE paciente
ADD CONSTRAINT pk_id_pac PRIMARY KEY (id_pac);

ALTER TABLE medicos
ADD CONSTRAINT pk_id_med PRIMARY KEY (id_med);

ALTER TABLE consultas
ADD CONSTRAINT pk_id_cons PRIMARY KEY (id_cons);

-- Restrição para exigir o nome do paciente
ALTER TABLE paciente
ALTER COLUMN nome_pac SET NOT NULL;

-- Relacionamentos entre consultas, pacientes e médicos
ALTER TABLE consultas
ADD CONSTRAINT fk_cons_pac FOREIGN KEY (id_pac)
REFERENCES paciente (id_pac);

ALTER TABLE consultas
ADD CONSTRAINT fk_cons_med FOREIGN KEY (id_med)
REFERENCES medicos (id_med);

-- Renomear tabela
ALTER TABLE paciente RENAME TO pacientes;

-- Remover coluna de telefone (exercício de ALTER TABLE)
ALTER TABLE pacientes DROP COLUMN tel_pac;

-- Consultar os pacientes
SELECT * FROM pacientes;
