USE jorge_gi;

CREATE TABLE books (
	title VARCHAR(255),
    publish_date DATE,
    author_name VARCHAR(255)

);

DESC books;

INSERT INTO books(title, publish_date, author_name)
VALUES ('Greenlights', '2020-10-20', 'Matthew McConaughey'),
	   ('The Woods', '2007-04-17', 'Harlan Coben'),
       ('The Institute', '2019-09-10', 'Stephen King'),
       ('The Hunger Games', '2008-09-14', 'Suzanne Collins'),
       ('The Maze Runner', '2009-10-06', 'James Dasher');
       
SELECT * FROM books;

INSERT INTO books(title, publish_date, author_name)
VALUES ('The Great Gatsby', '1925-04-10', 'F Scott Fitzgerald'),
	   ('The Body', '1982-01-01', 'Stephen King');
       
SELECT * FROM books;

DELETE FROM books ORDER BY publish_date ASC LIMIT 1;

SELECT * FROM books;

SELECT SUM(publish_date) FROM books;


