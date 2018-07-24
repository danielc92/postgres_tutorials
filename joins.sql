-- inner join customer and payment table on customer id
SELECT
	customer.customer_id,
	payment.customer_id,
	payment.amount,
	customer.first_name,
	customer.last_name
FROM
	customer
INNER JOIN
	payment
	ON
	payment.customer_id = customer.customer_id
WHERE 
	customer.customer_id < 100
	
--left join film and inventory table on film_id
SELECT 
	film.film_id,
	inventory.film_id,
	film.title
FROM
	film
LEFT JOIN
	inventory
ON	
	inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL

--full outer join
SELECT *
FROM 
	film
FULL OUTER JOIN
	inventory 
ON inventory.film_id = film.film_id


--natural join
SELECT
	*
FROM
	inventory
NATURAL LEFT JOIN
	film


