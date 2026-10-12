Create Database CompanyDB;
show databases;
create table employees(
EmpId int, EmpName varchar(10), Salary int, JoinDate date, Primary key(EmpId));
desc employees;
 create table departments(DeptId int, DeptName varchar(10), Primary Key(DeptId));
 desc departments;
 alter table employees add column(Email varchar(100));
desc employees;
alter table departments add column(dept_location varchar(10));
desc departments;
alter table employees add column(phone int not null);
desc employees;
alter table employees modify EmpName varchar(100);
desc employees;
alter table departments drop primary key;
desc departments;
ALTER TABLE Departments
ADD PRIMARY KEY (DeptID);
desc departments;
ALTER TABLE Employees
ADD COLUMN DeptID INT;
desc employees;
ALTER TABLE Employees
ADD CONSTRAINT fk_employees_departments
FOREIGN KEY (DeptID)
REFERENCES Departments (DeptID);
desc employees;
ALTER TABLE Employees
RENAME COLUMN EmpName TO EmployeeName;
desc employees;
ALTER TABLE employees
ADD COLUMN Age INT;
desc employees;
ALTER TABLE Employees
ADD CONSTRAINT chk_employees_age
CHECK (Age >= 0);
ALTER TABLE Employees
ADD CONSTRAINT chk_employees_salary
CHECK (Salary >= 0);
desc employees;
show create table employees;
alter table employees drop column phone;
desc employees;
alter table employees rename to Employee_Details;
alter table employee_details drop check chk_employees_age;
alter table employee_details drop check chk_employees_salary;
show create table employee_details;
ALTER TABLE employee_details
DROP FOREIGN KEY fk_employees_departments;

DROP TABLE departments;
drop database companydb;