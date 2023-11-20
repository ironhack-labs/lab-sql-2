select * 
from sakila.actor
where first_name = 'Scarlett';

select * 
from sakila.actor
where first_name = 'Johansson';

select distinct count(*)
from sakila.inventory;

select distinct count(*)
from sakila.rental;

select count(*),
	min(length) as min_duration,
	max(length) as max_duration
from sakila.film;

select count(*),
	avg(length) as avg_duration
from sakila.film;

select 
    concat(
    floor(avg(length)/60), ' hora(s) ',
    round(avg(length)%60), ' minutos ') as 'avg_duration'
from sakila.film;

select count(*)
from sakila.film
where length > 180;


select
concat(concat(upper((first_name)), ' ', upper(last_name)), ' - ', lower(email))
from sakila.customer;

select
max(LENGTH(title)) as longest_title
from sakila.film;








