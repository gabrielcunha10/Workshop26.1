/* escola_idioma_logico: */

CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    cpf CHAR(11),
    nome_aluno VARCHAR(100),
    email VARCHAR(255),
    telefone VARCHAR(15),
    UNIQUE (cpf, email)
);

CREATE TABLE matricula (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    data_matricula DATE,
    fk_aluno_id_aluno INT,
    fk_turma_id_turma INT
);

CREATE TABLE curso (
    id_curso INT PRIMARY KEY,
    idioma VARCHAR(20),
    carga_horaria INT,
    nivel VARCHAR(20)
);

CREATE TABLE turma (
    id_turma INT PRIMARY KEY,
    horario TIME,
    fk_curso_id_curso INT,
    fk_professor_id_professor INT,
    sala VARCHAR(10)
);

CREATE TABLE professor (
    id_professor INT PRIMARY KEY,
    nome_professor VARCHAR(100),
    email VARCHAR(255),
    cpf CHAR(11),
    telefone VARCHAR(15),
    especialidade VARCHAR(50),
    UNIQUE (cpf, email)
);
 
ALTER TABLE matricula ADD CONSTRAINT FK_matricula_2
    FOREIGN KEY (fk_aluno_id_aluno)
    REFERENCES aluno (id_aluno)
    ON DELETE CASCADE;
 
ALTER TABLE matricula ADD CONSTRAINT FK_matricula_3
    FOREIGN KEY (fk_turma_id_turma)
    REFERENCES turma (id_turma)
    ON DELETE RESTRICT;
 
ALTER TABLE turma ADD CONSTRAINT FK_turma_2
    FOREIGN KEY (fk_curso_id_curso)
    REFERENCES curso (id_curso)
    ON DELETE RESTRICT;
 
ALTER TABLE turma ADD CONSTRAINT FK_turma_3
    FOREIGN KEY (fk_professor_id_professor)
    REFERENCES professor (id_professor)
    ON DELETE CASCADE;
