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

insert into project values(1,'Project A',101),
(2,'Project B',102),
(3,'Project C',103),
(4,'Project D',104);
select * from project;

insert into employee values(105,'Sanjay'),(106,'Akshay');


/* Inner Join :- only matching data will show */
select * from employee
join project
on employee.employee_id=project.employee_id;

/* fetch the employee name and the project name they belong to */
select e.ename,p.pname from employee e
inner join project p
on e.employee_id=p.employee_id;

/* right join :- show only matching data of right side table*/
select e.ename,p.pname from employee e
right join project p
on e.employee_id=p.employee_id;

select e.ename,p.pname from project p
right join employee e
on e.employee_id=p.employee_id;

/* left join :- show only matching data of left side table*/
select e.employee_id, e.ename, p.pname from employee e
left join project p
on e.employee_id=p.employee_id;

/*left join =inner join + 
any additional records in the left table*/

/*right join =inner join + 
any additional records in the right table*/

/* full outer join using union*/
/* display all the matching and non matching data from both the table */
select * from employee 
left join project
on employee.employee_id=project.employee_id
union
select * from employee
right join project
on employee.employee_id=project.employee_id;