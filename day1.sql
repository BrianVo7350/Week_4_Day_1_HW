--1.)How many actors with the last name "Walberg"  2 last names 
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';


--2.)How many payments were made between 3.99 and 5.99? 0 between 3.99 and 5.99
SELECT customer_id, amount
FROM payment
WHERE amount > 3.99 AND amount < 5.99;


--3.)What film does the store have the most of? 8 at 849
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;


--4.)How many customers have the last name william? 0?
SELECT last_name
FROM customer
WHERE last_name = 'William';

--5.)What store employee (get the id) sold the most rentals? 1 at 8040
SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(rental_id) DESC;


--6.)How many different district names are there? 378
SELECT COUNT(DISTINCT district)
FROM address;



--7.)What film has the most actors in it? (use film_actor table and get film_id) film 508 HAS 15 actors
--LAMBS C
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

SELECT film_id, title
FROM film
WHERE film_id = 508;


--8.)From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 13 last names in store 1
SELECT COUNT(last_name), store_id
FROM customer
WHERE last_name LIKE  '_%es' AND store_id = 1
GROUP BY store_id;

--9.)How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
-- 3 customers 
SELECT distinct amount, COUNT(customer_id)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount 
HAVING COUNT(customer_id) > 250;


--10.)Within the film table, how many rating categories are there? And what rating has the most movies totals
-- 5 catergories PG-13
SELECT COUNT(film_id), rating
FROM film
GROUP BY rating
ORDER BY rating DESC;


