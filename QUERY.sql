--create database Sales;

--use sales;

create table sales(OrderID int,
CustomerName varchar(30), 
CustomerAddress varchar(30), 
ProductName varchar(30), 
ProductPrice float, OrderDate date);


insert into sales(OrderID, CustomerName, CustomerAddress, ProductName, ProductPrice, OrderDate)
values(1,'sabin','ktm','laptop',1000,'2025-01-01'),
		(2,'sabin','ktm','Mouse',20,'2025-01-01'),
		(3,'sandhya','pkr','laptop',1000,'2025-01-02'),
		(4,'sabin','ktm','Keyboard',30,'2025-01-03');


insert into sales valueS(NULL,'Rita','brt',NULL,NULL,NULL);

update sales set CustomerAddress='bkt' where OrderID=1;

delete from sales where CustomerName='sandhya';

truncate table sales;

drop table sales;

select *from sales;