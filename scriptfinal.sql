
DROP DATABASE escola;
-- -----------------------------------------------------
-- Schema escola
-- -----------------------------------------------------
CREATE DATABASE escola;
USE escola;

-- -----------------------------------------------------
-- Table   responsavel 
-- -----------------------------------------------------
CREATE TABLE responsavel (
  id_responsavel INT NOT NULL PRIMARY KEY auto_increment,
  cpf VARCHAR(45) NOT NULL,
  nome VARCHAR(45) NOT NULL);
 


-- -----------------------------------------------------
-- Table   aluno 
-- -----------------------------------------------------
CREATE TABLE aluno (
  id_aluno INT NOT NULL PRIMARY KEY auto_increment,
  cpf_aluno VARCHAR(45) NOT NULL ,
  id_responsavel INT,
   FOREIGN KEY ( id_responsavel )
	REFERENCES  responsavel  ( id_responsavel ));


-- -----------------------------------------------------
-- Table   turma 
-- -----------------------------------------------------
CREATE TABLE turma (
  id_turma INT NOT NULL PRIMARY KEY auto_increment,
  curso VARCHAR(45) NOT NULL,
  instituicao VARCHAR(45) NOT NULL);


-- -----------------------------------------------------
-- Table   professor 
-- -----------------------------------------------------
CREATE TABLE professor (
  siape INT NOT NULL PRIMARY KEY auto_increment,
  cpf VARCHAR(45) NOT NULL,
  area VARCHAR(45) NOT NULL);


-- -----------------------------------------------------
-- Table   endereco 
-- -----------------------------------------------------
CREATE TABLE endereco (
  cep int NOT NULL PRIMARY KEY,
  numero INT NOT NULL);


-- -----------------------------------------------------
-- Table   aluno_has_responsavel 
-- -----------------------------------------------------
CREATE TABLE aluno_has_responsavel (
  id_aluno INT,
  id_responsavel INT ,
    FOREIGN KEY (id_aluno)
    REFERENCES aluno (id_aluno),
    FOREIGN KEY (id_responsavel)
    REFERENCES  responsavel (id_responsavel));
    


-- -----------------------------------------------------
-- Table  endereco_has_responsavel 
-- -----------------------------------------------------
CREATE TABLE endereco_has_responsavel (
  endereco_cep VARCHAR (246),
  id_responsavel int,
    FOREIGN KEY ( endereco_cep )
    REFERENCES  endereco  ( cep ),
    FOREIGN KEY ( id_responsavel )SSSS
    REFERENCES   responsavel  ( id_responsavel ));
   


-- -----------------------------------------------------
-- Table  aluno_has_endereco 
-- -----------------------------------------------------
CREATE TABLE aluno_has_endereco (
   id_aluno int,
   endereco_cep  VARCHAR(246) ,
    FOREIGN KEY ( id_aluno)
    REFERENCES   aluno  ( id_aluno),
    FOREIGN KEY ( endereco_cep )
    REFERENCES  endereco  ( cep ));


-- -----------------------------------------------------
-- Table  materia 
-- -----------------------------------------------------
CREATE TABLE  materia  (
   id_materia INT NOT NULL PRIMARY KEY auto_increment,
   professor_siape  INT ,
   id_turma  INT ,
   unidade_curricular  VARCHAR(45) NOT NULL,
   dia  VARCHAR(45) NOT NULL,
    FOREIGN KEY ( professor_siape )
    REFERENCES   professor  ( siape ),
    FOREIGN KEY ( id_turma )
    REFERENCES   turma  ( id_turma ));

-- -----------------------------------------------------
-- Table  aluno_has_turma 
-- -----------------------------------------------------
CREATE TABLE  aluno_has_turma  (
   id_aluno INT,
   turma_idturma  INT,
    FOREIGN KEY (id_aluno )
    REFERENCES   aluno  ( id_aluno ),
    FOREIGN KEY ( turma_idturma )
    REFERENCES   turma  ( id_turma ));


