create procedure SP_Viewemp  ----sp -> storage procedure----
as 
begin
select * from employee
end;
exec SP_Viewemp
select * from sys.procedures

-----function must have return type, we cant use ddl, dml other than dql but procedure can do ddl, dml....----

create procedure SP_mah
as
begin
create table undo(
id int
)
end
exec SP_mah
--------------------create table -------------------------------------------------
create procedure SP_tab 
as
begin
create table empl(
id int,
name varchar(90),
dept varchar(10),
salary int
);
end;
exec SP_tab
drop procedure SP_tab
----------------------------insert table------------------------------------------------------------
create procedure SP_insert @id int, @name varchar(90), @dept varchar(10),@salary int
as begin
insert into empl values (@id, @name, @dept, @salary)
end
exec SP_insert @id=1,@name='mahesh', @dept='HR',@salary =10000
exec SP_insert @id=2,@name='kunal', @dept='IT',@salary =9000
exec SP_insert @id=3,@name='santhosh', @dept='FINANCE',@salary =1000
exec SP_insert @id=4,@name='jegan', @dept='HR',@salary =10000
exec SP_insert @id=5,@name='raja', @dept='IT',@salary =10000

select * from empl
drop procedure SP_insert

----------------------------drop---------------------------------------------------------
create procedure SP_drop
as begin
drop table empl
end
exec SP_drop
drop procedure SP_drop
----------------------------truncate ------------------------------------------
create procedure SP_truncate
as begin
truncate table empl
end

exec SP_truncate
---------------------------update---------------------------------------------------
create procedure SP_update @sal int, @id int
as begin
update empl set salary =@sal where id = @id
end
exec SP_update @sal=5000, @id=5

drop procedure SP_update
----------------------------alter add-----------------------------------------
begin tran _alter
create procedure SP_alter
as begin
alter table empl add e_id int
end
exec SP_alter
rollback
select * from empl
---------------------alter drop-------------------------------------
create procedure SP_alter1
as begin
alter table empl drop column e_id
end
exec SP_alter1
------------------------------------delete----------------------------
create procedure SP_delete @id int
as begin
delete from empl where id =@id
end
exec SP_delete @id=4
drop procedure SP_delete

-------------------------------------------------
insert into empl values(4,'Jegan','HR',15000) 
delete empl where e_id=2 or e_id=1
---------------------------------------------------------