-- DML COMMANDS
Create Database college;
show databases;
Use college;
create table Employee(EmpID int, FirstName varchar(10),LastName varchar(10), EmpAge int, Empzone varchar(10));
desc employee;
-- single row insertion command 
insert into employee Values(10, 'Parth' , 'Deshmukh' , 21, 'East')
-- multiple row insertion command
,(20, 'Harsh', 'Damodhar' , 21, 'North' ),
(30, 'Bhushan', 'Sinkar', 21 , NULL );
-- to show the entire table
select * from employee;

--  (single value updation) 
update employee set EmpZone='North' where EmpID= 30;
update employee set EmpZone='South' where EmpID= 30;
update employee set EmpZone='Wesr' where EmpID= 30;

-- for multiple updation
update employee set EmpAge=25,EmpZone='East' where EmpID=20;
Select * from employee;
 -- delete statement 
 delete from employee where EmpID=30;
 update employee set FirstName='Parth' where EmpID=20; 
 Select * from employee;
 select EmpID, FirstName from employee;
 
 -- want to delete all row from table
 truncate employee;
 

