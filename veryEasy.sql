

USE jorge_gi;

CREATE TABLE cars (
	make VARCHAR(255),
    model VARCHAR(255),
    year INT


);

SHOW COLUMNS FROM cars;

INSERT INTO cars (make, model, year)
VALUES ('Subaru', 'Impreza', 2006),
	   ('Tesla', 'Cybertruck', 2022),
       ('Ford', 'F250', 2022);

SELECT * FROM cars;

INSERT INTO cars(make, model, year)
VALUE ('Toyota', 'Supra MK4', 1994),
	  ('Nissan', 'Skyline', 1999);
      
SELECT * FROM cars;



