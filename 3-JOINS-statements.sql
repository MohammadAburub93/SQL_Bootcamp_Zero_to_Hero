
--Giving a readable column name using AS clause
SELECT customer_id,SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100

--INNER JOIN
SELECT payment_id,payment.customer_id,first_name
FROM customer
INNER JOIN payment
ON customer.customer_id =  payment.customer_id

--FULL OUTER JOIN
SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null
OR payment_id IS null

--LIFT JOIN
SELECT film.film_id,title,inventory_id,store_id
FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS null

--RIGHT JOIN
SELECT film.film_id,title,inventory_id,store_id
FROM inventory
RIGHT JOIN film
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS null