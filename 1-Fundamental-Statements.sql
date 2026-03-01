
--Select columns from a table
SELECT first_name, last_name, email FROM customer;

--Count number of rows
SELECT COUNT(*) FROM film;

--Select unique values
SELECT DISTINCT release_year FROM film;

--Select rows based on conditions
SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating='R';

--Sorting values retrieved 
SELECT * FROM customer
ORDER BY store_id,first_name ASC;

--Limiting the number of retrieved values
SELECT * FROM payment
ORDER BY payment_date DESC
LIMIT 5;

--Using BETWEEN keyword for range
SELECT COUNT (*) FROM payment
WHERE amount BETWEEN 8 AND 9;

--Using IN keyword for specifying outputs
SELECT * FROM customer
WHERE first_name IN ('John','Jake','Julie');

--Using LIKE and ILIKE keywords for output matching
SELECT COUNT (*) FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%'