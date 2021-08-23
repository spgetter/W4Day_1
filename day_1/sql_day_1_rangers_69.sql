-- Hello World SQL Query, SELECT all from the actor table -- 
SELECT *
FROM actor;

-- Query for first_name and last_name
SELECT first_name, last_name
FROM actor;

-- Query for first_name equals Nick using the where clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for first_name that is equal to Nick using the LIKE and WHERE clauses
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- Query for all the first_name that start with J using the LIKE and WHERE clauses
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'J%';

-- Query for all the first_name that start with K and have two letters after K using LIKE and WHERE clauses
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'K__';

-- Query for all the first_name that starts with 'K' and ends with 'th' 
-- using the LIKE and WHERE clauses
-- Using both the WILDCARD and UNDERSCORE
SELECT first_name, last_name, actor_id
FROM actor
WHERE first_name LIKE 'K__%th';

-- Explore data with SELECT all query (specifc to changing into a new table)
SELECT *
FROM payment;

-- Comparing operators are:
-- greater than (>)
-- less than (<)
-- greater or equal (>=)
-- less or equal (<=)
-- not equal (<>)

-- Query data that shows customers amount greater than $2.00
SELECT customer_id, amount
FROM payment
WHERE amount > 2.00;

-- Query for data that shows customers who paid an amout less than $7.99
SELECT customer_id, amount
FROM payment
WHERE amount < 7.99;

--Query for data that shows customers who paid less than or equal to $7.99
SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99;

-- Query for data that shows customers who paid greater than or equal to $2.00
-- order in ascending order
SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount ASC;

-- Query for data that shows customers who paid 
-- an amount BETWEEN $2.00 and $7.99
-- using the BETWEEN with the AND clause
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.99 AND 7.99;

-- Query for data that shows customers who oaid 
-- an amount NOT EQUAL to $0.00
-- ordered in descending order
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;

-- Query to display the COUNT of the amounts equal to $11.99
SELECT amount, COUNT(amount)
FROM payment
WHERE amount = 11.99
GROUP BY amount;

-- SQL aggregations => SUM(), AVG(), COUNT(), MIN(), MAX()

-- Query to display the sum of amounts paid that are greater than $5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the averageof amounts paid greater than $5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display COUNT of amounts paid less than $7.99
SELECT COUNT(amount)
FROM payment
WHERE amount < 7.99;

-- Query to display the count of DISTINCT amounts paid that are greaeter than $5.99
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the MIN greater than $7.99
SELECT MIN(amount) AS Min_amount_payment
FROM payment
WHERE amount > 7.99;

-- Query to display the MAX amount greater than $7.99
SELECT MAX(amount) AS max_payment
FROM payment
WHERE amount > 7.99;

-- Query to display all amounts (quick demo of GROUP BY)
SELECT amount
FROM payment
WHERE amount = 7.99;

-- Query to display all different amounts grouped together 
-- and count the amounts
SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;

-- Query to display customer IDs with the sum amount 
SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
ORDER BY total_spent DESC;

-- Query to display customer_id with summed amounts for each customer_id
-- Seperate example
SELECT customer_id, COUNT(amount) AS times_paid
FROM payment
GROUP BY customer_id
ORDER BY customer_id DESC;

-- Query to explore the data inside of the customer table
SELECT *
FROM customer;

-- SQL HAVING clause

-- Query to display customer_id that show up more than 5 times (if available)
-- Group by the customer's email address
SELECT COUNT(customer_id), email
FROM customer
GROUP BY email
HAVING COUNT(customer_id) > 0;

-- Query to display customer_id of customers at store 1
-- SELECT customer.first_name, customer.last_name, customer.email, store_id
-- FROM customer
-- GROUP BY customer.first_name, customer.last_name
-- WHERE store_id = 1;

-- Query to display customer email for customers with first_name = 'Lisa'
SELECT first_name, email
FROM customer
WHERE first_name LIKE 'John';





