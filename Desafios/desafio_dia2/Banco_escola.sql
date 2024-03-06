CREATE DATABASE escola;

USE escola;

/* Lógico_1: */

CREATE TABLE professor (
    nome VARCHAR(50),
    cpf CHAR(12) PRIMARY KEY,
    idade INT
);

INSERT INTO professor (nome, cpf, idade) VALUES
('luciana', 111222363-44, 29),
('roberto', 263748384-44, 27),
('carlos', 111342333-54, 39),
('junior', 341272333-90, 69),
('paulo', 111246533-09, 78),
('gabriel', 111122438-74, 59);

ALTER TABLE professor ADD COLUMN
salario FLOAT;

ALTER TABLE professor ADD COLUMN
casado BOOLEAN;

UPDATE professor SET casado = TRUE WHERE nome = 'carlos';

UPDATE professor SET salario = 1000.00;

UPDATE professor SET salario = 1500.00 WHERE nome = 'carlos';

DELETE FROM professor WHERE nome = 'roberto';

SELECT SUM(salario) AS total FROM professor;

SELECT AVG(salario) AS 'média dos salários' FROM professor;

SELECT MAX (salario) AS 'maior salario' FROM professor;

SELECT MIN (salario) AS 'menor preco' FROM professor;

SELECT * FROM professor WHERE casado IS NULL;

SELECT * FROM professor;

DELETE FROM professor;

CREATE TABLE disciplinas (
	disciplina VARCHAR(50),
    horario VARCHAR(50),
    dia_semana VARCHAR(50)
);

INSERT INTO disciplinas VALUES
('Programação de Computadores', '07:00 - 9:30', 'segunda'),
('lógica de Programação','08:30 - 10:30', 'terça'),
('Estrutura de Dados','09:30 - 11:30', 'quarta'),
('banco de dados', '10:00 - 11:00', 'quinta'),
('POO', '19:00 - 20:30', 'sexta'),
('Direito digital','21:00 - 22:00','sabado');

SELECT disciplina, horario FROM disciplinas ORDER BY dia_semana;

SELECT disciplina FROM disciplinas WHERE disciplina = '%digital';

SELECT disciplina FROM disciplinas;

SELECT * FROM disciplinas;

DELETE FROM disciplinas;

CREATE TABLE aluno (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(50)
);

INSERT INTO aluno VALUES
(122,'Ricardo Silva Flores'),
(234,'Fabio Porchat'),
(342, 'Luan Santana'),
(102,'Joao Pedro'),
(201, 'Kalebe'),
(100, 'Manuel Ferreira'); 

SELECT * FROM aluno;

SELECT COUNT(*) AS quantidade FROM aluno;

CREATE TABLE Turma (
    num_sala INT,
    num_alunos INT
);

INSERT INTO Turma VALUES
(11,20),
(10,23),
(9,19),
(12,30),
(42,32),
(90,31);

SELECT * FROM Turma WHERE num_sala = '11' AND num_alunos = 20;

SELECT * FROM Turma;

DELETE FROM turma;

CREATE TABLE Secretaria (
    secretários VARCHAR(50) PRIMARY KEY,
    email VARCHAR(50)
);

INSERT INTO Secretaria VALUES
('Samuel Alves', 'samualv@hotmail.com'),
('Kalebe Mano', 'kalema@gmail.com'),
('gustavo henrique', 'knightpur@outlook.com'),
('henrique de souza', 'kalema@gmail.com'),
('Pedro soarez', 'pedsoa@gmail.com'),
('Manoel leandro', 'manoleo@gmail.com');

SELECT email, COUNT(*) AS vezes_cadastrados FROM Secretaria GROUP BY
email;

SELECT * FROM Secretaria;

DROP TABLE Secretaria;

SELECT* FROM Secretaria WHERE secretários LIKE 'p___________';

SELECT* FROM Secretaria WHERE secretários NOT LIKE 'P%';

SELECT* FROM Secretaria WHERE secretários LIKE '%oe%';