CREATE DATABASE perguntas;

USE perguntas;

CREATE TABLE quizzes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE questoes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    enunciado VARCHAR(255) NOT NULL,
    id_quiz INT NOT NULL,
    FOREIGN KEY (id_quiz) REFERENCES quizzes(id)
);

CREATE TABLE alternativas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    texto VARCHAR(255) NOT NULL,
    id_questao INT NOT NULL,
    FOREIGN KEY (id_questao) REFERENCES questoes(id)
);

SHOW TABLES FROM perguntas;
SHOW FIELDS FROM quizzes;

DROP DATABASE perguntas;