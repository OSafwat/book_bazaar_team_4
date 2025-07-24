USE bookbazaar;

START TRANSACTION;
INSERT INTO books (isbn, title, genre, page_count, cost) VALUES
('thebookisbn1234', 'Atomic Habits', 'Self-Help', 320, 220);
COMMIT;

SELECT * FROM books WHERE title = 'Atomic Habits';

SELECT * FROM books;

START TRANSACTION;
UPDATE books
SET genre = 'Productivity', title = 'Atomic Habits — Revised Edition'
WHERE isbn = 'thebookisbn1234';
COMMIT;

SELECT * FROM books WHERE isbn = 'thebookisbn1234';

START TRANSACTION;
DELETE FROM books WHERE isbn = 'thebookisbn1234';
COMMIT;

SELECT * FROM books WHERE isbn = 'thebookisbn1234';