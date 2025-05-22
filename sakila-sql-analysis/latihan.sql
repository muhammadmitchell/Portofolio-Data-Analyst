#10 Sample queries for SAKILA Database

# 1) All films with PG-13 films with rental rate of 2.99 or lower

select * from film
where rental_rate <= 2.99
and rating = 'PG-13';

# 2) All films that have deleted scenes

select f.title, f.special_features, f.release_year
	from film f
where f.special_features like '%Deleted Scenes%'
and f.title like 'c%';

# 3) All active customers

select * from customer c
where c.active = 1;

# 4) Names of customers who rented a movie on 26th July 2005

select r.rental_id, r.customer_id, r.rental_date,
concat(c.first_name, ' ', c.last_name) as 'Full name'
	from rental r
join customer c on c.customer_id=r.customer_id
where date(r.rental_date) = '2005-07-26';

# 5) Distinct names of customers who rented a movie on 26th July 2005

select distinct r.customer_id,
concat(c.first_name, ' ', c.last_name) as 'Full name'
	from rental r
join customer c on c.customer_id=r.customer_id
where date(r.rental_date) = '2005-07-26';

# H1) How many distinct last names we have in the data?

select count(distinct c.last_name) from customer c;

# 6) How many rentals we do on each day?

select date(r.rental_date) d, count(*) from rental r
group by date(r.rental_date);

# the busiest day so far
select date(r.rental_date) d, count(*) rental_count 
	from rental r
group by date(r.rental_date)
order by rental_count desc
limit 1;

# 7) All Sci-fi films in our catalogue

select * from category;

select * from film_category;

select fc.film_id, fc.category_id, c.name, f.title, f.release_year
	from film_category fc
join category c on c.category_id = fc.category_id
join film f on f.film_id = fc.film_id
where c.name='Sci-fi';

# 8) Customers and how many movies they rented from us so far?

select r.customer_id, concat(c.first_name, ' ', c.last_name) as 'Full name', c.email, count(*) as 'Count'
	from rental r
join customer c on c.customer_id = r.customer_id
group by r.customer_id
order by count(*) desc;

# 9) Which movies should we discontinue from our catalogue (less than 1 lifetime rentals) Using CTEs (Common Table Expression)

with low_rentals as 
	(select inventory_id, count(*) 
		from rental r
	group by inventory_id
	having count(*) <= 1)
select low_rentals.inventory_id, i.film_id, f.title
from low_rentals
join inventory i on i.inventory_id = low_rentals.inventory_id
join film f on f.film_id = i.film_id;

# 10) Which movies are not returned yet?

select r.rental_date ,r.inventory_id, i.film_id, r.customer_id, f.title, c.email
from rental r
join inventory i on i.inventory_id = r.inventory_id
join film f on f.film_id = i.film_id
join customer c on c.customer_id = r.customer_id
where r.return_date is null
order by f.title;

# H2) How much money and rentals we make for Store 1 by day?

select date(p.payment_date) as "date", sum(p.amount) as "amount", count(*) rentals
	from rental r
join payment p on p.rental_id = r.rental_id
join inventory i on i.inventory_id = r.inventory_id
where i.store_id=1
group by date(p.payment_date)
order by date(p.payment_date);

# What are the three top earning days so far?

select date(p.payment_date) as "date", sum(p.amount) as "amount", count(*) as "count"
	from rental r
join payment p on p.rental_id = r.rental_id
join inventory i on i.inventory_id = r.inventory_id
where i.store_id = 1
group by date(p.payment_date)
order by sum(p.amount) desc
limit 3;


