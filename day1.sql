--1.)How many actors with the last name "Walberg"  2 last names 
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';


--2.)How many payments were made between 3.99 and 5.99? 0 between 3.99 and 5.99
SELECT customer_id, amount
FROM payment
WHERE amount > 3.99 AND amount < 5.99;


--3.)What film does the store have the most of? 
SELECT film_id
FROM inventory;

--4.)How many customers have the last name william? 0?
SELECT last_name
FROM customer
WHERE last_name = 'William';

--5.)What store employee (get the id) sold the most rentals?
SELECT MAX(rental_id)
FROM staff

--6.)How many different distinct names are there? got the list of names but not the number
SELECT distinct first_name
FROM customer
ORDER BY first_name;

--7.)What film has the most actors in it? (use film_actor table and get film_id) 
SELECT film_id
FROM film_actor;


--8.)From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT store_id 
FROM customer

--9.)How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT amount, rental_id
FROM payment
WHERE amount HAVING rental_id > 250;


--10.)Within the film table, how many rating categories are there? And what rating has the most movies totals
SELECT COUNT(rating)
FROM film
