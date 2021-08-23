-- Homework question number 1
-- Query to find how many actors have the last name "Wahlberg"
SELECT COUNT(last_name) FROM actor WHERE last_name = 'Wahlberg';
-- answer = 2

-- Question number 2
-- Query to find how many payments were made between $3.99 and $5.99
SELECT COUNT(amount) FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99;
-- answer = 5607

-- Question number 3
-- Query to find the film the store has the most of?
SELECT film_id, store_id, COUNT(film_id) AS film_copies 
FROM inventory GROUP BY film_id, store_id 
ORDER BY film_copies DESC;
-- answer (many) at 4 copies at each store, 8 copies for both stores

-- Question number 4
-- Query to find the number of customers with the last name 'William'
-- using the WHERE and LIKE clauses
SELECT last_name, COUNT(last_name) AS william_count FROM customer
WHERE last_name LIKE 'Will%' GROUP BY last_name;
-- answer 0, but 1 each for William-like names 'Williams', 'Williamson' and 'Willis'

-- Question number 5 
-- Query for store employee_id with the most rentals sold
SELECT staff_id, COUNT(amount) AS number_sold FROM payment 
GROUP BY staff_id ORDER BY number_sold DESC;
-- answer staff_id 2, with 7304 rentals

-- EXTRA - Query for store employee_id with the highest sales amount
SELECT staff_id, SUM(amount) AS total_sold FROM payment 
GROUP BY staff_id ORDER BY total_sold DESC;
-- answer staff_id 2, with $31,059.92 in sales

-- Question number 6 
-- Query for the number of different district names [in address table]
SELECT district, COUNT(district) FROM address GROUP BY district;
-- answer 378

-- Question number 7
-- Query to find the film with the most actors in it
SELECT film_id, COUNT(actor_id) AS number_actors FROM film_actor 
GROUP BY film_id ORDER BY number_actors DESC;
-- answer film_id 508 with 15 actors

-- EXTRA - name of the movie in question 7
SELECT title FROM film WHERE film_id = 508;
-- answer 'Lambs Cincinatti'

-- Question number 8
-- Query to find the number of customers at store 1 
-- with last names ending in 'es'
SELECT COUNT(customer_id) 
FROM customer WHERE last_name LIKE '%es' AND store_id = 1;
-- answer 13

-- Question number 9
-- Query to find number of payment amounts with more than 250 rentals 
-- for customers with ids between 380 and 430
SELECT amount, COUNT(amount) FROM payment WHERE customer_id 
BETWEEN 380 and 430 GROUP BY amount HAVING COUNT(amount) > 250
ORDER BY amount;
-- answer 3 amounts, $0.99, $2.99, $4.99

-- Question number 10
-- Query to find the number of rating categories and the rating 
-- with the most films in the film table
SELECT rating, COUNT(film_id)
FROM film GROUP BY rating ORDER BY COUNT(film_id) DESC;
-- answer 5 categories, with 'PG-13' having the most films at 223