-- insert
INSERT INTO responsavel (cpf, nome)
VALUES ('969.477.980-43','Ariana Reilly'),
('073.636.270-37','Nelson Hull'),
('132.733.060-17','Peter Cantu'),
('184.649.620-96','Yash Silva'),
('847.795.060-18','Roger Joyce'),
('550.810.830-03','Mathilda OBrien'),
('110.488.970-60','Anton Colon'),
('524.290.030-07','Aneesa Baldwin'),
('430.879.330-07','Faisal Oconnell'),
('413.028.220-47','Gabrielle Hurst');

INSERT INTO aluno (cpf_aluno)
Values ('120.109.869-62'),
('823.110.880-55'),
('288.119.555-98'),
('991.869.162-85'),
('098.666.845-72'),
('567.199.942-15'),
('164.093.021-03'),
('673.188.689-21'),
('113.000.257-26'),
('874.204.431-37');

INSERT INTO turma(curso,instituicao)
VALUES ('Química', 'CEDUP'),
('Química', 'IFSC'),
('Informatica', 'CEDUP'),
('Informatica', 'CEDUP'),
('Informatica', 'IFSC'),
('Química', 'IFSC'),
('Informatica', 'IFSC'),
('Informatica', 'IFSC'),
('Química', 'CEDUP'),
('Química', 'IFSC');

INSERT INTO professor(siape, cpf, area)
VALUES (8888, '540.181.910-22', 'Portugues'),
(8697, '171.031.010-35', 'Matematica'),
(9635, '899.271.440-83', 'Sociologia'),
(5472, '241.795.820-15', 'Historia'),
(5247, '307.147.600-05', 'Geografia'),
(5834, '309.176.390-06', 'Filosofia'),
(7561, '450.017.580-68', 'Matematica'),
(2642, '652.199.640-11', 'Portugues'),
(7164, '157.410.080-70', 'Informatica'),
(4517, '131.414.180-55', 'Quimica');

INSERT INTO endereco (cep, numero)
VALUES ('85303-775', 620),
('29937-300', 945),
('57315-222', 861),
('38181-471', 254),
('36200-370', 18),
('65082-796', 5444),
('57084-123', 6545),
('78158-655', 165),
('68020-095', 86),
('69307-690', 4456);

INSERT INTO materia (unidade_curricular, dia)
VALUES ('Matematica', 'sexta-feira'),
('Geografia', 'segunda-feira'),
('Sociologia', 'terça-feira'),
('Portugues', 'quarta-feira'),
('Historia', 'quinta-feira'),
('Filosofia', 'sexta-feira'),
('Martematica II', 'segunda-feira'),
('Portugues II', 'terça-feira'),
('Informatica', 'sexta-feira'),
('Quimica', 'segunda-feira');

-- update 
UPDATE responsavel
set cpf = '537.667.756-77' WHERE id_responsavel = 1;
UPDATE responsavel
set cpf = '628.315.060-85' WHERE id_responsavel = 2;
UPDATE responsavel
set cpf = '142.258.312-05' WHERE id_responsavel = 3;
UPDATE responsavel
set cpf = '601.140.275-52' WHERE id_responsavel = 4;
UPDATE responsavel
set cpf = '507.754.006-37' WHERE id_responsavel = 5;

UPDATE aluno
set cpf_aluno = '434.408.608-25' WHERE id_aluno = 1;
UPDATE aluno
set cpf_aluno = '836.401.711-01' WHERE id_aluno = 2;
UPDATE aluno
set cpf_aluno = '216.453.148-55' WHERE id_aluno = 3;
UPDATE aluno
set cpf_aluno = '875.311.621-64' WHERE id_aluno = 4;
UPDATE aluno
set cpf_aluno = '242.646.321-02' WHERE id_aluno = 5;

