-- Select all the actors with the first name ‘Scarlett’
select * from sakila.actor
where first_name = 'Scarlett';

-- Select all the actors with the last name ‘Johansson’ -- no case sensitive????
select * from sakila.actor
where last_name = 'johansson';

-- How many films (movies) are available for rent? 4581
select count(INVENTORY_ID) as n_film_available from sakila.inventory;

-- How many films have been rented? 16044
select count(rental_id) as count_of_films_rented from sakila.payment;

--  What is the shortest and longest rental period? MAX= 9 dd = 221h; MIN= 3 min
select * ,  datediff(return_date , rental_date) as date_rental_period, timediff(return_date , rental_date) as time_rental_period
from sakila.rental order by (timediff(return_date , rental_date)) desc
limit 1;

select min(rental_duration) from sakila.film;

-- What are the shortest and longest movie duration? Name the values `max_duration`= 185 min and `min_duration`= 46 min
select max(length) as max_duration from sakila.film;
select min(length) as min_duration from sakila.film;


-- What's the average movie duration?
select avg(length) as min_duration from sakila.film;

-- How many movies longer than 3 hours? 39
select count(title) as number_film_longer_3h from sakila.film
where length > 180; 

-- Get the name and email formatted. Example: Mary SMITH - *mary.smith@sakilacustomer.org*.
select * , concat(lower(first_name), " ",last_name," - *", email,"*") as concat from sakila.customer;

--  What's the length of the longest film title? 27
select max(length(title)) from sakila.film;