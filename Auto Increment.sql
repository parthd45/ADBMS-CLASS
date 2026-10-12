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