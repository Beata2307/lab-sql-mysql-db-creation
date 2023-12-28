create database if not exists lab_mysql;
use lab_mysql;

drop table if exists cars;

create table cars (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
VIN varchar(100),
manufacturer varchar(100),
model varchar(100),
year year,
color varchar(50)
);
select * from cars;

-- -------------------------------------------------------

drop table if exists salesperson;
create table salesperson (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
staff_id varchar(10),
name varchar(100),
store varchar(50)
);
-- ------------------------------------------------------
drop table if exists customers;
create table customers (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
cust_id varchar(10),
name varchar(50),
phone varchar(50),
email varchar(100),
address varchar(100),
city varchar(50),
state varchar(50),
country varchar(50),
zipcode int
);

-- ------------------------------------------------------------
drop table if exists invoices;

create table invoices (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
invoice_number int,
date date,
car_id int,
customer_id int,
salesperson_id int,
foreign key (car_id) references cars(id),
foreign key (customer_id) references customers(id),
foreign key (salesperson_id) references salesperson(id)
);
-- -----------------------------------------------------
