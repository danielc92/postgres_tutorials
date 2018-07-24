-- select from customer table with one parameter
SELECT 
	first_name,
	last_name
FROM
	customer
WHERE
	first_name = 'Jamie'

-- select from customer table with two parameters
SELECT 
	first_name,
	last_name
FROM
	customer
WHERE
	first_name = 'Jamie'
	AND
	last_name = 'Rice'

-- find payment ranges
SELECT MAX(amount), MIN(amount) FROM payment
	
-- select from payment table filtering by amount range using comparison operators
SELECT 
	customer_id,
	amount,
	payment_date
FROM
	payment
WHERE
	amount >= 4.5
	AND
	amount <= 5.9
ORDER BY
	amount
	
-- select from payment table filtering by amount range using BETWEEN
SELECT 
	customer_id,
	amount,
	payment_date
FROM
	payment
WHERE
	amount 
		BETWEEN 4 AND 6
ORDER BY
	amount
	
-- limiting query results from payment tables using LIMIT
SELECT
	*
FROM
	payment
LIMIT(5)

-- limiting query results from customer tables using LIMIT
SELECT
	*
FROM
	customer
ORDER BY
	last_name, first_name
LIMIT(40)

-- limiting query results from language tables using LIMIT
SELECT
	*
FROM
	language
LIMIT(12)

-- limiting query results from address tables using LIMIT
SELECT
	*
FROM
	address
LIMIT(10)

-- limiting query generation using FETCH
SELECT
	*
FROM
	address
FETCH FIRST 10 ROW ONLY

-- using LIKE as a wildcard filter
SELECT
	first_name,
	last_name
FROM
	actor 
WHERE 
	first_name LIKE 'B%'
	
-- using LIKE as a wildcard filter
SELECT
	first_name,
	last_name
FROM
	actor 
WHERE 
	first_name LIKE '%ur%'
	
-- using NOT LIKE as a wildcard filter
SELECT
	first_name,
	last_name
FROM
	actor 
WHERE 
	first_name NOT LIKE 'A%'
ORDER BY
	first_name

-- using IN to filter values from a list
SELECT 
	* 
FROM 
	payment
WHERE 
	payment_id IN (17507, 17508, 17510)

	