SELECT country FROM country
WHERE country LIKE 'A%a' ;

SELECT country FROM country
WHERE country LIKE '%n' AND LENGTH(country) >= 6;

SELECT title FROM film
WHERE LOWER(title)
LIKE '%t%' AND LENGTH(title) >= 4;

SELECT * FROM film
WHERE title LIKE 'C%' AND length >90 AND rental_rate = 2.99;