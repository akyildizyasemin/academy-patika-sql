SELECT rating, COUNT(rating) FROM film
GROUP BY rating;


SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*)>50
ORDER BY replacement_cost;


SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id
ORDER BY store_id;


SELECT country_id, COUNT(city) FROM city
GROUP BY country_id
ORDER BY COUNT(city) DESC
LIMIT 1;