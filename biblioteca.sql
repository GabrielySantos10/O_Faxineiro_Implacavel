DROP DATABASE IF EXISTS BIBLIOTECA;
CREATE DATABASE IF NOT EXISTS BIBLIOTECA;
USE BIBLIOTECA;
 
DROP TABLE IF EXISTS LIVROS;
CREATE TABLE LIVROS (
    livros_id INT PRIMARY KEY AUTO_INCREMENT , -- (INT PRIMARY KEY) identificador único de um registro na tabela. (AUTO_INCREMENT) um valor de um campo seja automaticamente inserido.
    titulo VARCHAR(255), -- (conjunto de dados de caracteres de comprimento indeterminado
    autor VARCHAR(255),
    editora VARCHAR(255),
    ano_publicacao INT,
    isbn VARCHAR(13)
);
 
INSERT INTO LIVROS (titulo, autor, editora, ano_publicacao, isbn) VALUES 
('A Culpa é das Estrelas', 'John Green', 'Intrínseca', 2012, '9788580573466'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, '9788532511010'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Martins Fontes', 1954, '9788533603149'),
( 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '1951', '9780316769488'),
('1984', 'George Orwell', 'Companhia Editora Nacional', 1949, '9788522106169'),
('Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 2005, '9788598078355');
 
 INSERT INTO 
Livros (titulo, autor, editora, ano_publicacao, isbn) 
VALUES 
('Grande Sertão: Veredas', 'João Guimarães Rosa', 'Nova Fronteira', 1956, '9788520923251'),
('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Companhia das Letras', 1881, '9788535910663'),
('Vidas Secas', 'Graciliano Ramos', 'Companhia Editora Nacional', 1938, '9788572326972'),
('O Alienista', 'Machado de Assis', 'Martin Claret', 1882, '9788572327429'),
('O Cortiço', 'Aluísio Azevedo', 'Penguin Companhia', 1890, '9788579027048'),
('Dom Casmurro', 'Machado de Assis', 'Penguin Companhia', 1899, '9788583862093'),
('Macunaíma', 'Mário de Andrade', 'Companhia Editora Nacional', 1928, '9788503012302');
 
DROP TABLE IF EXISTS AUTORES;
CREATE TABLE AUTORES(
autores_id INT PRIMARY KEY AUTO_INCREMENT,
nome_autor VARCHAR(255)
);
 
DROP TABLE IF EXISTS EDITORAS;
CREATE TABLE EDITORAS(
editoras_id INT PRIMARY KEY AUTO_INCREMENT,
nome_editora VARCHAR(255)
);
 
INSERT INTO EDITORAS (nome_editora) VALUES
('Intrínseca'),
( 'Rocco'),
('Martins Fontes'),
('Little, Brown and Company'),
('Companhia Editora Nacional'),
('Intrínseca'),
('Nova Fronteira'),
('Companhia das Letras'),
('Companhia Editora Nacional'),
('Martin Claret'),
('Penguin Companhia');
 
INSERT INTO AUTORES (nome_autor) VALUES
('John Green'),
('J.K. Rowling'),
('J.R.R. Tolkien'),
('J.D. Salinger'),
('George Orwell'),
('Rick Riordan'),
('João Guimarães Rosa'),
('Machado de Assis'),
('Graciliano Ramos'),
('Aluísio Azevedo'),
('Mário de Andrade');

 
ALTER TABLE LIVROS  
ADD COLUMN autores_id INT,
ADD COLUMN editoras_id INT;
 
ALTER TABLE LIVROS
ADD CONSTRAINT editoras_id FOREIGN KEY (editoras_id) REFERENCES EDITORAS(editoras_id);
UPDATE LIVROS SET editoras_id = 1 WHERE EDITORA = "Intrínseca";
UPDATE LIVROS SET editoras_id = 2 WHERE EDITORA = 'Rocco';
UPDATE LIVROS SET editoras_id = 3 WHERE EDITORA = 'Martins Fontes';
UPDATE LIVROS SET editoras_id = 4 WHERE EDITORA = 'Little, Brown and Company';
UPDATE LIVROS SET editoras_id = 5 WHERE EDITORA = 'Companhia Editora Nacional';
UPDATE LIVROS SET editoras_id = 6 WHERE EDITORA = 'Nova Fronteira';
UPDATE LIVROS SET editoras_id = 7 WHERE EDITORA = 'Companhia das Letras';
UPDATE LIVROS SET editoras_id = 8 WHERE EDITORA = 'Martin Claret';
UPDATE LIVROS SET editoras_id = 9 WHERE EDITORA = 'Penguin Companhia';
ALTER TABLE LIVROS
ADD CONSTRAINT autores_id FOREIGN KEY (autores_id) REFERENCES AUTORES(autores_id);
UPDATE LIVROS SET autores_id = 1 WHERE AUTOR = 'John Green';
UPDATE LIVROS SET autores_id = 2 WHERE AUTOR = 'J.K. Rowling';
UPDATE LIVROS SET autores_id = 3 WHERE AUTOR = 'J.R.R. Tolkien';
UPDATE LIVROS SET autores_id = 4 WHERE AUTOR = 'J.D. Salinger';
UPDATE LIVROS SET autores_id = 5 WHERE AUTOR ='George Orwell';
UPDATE LIVROS SET autores_id = 6 WHERE AUTOR ='Rick Riordan';
UPDATE LIVROS SET autores_id = 7 WHERE AUTOR = 'João Guimarães Rosa';
UPDATE LIVROS SET autores_id = 8 WHERE AUTOR = 'Machado de Assis';
UPDATE LIVROS SET autores_id = 9 WHERE AUTOR = 'Graciliano Ramos';
UPDATE LIVROS SET autores_id = 10 WHERE AUTOR =  'Aluísio Azevedo';
UPDATE LIVROS SET autores_id = 11 WHERE AUTOR = 'Mário de Andrade';


 
ALTER TABLE LIVROS  
DROP COLUMN autor,
DROP COLUMN editora;
 
-- ADD CONSTRAINT usada para impor regras ou restrições adicionais aos dados em uma tabela.