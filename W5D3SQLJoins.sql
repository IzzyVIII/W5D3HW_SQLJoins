--1. List all customers who live in Texas (use JOINs)
select  first_name, last_name, customer_id, district
from customer
join address
on customer.address_id = address.address_id
where district = 'Texas'

--2. Get all payments above $6.99 with the Customer's Full Name
select payment.amount, customer.customer_id, first_name, last_name
from customer 
full join payment
on payment.customer_id = customer.customer_id
where payment.amount > 6.99
order by payment.amount desc;

--3. Show all customers names who have made payments over $175(use subqueries)
select *
from customer
where customer_id in (
	select customer_id
	from payment
	group by customer_id
	having sum(amount) > 175
	order by sum(amount) desc
	);

--4. List all customers that live in Nepal (use the citytable)

--5. Which staff member had the most transactions?

--6. How many movies of each rating are there?

--7.Show all customers who have made a single payment above $6.99 (Use Subqueries)

--8. How many free rentals did our stores give away?
