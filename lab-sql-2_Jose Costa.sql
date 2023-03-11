use sakila;

select * from actor where first_name="Scarlett";

select * from actor where last_name="Johansson";

select * from rental;

select count(*) from rental;

select count(return_date) from rental;

select (count(*)-count(return_date)) as rented from rental;

select max(rental_duration) as max, min(rental_duration) as min from film;

select max(length) as max_duration, min(length) as min_duration from film;

select avg(length) from film;

select TIME_FORMAT(SEC_TO_TIME(avg(length)*60), '%H:%i') AS time_string from film;

select count(*) from film where length>180;

select concat(upper(left(lower(first_name),1)),lower(right(first_name,length(first_name)-1)),
" ",last_name," - ",lower(email)) as contacts from customer;

select max(length(title)) from film;

select title from film where length(title) = (select max(length(title)) from film);
