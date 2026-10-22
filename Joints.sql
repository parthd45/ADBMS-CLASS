/* Basic Joints*/
create database basicjoin;
use basicjoin;
create table employee(
employee_id int primary key,
ename varchar(10));
desc employee;

insert into employee values(101,'Parth'),
(102,'Raghu'),
(103,'Harsh'),
(104,'Arpit');

select * from employee;

create table project(
project_id int primary key,
pname varchar(50),
employee_id int,
foreign key(employee_id)
references employee(employee_id));
