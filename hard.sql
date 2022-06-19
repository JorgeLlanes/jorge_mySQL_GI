USE jorge_gi;

CREATE TABLE movies (
		title VARCHAR(255),
        release_date DATE,
        rating INT

);

INSERT INTO movies(title, release_date, rating)
VALUES ('Interstellar', '2014-10-26', 10),
	   ('F&F1', '2001-06-22', 10),
       ('Endgame', '2019-04-26', 10),
       ('No Way Home', '2021-12-17', 10),
       ('NOPE', '2019-07-22', 10),
       ('Morbius', '2022-04-01', 1),
       ('The Batman', '2022-03-04',10),
       ('Us', '2019-03-22',9),
       ('Lightyear', '2022-06-17',8),
       ('THTF', '2021-10-06',9);
       
SELECT * FROM movies
WHERE title LIKE '%S%' ORDER BY release_date;

SELECT * FROM movies;

ALTER TABLE movies
ADD fname VARCHAR(255),
ADD	lname VARCHAR(255);

SELECT * FROM movies;

SET SQL_SAFE_UPDATES = 0;

UPDATE movies 
SET fname = "Jorge",
	lname = "Llanes" 
WHERE title = 'Interstellar';

UPDATE movies 
SET fname = "Paul",
	lname = "Walker" 
WHERE title = 'F&F1';

UPDATE movies 
SET fname = "IRON",
	lname = "MAN" 
WHERE title = 'Endgame';

SET SQL_SAFE_UPDATES = 1;

SELECT fname, lname FROM movies;

SELECT fname AS first, lname AS last, 
CONCAT(fname, ' ', lname) AS fullname FROM movies;

SELECT * FROM movies
ORDER BY lname ASC;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM movies
WHERE lname BETWEEN "R" AND "Z";

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM movies
ORDER BY lname ASC;
































