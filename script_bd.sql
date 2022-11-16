drop table turma;
drop database joana;
CREATE DATABASE joana;


CREATE TABLE turma(
 idturma int not null primary key auto_increment,
 curso varchar (45),
 instituicao varchar (45)
 );

CREATE TABLE professor(
 siape int not null primary key auto_increment,
 cpf varchar (45),
 area varchar (45)
 );
 
 CREATE TABLE resposavel(
 id_responsavel int not null primary key auto_increment,
 cpf varchar (45),
 nome varchar(45)
 );

CREATE TABLE aluno(
 cpf varchar(45) null primary key auto_increment,
 responsavel_cpf varchar (45),
 turma_idturma int
 );

CREATE TABLE endereco(
cep varchar (45) null primary key auto_increment,
numero int
 );

CREATE TABLE aluno_has_turma(
foreign key(cpf_aluno) references aluno(cpf_aluno),
foreign key(id_turma) references turma(id_turma));
 
CREATE TABLE aluno_has_responsavel(
aluno_cpf varchar (45) null primary key auto_increment,
foreign key(cpf) references responsavel(cpf)
 );
 
CREATE TABLE aluno_has_endereco(
 aluno_cpf varchar (45) null primary key auto_increment,
 aluno_turma_idturma varchar (45),
 endereco_cep varchar (45) 
 );
 
CREATE TABLE materia(
materia_id int null primary key auto_increment,
foreign key (siape) references professor(siape),
foreign key (id_turma) references turma (id_turma),
unidade_curricular varchar (45),
dia varchar (45)
 );
 
CREATE TABLE endereco_has_responsavel(
foreign key (cep) references endereco (cep),
foreign key (cpf) references responsavel(cpf)
 );