
--Timestamp Commands
SHOW TIMEZONE
SELECT NOW()
SELECT TIMEOFDAY()
SELECT CURRENT_TIME
SELECT CURRENT_DATE

--Extract Commands
SELECT EXTRACT(MONTH FROM payment_date) AS pay_month
FROM payment

SELECT AGE(payment_date)
FROM payment

SELECT TO_CHAR(payment_date,'MM/dd/YYYY')
FROM payment

--Mathematical Functions and Operators
SELECT ROUND(rental_rate / replacement_cost, 4) * 100 AS percent_cost
FROM film

--String Functions and Operators
SELECT LOWER(left(first_name,1)) || '.' || LOWER(left(last_name,1)) || '@gmail.com'
AS customer_email
FROM customer

--SubQuery
SELECT film_id,title
FROM film
WHERE film_id IN 
(SELECT inventory.film_id 
FROM rental
INNER JOIN inventory
ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY film_id

SELECT first_name,last_name
FROM customer AS c
WHERE EXISTS
(SELECT * FROM payment AS p
WHERE p.customer_id = c.customer_id
AND amount > 11)

--self JOIN
SELECT f1.title,f2.title, f1.length
FROM film AS f1
JOIN film as f2
ON f1.length = f2.length
AND f1.film_id != f2.film_id