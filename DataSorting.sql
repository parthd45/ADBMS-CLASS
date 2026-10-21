/* Date % time function*/
select now ();

select now() as current_datetime;

alter table customer add column date date;
update customer set date='2024-10-27' where Custid=1;
update customer set date='2024-8-1' where Custid=2;
update customer set date='2024-11-2' where Custid=3;

-- alter table customer drop column date;

select * from customer;