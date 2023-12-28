use lab_mysql;

select * from customers;

update customers
set email = 'ppicasso@gmail.com'
where name = 'Pablo Picasso';

update customers
set email = 'lincoln@us.gov'
where name = 'Abraham Lincoln'; 

update customers
set email = 'hello@napoleon.me'
where name = 'Napoléon Bonaparte';

-- ----------------------------------------------
-- Delete repeated row---

select * from cars;

delete from cars
where model like '%Cross Country';