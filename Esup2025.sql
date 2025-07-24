CREATE DATABASE IF NOT EXISTS esup2025;
USE esup2025;

SHOW DATABASES LIKE 'esup2025';

CREATE TABLE Disciplina (
  iddisciplina   INT           PRIMARY KEY AUTO_INCREMENT,
  nome           VARCHAR(100)  NOT NULL,
  carga_horaria  INT           NOT NULL,
  idcurso        INT           NOT NULL
);

CREATE TABLE Professor (
  idprofessor     INT           PRIMARY KEY AUTO_INCREMENT,
  nome            VARCHAR(100)  NOT NULL,
  titulacao       VARCHAR(50)   NOT NULL,
  CPF             VARCHAR(30)   UNIQUE NOT NULL,
  datacontratacao DATE
);

