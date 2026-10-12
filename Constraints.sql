-- NOT NULL Constraints
create database company_db;
use company_db;
show databases;
 -- INserting NOTNULL in id 
create table employee(EmpID int NOT NULL,FirstName varchar(10), LastName varchar(10), EmpAge int);

desc employee;
insert into employee values(null,'Parth','Deshmukh',20);-- will show error(because empid cannot be null)
insert into employee values(1,null, 'Deshmukh', 21);
insert into employee values(2,'Harsh', 'Damodhar', 20);


-- Unique Key
create table employee1(EmpID int Not NULL,Firstname varchar(10), LastName varchar(10), Unique(EmpID));
desc employee1;
insert into employee1 values(null, 'Parth', 'Deshmukh');-- will show error
insert into employee1 values(1, 'Parth', 'Deshmukh');
insert into employee1 values(1, 'Parth', 'Deshmukh');-- duplicate value entry error
insert into employee1 values(2, 'Parth', 'Deshmukh');
select * from employee1;
desc employee1;

-- Check Constraints
create table employee3(EmpID int Not NULL,Firstname varchar(10), LastName varchar(10), EmpAge int, Check(EmpAge>20));
insert into employee3 values(null, 'Parth', 'Deshmukh', 20);-- gives error emp id can not be null
insert into employee3 values(1, 'Parth', 'Deshmukh',21);
insert into employee3 values(1, 'Parth', 'Deshmukh', 18);-- gives error emp age not fill criteria it must be greater than 20
insert into employee3 values(2, 'Harsh', 'Damodhaar',23);

-- salaary column adding
alter table employee3 add column salaray int;
alter table employee3 drop column salaray;

-- add salary column with check constraints
alter table employee3 add column Salary int, add check(Salary>=5000);

desc employee3;
insert into employee3 values(3, 'Bhushan', 'Deshmukh',21, 7000);
insert into employee3 values(5, 'Gayatri', 'Deshmukh',21, 9000);
insert into employee3 values(4, 'Arpit', 'Deshmukh',23, 4000); -- gives error beacuse of salary constraint
show create table employee3;

-- drop the constarint of salaray column
alter table employee3 drop check employee3_chk_2;

-- check if salary column constraint is drop using inert
insert into employee3 values(6, 'Kirti', 'Deshmukh',21, 1000);
show create table employee3;

create table employee6 (EmpID int not null, FirstName varchar(10), LastName varchar(10), EmpAge int, check(EmpAge>20), primary key(EmpID));

insert into employee6 values(1, 'Parth', 'Deshmukh',21);
insert into employee6 values(1, 'Parth', 'Deshmukh',21);-- no duplicate entry beacuse of id is same 
insert into employee6 values(2, 'Ram', 'Deshmukh',21);

select * from employee6;

-- allow check constraint in multiple column in same row 
create table employee7 (EmpID int Primary key, FirstName varchar(10), LastName varchar(10), EmpAge int, Salary int);
insert into employee7 values(1, 'Parth', 'Deshmukh',21,5000);
alter table employee7 drop check chk_EmpAge_salary;
alter table employee7 add constraint chk_EmpAge_salary
check(EmpAge>20 AND salary >= 5000);
alter table employee7 drop check chk_EmpAge_salary;




-- Default Constraint: set a deafult value for a column if no other value specified

create table employee4(EmpID int Not null , FirstName varchar(10), LastName varchar(10), EmpDept varchar(10) Default 'Operations');
insert into employee4 values(1, 'A', 'B','MCA');
Desc employee4;
insert into employee4(EmpID,FirstName,LastName)
values(1, 'Ravi', 'Deshmukh');
insert into employee4(EmpID,FirstName,LastName)
values(2, 'Ravi', 'Giri');

select * from employee4;
insert into employee4 values(3, 'Parth', 'Rauth');-- this query wwill not excuted

-- INDEX IN MY SQL 
create index demoindex on employee4(FirstName);
show indexes from employee4;

create index demoindex2 on employee4(FirstName,LastName);
show indexes from employee4;


-- for droping index
drop index demoindex on employee4;
drop index demoindex2 on employee4;


-- Auto Increment 
create table persons(
Personid int not null AUTO_INCREMENT,
LastName varchar(10),
FirstName varchar(10),
Age int,
Primary Key(Personid)
);

Desc persons;

 insert into persons(FirstName, LastName, Age)
 values('Parth', 'Deshmukh', 21),('Harsh','Damodhar',22);
  
  select * from persons;
