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

-- Write a query to add in three cars at once
INSERT INTO cars(make, model, year)
VALUE ('Toyota', 'Tundra', 2022),
	  ('Dodge', 'Ram', 2022),
      ('Dodge', 'Charger', 2019);
 
 -- Write a query to add in prices and colors for each of these cars
ALTER TABLE cars
ADD prices INT,
ADD color VARCHAR(255);

SELECT * FROM cars;

SET SQL_SAFE_UPDATES = 0;

UPDATE cars
SET prices = 50000,
	color = "Grey"
WHERE model = "Tundra";

UPDATE cars
SET prices = 60000,
	color = "White"
WHERE model = "Ram";

UPDATE cars
SET prices = 55000,
	color = "Maroon"
WHERE model = "Charger";

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM cars;
-- Write a query to put the Make and Model together in one column
SELECT make, model,
CONCAT(make, ' ', model) AS MakeAndModel FROM cars;

SELECT * FROM cars;

-- Create a new query that adds an additional column to the results to show how many cars have the same Make.
SELECT make, COUNT(*) AS samemake
FROM cars 
GROUP BY make
ORDER BY samemake DESC
LIMIT 1;

SELECT * FROM cars;


      
	


