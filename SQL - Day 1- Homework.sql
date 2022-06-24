-- SQL - Day 1- Homework

-- 1. How many actors are there with the last name ‘Wahlberg’?
select * from actor 

select first_name, last_name
from actor 
where last_name like 'Wahlberg';
-- 2, Nick and Daryl

-- 2. How many payments were made between $3.99 and $5.99?
select * from payment 

select count(amount)
from payment 
where amount > 3.99
and  amount < 5.99;
-- 3,214

-- 3. What film does the store have the most of? (search in inventory)
select * from inventory 

select film_id, count(film_id) 
from inventory 
group by film_id 
order by count(film_id) desc;
-- Film 200, has 9

-- 4. How many customers have the last name ‘William’?
select * from customer 

select count(last_name) 
from customer 
where last_name like 'William';
-- 0 customers with that last name

-- 5. What store employee (get the id) sold the most rentals?
select * from rental 

select staff_id, count(rental_id)
from rental 
group by staff_id 
order by count(rental_id) desc;
-- 1 with 8,040.. 2 had 8,004

-- 6. How many different district names are there?
select * from address 

select count(distinct district) 
from address;
-- 378

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
select * from film_actor 

select film_id, count(distinct actor_id) 
from film_actor 
group by film_id
order by count(distinct actor_id) desc;
-- Film 508 had 16 actors

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select * from customer 

select count(customer_id)
from customer 
where last_name like '%es'
and store_id = 1;
-- 13 customers

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
select * from payment 

select amount, customer_id, count(distinct amount)
from payment 
where amount between 4.99 and 5.99
and customer_id between 380 and 430
group by amount, customer_id 
order by amount;


-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select * from film 

select count(distinct rating)
from film;
-- 5 total ratings

select rating, count(title)
from film 
group by rating
order by count(title) desc;

-- PG-13  has most movies with 223















































