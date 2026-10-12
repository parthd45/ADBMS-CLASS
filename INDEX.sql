-- INDEX IN MY SQL 
create index demoindex on employee4(FirstName);
show indexes from employee4;

create index demoindex2 on employee4(FirstName,LastName);
show indexes from employee4;


-- for droping index
drop index demoindex on employee4;
drop index demoindex2 on employee4;