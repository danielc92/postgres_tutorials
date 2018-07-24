-- show table headers

SELECT 
	column_name 
FROM 
	information_schema.columns
WHERE 
	table_name = 'actor'
AND 
	table_schema = 'public';

SELECT 
	column_name 
FROM 
	information_schema.columns
WHERE 
	table_name = 'address'
AND 
	table_schema = 'public';

-- select 3 columns from customer
SELECT
	first_name,
	last_name,
	email
FROM
	customer;

-- using wildcard to select rows from address where city_id greater than 400 and district begins with q or Q
SELECT *
FROM address
WHERE city_id > 400
AND LOWER(district) LIKE 'q%';

-- select all records from actor table, sort by first_name, then by last_name
SELECT 
	*
FROM 
	actor
ORDER BY
	first_name, last_name
	
-- sorting by reverse order
SELECT
	actor_id,
	first_name,
	last_name
FROM 
	actor
WHERE
	actor_id <= 50
ORDER BY
	last_name DESC
