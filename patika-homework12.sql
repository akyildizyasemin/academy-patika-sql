SELECT COUNT(length) FROM film
WHERE length > ANY
(SELECT AVG(length) FROM film);



SELECT COUNT(film) FROM film
WHERE rental_rate = ANY
(SELECT max(rental_rate) FROM film);


SELECT title ,(SELECT MIN(rental_rate) FROM film ),(SELECT MIN(replacement_cost) FROM film )FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film)



SELECT c.customer_id, c.first_name, c.last_name, subquery.transaction_count
FROM (
    SELECT customer_id, COUNT(*) AS transaction_count
    FROM payment
    GROUP BY customer_id
) AS subquery
INNER JOIN customer c ON c.customer_id = subquery.customer_id
WHERE subquery.transaction_count = (
    SELECT MAX(transaction_count)
    FROM (
        SELECT COUNT(*) AS transaction_count
        FROM payment
        GROUP BY customer_id
    ) AS subquery2
)
ORDER BY c.customer_id;



