CREATE DATABASE IF NOT EXISTS books CHARSET utf8mb4;
USE books;

-- Creation table users 
CREATE TABLE IF NOT EXISTS users(
id_users INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
firstname VARCHAR(50) NOT NULL,
lastname VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL UNIQUE,
`password` VARCHAR(100) NOT NULL
);

-- Vérification des données
-- Minimum 2 caractères pour firstname et lastname
ALTER TABLE users
ADD CONSTRAINT check_firstname_more_2_caracters
CHECK(LENGTH(firstname) > 2);

ALTER TABLE users
ADD CONSTRAINT check_lastname_more_2_caracters
CHECK(LENGTH(lastname) > 2);


-- Creation table category
CREATE TABLE IF NOT EXISTS category(
id_category INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
`name` VARCHAR(50) NOT NULL UNIQUE
);

-- Creation table book
CREATE TABLE IF NOT EXISTS book(
id_book INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
title VARCHAR(50) NOT NULL,
`description` TEXT NOT NULL,
publication_date DATE NOT NULL,
author VARCHAR(50),
id_category INT,
FOREIGN KEY (id_category) REFERENCES category(id_category), 
id_users INT,
FOREIGN KEY (id_users) REFERENCES users(id_users)
);

-- Vérification des données
-- Minimum 3 caractères pour title
ALTER TABLE book
ADD CONSTRAINT check_title_more_3_caracters
CHECK(LENGTH(title) > 3);

-- Entre 500 et 1 caractères pour la description
ALTER TABLE book
ADD CONSTRAINT not_empty_and_less_500_caracters
CHECK(LENGTH(`description`) BETWEEN 1 AND 500);









