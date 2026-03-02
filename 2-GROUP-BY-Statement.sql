--Aggregate Values
SELECT MAX(replacement_cost),MIN(replacement_cost)
FROM film;

SELECT ROUND(AVG(replacement_cost), 2)
FROM film;

SELECT SUM(replacement_cost)
FROM film;

--Categorized Outputs
SELECT customer_id,staff_id,SUM(amount) FROM payment
GROUP BY staff_id,customer_id
ORDER BY customer_id

SELECT customer_id,SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5

--Filtering by total amount of payment
SELECT customer_id,SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100