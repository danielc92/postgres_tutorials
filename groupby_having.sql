-- GROUP BY amount

SELECT
	customer_id,
	SUM(amount)
FROM 
	payment
GROUP BY
	customer_id
ORDER BY 
	SUM(amount) DESC


-- GROUP BY amount, including a HAVING clause

SELECT
	customer_id,
	SUM(amount)
FROM 
	payment
GROUP BY
	customer_id
HAVING
	SUM(amount) > 190
ORDER BY 
	SUM(amount) DESC

-- GROUP BY film titles actors per film, films with more than 12 actors
SELECT
	film.title,
	COUNT(DISTINCT actor.actor_id)
FROM
	actor
JOIN
	film_actor
ON 
	actor.actor_id = film_actor.actor_id
JOIN
	film
ON
	film_actor.film_id = film.film_id
GROUP BY
	film.title
HAVING
	COUNT(DISTINCT actor.actor_id) > 12
ORDER BY
	COUNT(DISTINCT actor.actor_id) DESC

