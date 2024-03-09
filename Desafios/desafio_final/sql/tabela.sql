/* Lógico_1: */
use Faculdade;

CREATE TABLE Aluno (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(50),
    telefone VARCHAR(40)
);
INSERT INTO aluno VALUES
(36283, 'Paola Fernandes', '(99) 9 8765-4321'),
(43246, 'João Paulo', '(99) 9 4453-3468'),
(48729, 'Júlia Monteiro', '(99) 9 4839-2345'),
(74829, 'Ricardo Oliveira', '(99) 9 2345-3424'),
(95865, 'Paulo Freitas', '(99) 9 3849-4530');

USE Faculdade;

CREATE TABLE Disciplina (
    cod_disciplina INT PRIMARY KEY,
    nome VARCHAR(50),
    CH INT
);
INSERT INTO Disciplina (cod_disciplina, nome, CH) VALUES
(3445, "Programação de Computadores", 60),
(2312, "Cálculo Diferencial e Integral", 30),
(2346, "Pensamento Computacional", 50),
(8502, "Direito Digital", 40);


CREATE TABLE Semestre (
    cod_semestre NUMERIC PRIMARY KEY,
    inicio DATE,
    termino DATE
);
INSERT INTO Semestre (cod_semestre, inicio, termino) VALUES
(12, '2024-02-01', '2024-06-02'),
(45, '2024-08-04', '2024-12-08'),
(32, '2025-02-04', '2025-06-06'),
(56, '2025-07-03', '2025-11-11');