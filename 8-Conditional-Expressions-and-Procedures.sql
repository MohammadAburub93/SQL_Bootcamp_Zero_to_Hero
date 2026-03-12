--CASE statement
SELECT customer_id, 
CASE
	WHEN (customer_id <= 100) THEN 'Premium'
	WHEN (customer_id BETWEEN 100 and 200) THEN 'Plus'
	ELSE  'Normal' 
END AS customer_class

FROM customer


SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second Place'
	ELSE 'Normal'

END AS raffle_results

FROM customer


SELECT 
SUM(CASE rating
	WHEN 'R' THEN 1
	ELSE 0
END) AS r,
SUM(CASE rating
	WHEN 'PG' THEN 1
	ELSE 0
END) AS pg,
SUM(CASE rating
	WHEN 'PG-13' THEN 1
	ELSE 0
END) AS pg13

FROM film

--CAST function
SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) from rental

--NULLIF function
SELECT (
SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
	NULLIF(SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END), 0)

) AS department_ratio
FROM depts

--VIEW 

CREATE VIEW customer_info AS 
SELECT first_name,last_name,address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id