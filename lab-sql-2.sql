use sakila;

-- Select all the actors with the first name ‘Scarlett"
select * from sakila.actor
where first_name='Scarlett';

-- Select all the actors with the last name ‘Johansson’
select * from sakila.actor
where last_name='Johansson';

-- How many films (movies) are available for rent?
select count(inventory_id) from inventory;

-- How many films have been rented?
select count(rental_id) from rental;

-- What is the shortest and longest rental period?
-- shortest
select rental_duration as shortest_rental
from film
order by rental_duration asc
limit 1;

select min(rental_duration)
from film;

-- longest
select rental_duration 
from film
order by rental_duration desc
limit 1;

select max(rental_duration)
from film;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration

select min(length) as 'min_duration'
from film;

select max(length) as 'max_duration'
from film;


-- What's the average movie duration?
select avg(length)
from film;

-- What's the average movie duration expressed in format (hours, minutes)?
select avg(length)
from film;

select sec_to_time(AVG(film.length)*60) AS avg_duration
FROM film;
-- esta função lê qualquer número como segundos e o transforma em formato de tempo, então, como nosso dado era em minutos, 
#precisamos primeiro multiplicar por 60, pra transformar em segundos

select CONCAT(FLOOR(AVG(film.length)/60) AS avg_duration
from film;
-- aqui, a função floor() arredonda a divisão pra baixo 'h'

select ROUND(AVG(film.length)%60) as avg_duration
from film; -- e aqui, os minutos restantes podem ser arredondados pra qualquer lado

-- acho que ta faltando algo; ainda vou pesquisar melhor essas funções;

-- How many movies longer than 3 hours? 
select count(length)
from film
where length > '180';


-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(lower(first_name),' ',last_name, '-', email)
from customer;

-- What's the length of the longest film title?
select max(length(title))
from film;

