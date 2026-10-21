/* WHERE , SELECT DISTINCT , AND , OR ,NOT , IN , NOT IN , BETWEEN , LIKE  LIMIT  , IS NULL*/
CREATE DATABASE ORGANIZATION;

USE ORGANIZATION;

create table employee (Emp_id int not null primary key, First_name varchar(15), Last_name varchar (15) , Gender char  ,role varchar(15) , Dept varchar (15) , Manager_id varchar(10));

insert into employee values(1 , 'Harsh' , 'Allen'  , 'M' , 'Team leader' , 'Retail' , 'M11'),
(2 , 'Kim' , 'hem'  , 'S' , 'Member' , 'Retail' , 'M12'),
(3 , 'Mahesh' , 'asa'  , 'K' , 'Manager' , 'Finance' , 'M13'),
(4 , 'Anand' , 'Choudhary'  , 'B' , 'President' , 'HR' , 'M14'),
(5 , 'Ram' , 'Kishor'  , 'D' , 'President' , 'HR' , 'M15')
;

desc employee;
/* selet distinct values*/
/* the distinct clause in the SELECT statement is used to eliminate the duplicate data from a table*/
select distinct Dept from employee order by Dept;
select distinct role from employee order by role;
select distinct Dept , role from employee order by role;

/* AND operator : The AND operator is a logical operate that combines two or more boolena expression and returns 1 ,0 , NULL. The ANd operator is used for filtiring the data with the WHERE clause*/
select * from employee where role= 'president' and dept='HR';
select * from employee where role= 'president' and dept='Retail';

/*OR operator : The OR operator is a logical operator that combines two boolean explression and return 1 (true) if either of the expression is true.
The OR operator is used for filtering data with the wheerer clause*/
select * from employee where role= 'Manager' or role= 'Team leader'; 
select * from employee where role= 'Manager' or role= 'HR'; 

/* In operator : The IN operator is used to determine  if a value match any other */

select * from employee where role in ('President' , 'Manager');
select * from employee where role in ('TM' , 'CEO');

/* NOT IN Operator : The not in operator is formed by cominbing the NOT and IN operators.
The NOT IN operator  , in constraints to the IN operator,*/
select *from employee where role not in ('President ' , 'Manager');

/* Between Operator: The BETWEEN Operator is a logical oprator that determines whether a value belongs in a range . 
The BETWEEN operator return NULL is the value  ,low , high is NULL*/

alter table employee add column Exprience int;

update employee set Exprience  = 8 where Emp_id=1;
update employee set Exprience  = 5 where Emp_id=2;
update employee set Exprience  = 10 where Emp_id=3;
update employee set Exprience  = 8 where Emp_id=4;
update employee set Exprience  = 15 where Emp_id=5;
desc employee;

select * from employee where Exprience between 1 and 4;-- BETWEEN OPERATOR 
select * from employee where Exprience = 5 or Exprience =10;

/* LIKE Operator : The LIKE operator is a logical operator thet determines whether or not a string contains a specified pattern */
select * from employee where last_name like 'a%';

select * from employee where last_name like 'p%';

/* LIMIT Operator : The LIMIT cluase in the select statement is used to limit the number of rows returned*/
 select * from employee ;
 select * from employee order by exprience limit 4;
 
 /* Is Null : The is null operator determines whether or not a vlaue is null .
 The expression return 1 (true) if the value is null 
 */
 insert into employee values(7 , 'Asha ' , 'Joshi' , 'F' , 'President' , 'HR' , ' ' , null),
 (8 , 'Josh' , 'Anne' , 'M' , 'Manager' , ' ' , ' ' , null),
 (9 , 'Nisha' , 'Kim' , 'F' , 'Retail' , 'HR' , ' ' , null)
 ;
 select * from employee where manager_id is null;
 select * from employee where Dept is null;
 
 /*Aggregate function/
 /*Count , Sum, Avg, Min, Max*/
 select count(*) from employee;
 select count(Emp_id) from employee where dept='Finance';/*Count*/
 select count(Emp_id) from employee where role='Retail';/*Count*/
 select Min(Exprience) from employee;/*Min*/
 select Max(Exprience) from employee ;/*Max*/
 select Avg(Exprience)as emp_exr from employee ;/*Sum*/
 
 
 /*Group By Clause:- group by cluase a set of rows into subgroups depennding onclummn or expression values.
 The group by clause is used with aggreget function such as sum,avg,max,min, and count*/
 
 -- Find the Dept wise employee count
 select Dept,count(*)as employee_count
 from employee group by Dept;
 
 -- find role count
 select role,count(*)as employee_count
 from employee group by role;
 
 -- find gender count
 select Gender,count(*)as employee_count
 from employee group by Gender;
 
 
 /* Having Clause:- each group produced by the group by clause is 
 evaluted by the having clause, and if the result is true , the row is included in the result set*/
 /* the having clause was added to sql beacuse the where keyword cannnot be used with aggregate fuction*/
 
 select * from employee;
 select Dept,sum(Exprience)as total_experience
 from employee group by Dept
 having total_experience>=10 and total_experience<=20;
 
 select role,sum(Exprience)as total_experience
 from employee group by role
 having total_experience>=10 and total_experience<=20;