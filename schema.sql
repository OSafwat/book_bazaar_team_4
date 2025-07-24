CREATE DATABASE book_bazaar;
USE book_bazaar;

CREATE TABLE users (
	user_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(70) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    username VARCHAR(100) NOT NULL,
    phone_number CHAR(11) NOT NULL,
    country VARCHAR(30) NOT NULL
);

CREATE TABLE authors (
	author_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL
);
