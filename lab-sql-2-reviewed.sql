
use sakila;

#Select all the actors with the first name ‘Scarlett’.
#Select all the actors with the last name ‘Johansson’.

select * from actor;
select * from actor where (first_name = "Scarlett");
select * from actor where (last_name = "Johansson");

#3 How many films (movies) are available for rent?
#4 How many films have been rented?
##What is the shortest and longest rental period?

select * from rental;
select max(datediff(return_date, rental_date)) from rental;
select min(datediff(return_date, rental_date)) from rental;

#What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select * from film;
select min(length) as min_duration from film limit 1;
select max(length) as max_duration from film limit 1;

#What's the average movie duration?
select avg(length) from film;

#What's the average movie duration expressed in format (hours, minutes)? !!!!!!!
select *, convert(length, time) as movie_duration from film;
select SEC_TO_TIME(avg(length))/60 as film_duration from film;

#How many movies longer than 3 hours?
select * from film;
select count(*) from film where length > 180;

#Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org. !!!!!!!!
select * from customer;
select (concat(lower(first_name),".", lower(last_name), "@sakilacustomer.org" )) as customer_email from customer ;


#What's the length of the longest film title?
select MAX(length(title)) as max_len from film;

