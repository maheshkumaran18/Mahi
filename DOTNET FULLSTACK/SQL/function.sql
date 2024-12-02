create function dbo.mah(@a int, @b int)
returns int
as
begin
return @a + @b
end;
select dbo.mah(100,200) as result
-------------------------------------------------------------------------------------------------------
select * from employee
create function dbo.top_val(@dep varchar(50))
returns table 
as
return(select top 1 * from employee where dept=@dep order by salary desc)

select * from dbo.top_val('Hr')
select * from dbo.top_val('IT')
select * from dbo.top_val('marketing')


-----------------------------------finding nth value--------------------------------------------------------------------
select top 1 * from (select top 10 * from employee order by salary desc) as d order by salary asc; --10th value----
create function dbo.nth_val(@val int)
returns table
as
return (select top 1 * from(select top (@val) * from employee order by salary desc) as v order by salary asc)
select * from dbo.nth_val(5)

-------------------------------- employees having salary higher than the given emp----------------------------------------
create function dbo.task1(@n varchar(50))
returns table 
as
return(
select * from employee where salary > (select salary from employee where name=@n) )
select * from dbo.task1('John doe')

--select salary from employee where name='john doe'
--select * from employee where salary > (select salary from employee where name='john doe') order by salary asc

----------------------------------emp having salary next to the given emp--------------------------------------------------
create function dbo.task2(@n varchar(50))
returns table 
as
return(
select top 1* from employee where salary > (select salary from employee where name=@n)order by salary asc  )
select * from dbo.task2('John doe')
--------------------------------------------------------------------------------------------------------------------------