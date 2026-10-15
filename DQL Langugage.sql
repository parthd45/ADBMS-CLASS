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

/* single-row function*/
/* Case Conversion Function */

select upper(custname), lower(product) from customer where Custid<3;/* uppercase & lower case function*/
select upper(custname), lower(product) from customer;/* to apply all record*/

alter table customer add column lastname varchar(10);
update customer set lastname='Deshmukh' where Custid=1;
update customer set lastname='Sharma' where Custid=2;
update customer set lastname='Deshmukh' where Custid=3;

/* concat two column*/
select concat(custname,' ',lastname) as FullName from customer;/* save in buffer memory */
-- to make it permanent change 

-- Use of substr and instr functions
select substr(custname,1,3)from customer;
select substr(custname,1,0)from customer;
select substr(custname,0,1)from customer;
select substr(custname,1,1)from customer;
/* intstring query*/

select instr(custname,'a') as position from customer;/* INSRT to see position of letter in that row*/

insert into customer values(4,'Gayatri','Mumbai','Tablet',20000,'Pathak');

select substr(custname,1,2) as SUBSTR,
instr(custname,'t') as INSTR from customer; /* both substr and instr in ones*/



