CREATE DATABASE asanchezaguirre;

USE asanchezaguirre;

CREATE TABLE Interprete(
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR (100) NOT NULL,
    Albumes VARCHAR (200) NOT NULL
);

CREATE TABLE Collection(
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR (100) NOT NULL,
    Albumes VARCHAR (200) NOT NULL
);

CREATE TABLE Album(
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR (100) NOT NULL,
    Pistas VARCHAR (200) NOT NULL,
    InterpreteId INT,
    CollectionId INT,
    FOREIGN KEY (InterpreteId) REFERENCES Interprete (Id),
    FOREIGN KEY (CollectionId) REFERENCES Collection (Id)	
);

CREATE TABLE Pistas(
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR (100) NOT NULL,
    Duration INT(3),
    AlbumId INT,
    FOREIGN KEY (AlbumId) REFERENCES Album (Id)
	
);