SELECT DISTINCT replacement_cost FROM film;

SELECT COUNT(DISTINCT replacement_cost) FROM film;

SELECT COUNT(title) FROM film
WHERE title LIKE 'T%' AND rating = 'G';

SELECT COUNT(country) FROM country
WHERE LENGTH(country) = 5;

SELECT city FROM city
WHERE LOWER(city)LIKE 'r&'
OR LOWER(city) LIKE '%r' ;