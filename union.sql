-- UNION three subsets of the actor table

SELECT 
	actor_id,
	first_name,
	last_name,
	last_update
FROM 
	actor
WHERE
	LOWER(last_name) LIKE 'z%'
	
UNION

SELECT 
	actor_id,
	first_name,
	last_name,
	last_update
FROM 
	actor
WHERE
	LOWER(last_name) LIKE 't%'
	
UNION

SELECT 
	actor_id,
	first_name,
	last_name,
	last_update
FROM 
	actor
WHERE
	LOWER(last_name) LIKE 'f%'
	
ORDER BY 
	last_name, first_name