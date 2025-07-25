CREATE DATABASE bookbazaar
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
  
CREATE USER 'bookadmin'@'localhost' IDENTIFIED BY 'root account password';

GRANT ALL PRIVILEGES ON bookbazaar.* TO 'bookadmin'@'localhost';

use bookbazaar;

CREATE TABLE authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    isbn CHAR(15) NOT NULL UNIQUE,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    page_count INT NOT NULL CHECK (page_count > 0),
    cost DECIMAL(10, 2) NOT NULL CHECK (cost > 0)
);

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    phone_number CHAR(11) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    country VARCHAR(30) NOT NULL
);
