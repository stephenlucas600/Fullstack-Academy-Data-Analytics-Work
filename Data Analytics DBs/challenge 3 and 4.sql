SELECT *
FROM car_database cd 
WHERE cd.price is NULL; 

UPDATE car_database 
SET price  = NULL 
WHERE price = 'NULL';

SELECT car_make, car_model, price
from car_database cd
WHERE car_make = 'dodge' AND price = '17000'
ORDER BY car_make;

UPDATE car_database 
SET car_make  = 'ford' 
WHERE car_make = 'ford ';

SELECT *
from car_database cd
WHERE car_make IN ('dodge', 'ford')
ORDER BY car_make;