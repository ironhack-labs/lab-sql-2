-- Instructions

	-- 1 Select all the actors with the first name ‘Scarlett’.

	SELECT
		first_name
	FROM sakila.actor
	WHERE first_name = 'Scarlett'
    ;

	-- 2 Select all the actors with the last name ‘Johansson’.
    
	SELECT
		Last_name
	FROM sakila.actor
	WHERE last_name = 'Johansson'
    ;
    
	-- 3 How many films (movies) are available for rent?
    
    	SELECT
			count(*)
		FROM sakila.inventory;
        
	-- 4 How many films have been rented?
		select
			count(*)
		from sakila.rental;
        
	-- 5 What is the shortest and longest rental period?
    
	SELECT 
		max(rental_duration) AS max_duration,
		min(rental_duration) AS min_duration
	FROM sakila.film; 
    
	-- 6 What are the shortest and longest movie duration? Name the values max_duration and min_duration.
    
		SELECT 
			max(length) AS max_length,
			min(length) AS min_length
		FROM sakila.film; 
    
	-- 7 What's the average movie duration?

		SELECT 
			avg(length) AS avg_length
		FROM sakila.film; 
    
	-- 8 What's the average movie duration expressed in format (hours, minutes)?

		SELECT 
			avg(length)/60 AS avg_length,
            floor(avg(length)/60) as hour,
            avg(length)%60 as min,
            CONCAT(floor(avg(length)/60), ':', round(avg(length)%60)) AS avg_length_concat
		FROM sakila.film;

	-- 9 How many movies longer than 3 hours?
    
		SELECT
			count(*)
		FROM sakila.film
		WHERE length > 180;    
    
	-- 10 Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
    
		SELECT
            concat(upper(left(first_name,1)),lower(right(first_name,(length(first_name)-1))),' ',upper(last_name),' - ',email)
		FROM sakila.customer;

	-- 11 What's the length of the longest film title?
    
		SELECT
            max(length(title)) as length_title
		FROM sakila.film
	