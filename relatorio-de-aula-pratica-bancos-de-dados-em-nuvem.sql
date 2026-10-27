CREATE DATABASE aula

  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE aula;

CREATE TABLE cliente (

  cliente_id INT PRIMARY KEY,

  nome VARCHAR(50),

  email VARCHAR(50)

) ENGINE=InnoDB;

CREATE TABLE endereco (

  endereco_id INT PRIMARY KEY,

  cliente_id INT NOT NULL UNIQUE,

  rua VARCHAR(100),

  cidade VARCHAR(50),

  estado VARCHAR(50),

  pais VARCHAR(50),

  CONSTRAINT fk_endereco_cliente

    FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id)

) ENGINE=InnoDB;

CREATE TABLE empresa (

  empresa_id INT PRIMARY KEY,

  nome VARCHAR(50),

  endereco VARCHAR(100)

) ENGINE=InnoDB;

CREATE TABLE funcionario (

  funcionario_id INT PRIMARY KEY,

  nome VARCHAR(50),

  email VARCHAR(50),

  empresa_id INT NOT NULL,

  CONSTRAINT fk_funcionario_empresa

    FOREIGN KEY (empresa_id) REFERENCES empresa(empresa_id)

) ENGINE=InnoDB;


USE aula;

CREATE TABLE curso (

  curso_id INT PRIMARY KEY,

  nome VARCHAR(50),

  descricao VARCHAR(100)

) ENGINE=InnoDB;

CREATE TABLE estudante (

  estudante_id INT PRIMARY KEY,

  nome VARCHAR(50),

  email VARCHAR(50)

) ENGINE=InnoDB;

CREATE TABLE curso_estudante (

  curso_id INT NOT NULL,

  estudante_id INT NOT NULL,

  PRIMARY KEY (curso_id, estudante_id),

  CONSTRAINT fk_ce_curso

    FOREIGN KEY (curso_id) REFERENCES curso(curso_id),

  CONSTRAINT fk_ce_estudante

    FOREIGN KEY (estudante_id)

    REFERENCES estudante(estudante_id)

) ENGINE=InnoDB;

SHOW TABLES FROM aula;

SHOW CREATE TABLE aula.endereco;

SHOW CREATE TABLE aula.funcionario;

SHOW CREATE TABLE aula.curso_estudante;