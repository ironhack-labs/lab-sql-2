select * from sakila.actor where first_name = 'Scarlett';

select * from sakila.actor where last_name = 'Johansson';

select count(*) from sakila.rental WHERE rental_id = true;

select count(*) from sakila.rental;

select count(rental_id) from sakila.rental;

select
	count(*),
    min(rental_duration) as min_duration,
	max(rental_duration) as max_duration
from sakila.film;

select
	count(*),
    min(length) as min_duration,
	max(length) as max_duration
from sakila.film;

select
	avg(length) as avg_length
from sakila.film;

select
            avg(length)/60 AS avg_length,
            floor(avg(length)/60) as hour,
            avg(length)%60 as min,
            CONCAT(floor(avg(length)/60), ':', round(avg(length)%60)) AS avg_length_concat
from 		sakila.film;

select count(*) from sakila.film where length > 180;

SELECT
	concat(upper(left(first_name, 1)), lower(substring(first_name, 2)), ' ', upper(last_name), ' - ', lower(email)) as formatted_name_email
FROM sakila.customer;

select max(length(title)) as longest_title_length
from sakila.film;




