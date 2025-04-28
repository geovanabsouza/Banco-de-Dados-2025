CREATE DATABASE etecmcm2;

USE etecmcm2;

CREATE TABLE Produto (
    Id_produto INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(255),
    preco DECIMAL (10,2),
    nome_produto VARCHAR(255),
    qtde INT,
    fk_Categoria_id_categoria INT
);

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY  AUTO_INCREMENT,
    nome_categoria VARCHAR(255)
);
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_2
    FOREIGN KEY (fk_Categoria_id_categoria)
    REFERENCES Categoria (id_categoria)
    ON DELETE RESTRICT;