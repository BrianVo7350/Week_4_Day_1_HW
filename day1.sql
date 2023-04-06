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


--6.)How many different distinct names are there? 591
SELECT COUNT(distinct first_name)
FROM customer;



--7.)What film has the most actors in it? (use film_actor table and get film_id) 5462?
SELECT COUNT(film_id)
FROM film_actor;


--8.)From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
--NOT CORRECT
SELECT last_name
FROM store_id 1;
WHERE last_name ending with 'es';

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


