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


       

	   

