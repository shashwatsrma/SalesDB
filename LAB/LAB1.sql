CREATE DATABASE sec_bct_2079;
USE sec_bct_2079;


create table customer(
customer_id int not null primary key,
first_name varchar(30) not null,
last_name varchar(30),
phone varchar(15) unique,
city varchar(30),
country varchar(30) default 'NEPAL');

select * from customer
