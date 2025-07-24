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

INSERT INTO authors(first_name, last_name) VALUES
('Paulo', 'Coelho'),
('Robert', 'Kiyosaki'),
('Charles', 'Dickens');

INSERT INTO books(isbn, title, genre, page_count, cost) VALUES
('abcde12345fghij', 'The Alchemist', 'Drama', 250, 200),
('lmnop12345andfb', 'Rich Dad Poor Dad', 'Personal Finance', 200, 150),
('xyzandabc123456', 'The Spy', 'Spy Fiction', 300, 180),
('123qrstuvwxyz45', 'Oliver Twist', 'Adventure Fiction', 500, 300),
('cristianoisgoat', 'David Copperfield', 'Autobiography Fiction', 400, 350);

INSERT INTO users(username, phone_number, email, password_hash, country) VALUES
('MohamedNabil500', '01011388226', 'mohameddnabill04@gmail.com', 'wxyz1234abcd', 'Egypt'),
('OmarSafwat500', '01020304050', 'omarsafwat03@gmail.com', 'aa12bb34cc56', 'Egypt'),
('AbdelkawyNasr123', '01000055566', 'abdonasr103@gmail.com', 'qwerty123456', 'Egypt');