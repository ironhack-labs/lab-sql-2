# 1 Select all the actors with the first name ‘Scarlett’.
select *
from sakila.actor
where first_name = 'Scarlett';

# 2 Select all the actors with the last name ‘Johansson’.
select *
from sakila.actor
where last_name = 'Johansson';


# 3 How many films (movies) are available for rent?
select count(distinct film_id)
from sakila.inventory
;

# 4 How many films have been rented?
select count(rental_id)
from sakila.rental
;

# 5 What is the shortest and longest rental period?
select max(rental_duration) as max_rental_duration , min(rental_duration) as min_rental_duration
from sakila.film
;


# 6 What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) as max_duration , min(length) as min_duration
from sakila.film 
;
# 7 What's the average movie duration?
select round(avg(length)) as avg_duration 
from sakila.film 
;

# 8 What's the average movie duration expressed in format (hours, minutes)?
select round(avg(length)) DIV 60 AS hrs, round(avg(length))  % 60 as min
from sakila.film 
;
# 9 How many movies longer than 3 hours?
select count(film_id) as Movies_longer_than_3H
from sakila.film 
where (length > 180)
;

# 10 Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(first_name, " ",last_name," - ", lower(email)) as Name_email
from sakila.customer 
;
# 11 What's the length of the longest film title?
select max(length(title)) as longest_film_title
from sakila.film;