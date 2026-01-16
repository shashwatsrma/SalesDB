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


--drop table customer;

create table orders(
order_id int primary key,
quantity int,
order_status varchar(30),
total_amount decimal(10,2) check (total_amount>0),
OrderDate date,
CustID int,
foreign key(CustID) references customer (customer_id)
);
select * from orders

--drop table orders;


create table products(ProductID int ,
Name varchar(30), Description varchar(30), Price float
);


select * from products


create table Orders_Product(OPID int Primary Key, OrdID int , ProdID int);


select * from Orders_Product


alter table customer add email varchar(50) unique;

select *from customer;


alter table products alter column ProductID int not null;
alter table products add primary key(ProductID);

alter table products alter column Name varchar(50) not null;


alter table orders add constraint chk_quantity check (quantity>0);

alter table products add constraint chk_price check(price>0);


alter table Orders_Product add foreign key(OrdID) references orders (order_id);


alter table Orders_Product add constraint fk_PROD
foreign key(ProdID) references products (ProductID);