UPDATE turma
set curso = 'Quimica' WHERE id_turma = 1;
UPDATE turma
set curso = 'Matematica' WHERE id_turma = 2;
UPDATE turma
set curso = 'Portugues' WHERE id_turma = 3;
UPDATE turma
set curso = 'Sociologia' WHERE id_turma = 4;
UPDATE turma
set curso = 'Filosofia' WHERE id_turma = 5;


UPDATE professor
set area = 'Matemática' WHERE siape = 8888;
UPDATE professor
set area = 'Português' WHERE siape = 8697;
UPDATE professor
set area = 'Biologia' WHERE siape = 9635;
UPDATE professor
set area = 'Inglês' WHERE siape = 5247;
UPDATE professor
set area = 'Filosofia' WHERE siape = 5834;

UPDATE endereco
set numero = '2454' WHERE cep = '85303-775';
UPDATE endereco
set numero = '24' WHERE cep = '29937-300';
UPDATE endereco
set numero = '567' WHERE cep = '57315-222';
UPDATE endereco
set numero = '901' WHERE cep = '38181-471';
UPDATE endereco
set numero = '22' WHERE cep = '65082-796';

UPDATE materia
set dia = 'Segunda-Feira' WHERE id_turma = 1;
UPDATE materia
set dia = 'Terça-Feira' WHERE id_turma = 2;
UPDATE materia
set dia = 'Segunda-Feira' WHERE id_turma = 3;
UPDATE materia
set dia = 'Quinta-Feira' WHERE id_turma = 4;
UPDATE materia
set dia = 'Sexta-Feira' WHERE id_turma = 5;

-- delete 
DELETE FROM responsavel WHERE id_responsavel = 1;
DELETE FROM responsavel WHERE id_responsavel = 2;
DELETE FROM responsavel WHERE id_responsavel = 3;
DELETE FROM responsavel WHERE id_responsavel = 4;
DELETE FROM responsavel WHERE id_responsavel = 5;

DELETE FROM aluno WHERE id_aluno = 1;
DELETE FROM aluno WHERE id_aluno = 2;
DELETE FROM aluno WHERE id_aluno = 3;
DELETE FROM aluno WHERE id_aluno = 4;
DELETE FROM aluno WHERE id_aluno = 5;

DELETE FROM turma WHERE id_turma =1;
DELETE FROM turma WHERE id_turma =2;
DELETE FROM turma WHERE id_turma =3;
DELETE FROM turma WHERE id_turma =4;
DELETE FROM turma WHERE id_turma =5;

DELETE FROM professor WHERE siape =8888;
DELETE FROM professor WHERE siape =8697;
DELETE FROM professor WHERE siape =9635;
DELETE FROM professor WHERE siape =5247;
DELETE FROM professor WHERE siape =5834;


DELETE FROM endereco WHERE cep = 85303-775;
DELETE FROM endereco WHERE cep = 29937-300;
DELETE FROM endereco WHERE cep = 57315-222;
DELETE FROM endereco WHERE cep = 38181-471;
DELETE FROM endereco WHERE cep = 65082-796;

DELETE FROM materia WHERE id_materia = 1;
DELETE FROM materia WHERE id_materia = 2;
DELETE FROM materia WHERE id_materia = 3;
DELETE FROM materia WHERE id_materia = 4;
DELETE FROM materia WHERE id_materia = 5;

-- selects

select * from responsavel order by id_responsavel asc;
select * from aluno order by id_aluno asc;
select * from turma order by id_turma asc;
select * from  professor order by siape asc;
select * from endereco order by cep asc;
select * from materia order by id_materia asc;

select * from responsavel where id_responsavel = 10;
select * from aluno where id_aluno = 10;
select * from turma where id_turma = 10;
select * from professor where siape = 4517;
select * from endereco where cep = 69307-690;
select * from materia  where id_materia  = 10;


select responsavel.id_responsavel, aluno.id_aluno
from responsavel inner join responsavel on
responsavel.id_resposansavel = aluno.id_aluno;


DROP DATABASE escola;