use sakila;

# Select all the actors with the first name ‘Scarlett’.

select
	*
from sakila.ACTOR 
where FIRST_NAME = 'Scarlett'
;

# Select all the actors with the last name ‘Johansson’
select
	*
from sakila.ACTOR 
where LAST_NAME = 'Johansson'
;

# How many films (movies) are available for rent?
select
count(*)
from sakila.INVENTORY;

#How many films have been rented?
select
count(*)
from sakila.RENTAL;

#What is the shortest and longest rental period?

select
	count(*),
min(RENTAL_DURATION) as min_amount,
max(RENTAL_DURATION) as max_amount 
from sakila.FILM;

# What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select
	count(*),
min(LENGTH) as min_amount,
max(LENGTH) as max_amount 
from sakila.FILM;

#What's the average movie duration?
select
	count(*),
avg(LENGTH) as avg_amount
from sakila.FILM;

# What's the average movie duration expressed in format (hours, minutes)?

select
    concat(
    floor(avg(length)/60), ' hora ',
    round(avg(length)%60), ' minutos') as 'avg_duration'
from sakila.FILM;

# How many movies longer than 3 hours?

select
	count(*)
from sakila.FILM 
where LENGTH > 180  
;

# Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select 
concat(upper(left(first_name,1)),lower(substring(first_name,2)),' ', upper(last_name),' - ',lower(email)) as name_and_email from customer;


# What's the length of the longest film title?
select 
max(LENGTH(title)) as longest_title_length
FROM sakila.film;
