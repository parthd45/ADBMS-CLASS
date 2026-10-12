-- Start ne transaction.
/* Begin;
-- or
Start Transaction -- to execute multiple statements as a single transaction,
wwe must explicititly start the  transaxtion>
Commit:- Save all changes made during the transaction>
Rollback:- Undoes all chnages made durinng the transation
Savepoint:- Sets a savepount within a transaction to roll back later
Rollback to savepoint:- Rolls back to a specific savepoint without affectinng earlier chnages.*/
create database TCL;
use TCL;

create table orders(
order_id int primary key,
customer_name varchar(100),
status varchar(50));

desc orders;

-- start transaction
set autocommit=0;/* in my sql auto commit mode is enabled
by defult which means whenever we excute any sql statement
is automaticallly commited*/
/* s in such cases succceded transaction are automatically commited.
to disable the auto commit mode we are using this
also we can not disable the auto commit mode  od ddl commands.alterIn many DBMS it is diable by deafult*/
-- start transaction

BEGIN;
insert into orders values(101, 'Parth', 'Pending');
insert into orders values(102, 'HD', 'Pending');
Update orders set customer_name='Raj' where order_id=102; 

commit;
Update orders set customer_name='PD' where order_id=102;
Rollback;
select * from orders;


