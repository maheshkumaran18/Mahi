create table empl1(
id int,
name varchar(90),
dept varchar(10),
salary int
);

insert into empl1 values (1, 'mahesh', 'IT', 10000),
(2, 'kumaran', 'HR', 1000),
(3, 'kunal', 'FINANCE', 9000),
(4, 'jegan', 'IT', 8000),
(5, 'santhosh', 'HR', 9000),
(6, 'raja', 'FINANCE', 11000);
------------------------------------------------------------------------------------
update empl1 set salary = 8000 where id=6;

create trigger fire on empl1 after update 
as
begin
print 'VAlues are updated succesfully' + convert(varchar,getdate())
end
drop trigger fire
------------------------------------------------------------------------------------
create trigger ins on empl1 after insert
as
begin
print 'VAlues are inserted succesfully' + convert(varchar,getdate())
end
insert into empl1 values(7,'maddy','Shipping',5000)
drop trigger ins
-----------------------------------------------------------------------------------
create trigger del on empl1 after delete
as
begin
print 'VAlues are deleted succesfully' + convert(varchar,getdate())
end

delete from empl1 where id = 7
select * from empl1
drop trigger del

------------------------------------------------------------------------------------