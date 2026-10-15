-- DQL  
create database user;
show databases;
use user;

create table customer( Custid int, custname varchar(10), city varchar(10), product varchar(10), price int);
desc customer;

insert into customer values(1,'Parth','Amravati','Mobile',40000),
(2,'Rohit','Pune','Laptop',60000),
(3,'Gayatri','Amravati','Scooter',100000);

alter table customer add Primary Key(Custid);
-- to see only 3 column
select Custid,custname,city from customer;
-- to see speciifc cutomer data 
select * from customer where Custid=3;
-- have to see data of 2 customer 
select * from customer where Custid=3 or Custid= 1;

-- to clone the table 
create table CloneTable as select * from customer;
select * from CloneTable;
drop table CloneTable;

select custname,product,price from customer where price>40000;
select custname,product,price from customer where price>=40000;
select custname,product,price from customer where price<40000;
select custname,product,price from customer where price=40000;

select * from customer where city='Amravati';

/* Sorting data using Order by single column */
select * from customer order by price;
select * from customer order by price desc;

/* sorting data by multiple column*/
select * from customer order by price,city;/* first prefrence data will sort*/
select * from customer order by city desc,price asc;
