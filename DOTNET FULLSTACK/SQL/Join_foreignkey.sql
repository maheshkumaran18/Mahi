create table emp(
emp_id int constraint pk_e primary key identity(1,1),
e_name varchar(20) constraint uq_e unique,
salary bigint constraint nn_e not null,
branch_id int,
constraint fk_e foreign key(branch_id) references branch(branch_id)
);
insert into emp values(	'James',20000,1),('David',39950,2),('Michael', 40000,3),('Johnny',25000,4),('Tommy',24000,2),('Billy',22000,1),('Butcher',20000,null);
select * from emp
drop table emp

create table branch(
branch_id int primary key identity(1,1),
branch_name varchar(20) not null,
branch_addr varchar(50)
);
insert into branch  values('Madurai','123,xkfdnkgn,nddn,Madurai'),('Chennai','385,nsdsdu,jdcbj,Chennai'),('Tutucorin','276,jvu,udchdu,Tutucorin'),
('Trichy','387,huuudsdd,auxcub,Trichy'),('Coimbatore','394,sjbfbf,sjnsvh,Coimbatore');
select * from branch
truncate table branch
drop table branch

select * from emp join branch on emp.branch_id=branch.branch_id

select emp.emp_id,emp.e_name,emp.salary,branch.branch_id,branch.branch_name,branch.branch_addr from emp 
inner join branch on emp.branch_id=branch.branch_id ---no extra rows--

select emp.emp_id,emp.e_name,emp.salary,branch.branch_id,branch.branch_name,branch.branch_addr from emp 
left outer join branch on emp.branch_id=branch.branch_id ---selects extra rows from left table ie.emp---

select emp.emp_id,emp.e_name,emp.salary,branch.branch_id,branch.branch_name,branch.branch_addr from emp 
right outer join branch on emp.branch_id=branch.branch_id ---selects extra row from right table ie.branch---

select emp.emp_id,emp.e_name,emp.salary,branch.branch_id,branch.branch_name,branch.branch_addr from emp full 
outer join branch on emp.branch_id=branch.branch_id  ----select all extra from both table---

select emp.emp_id,emp.e_name,emp.salary,branch.branch_id,branch.branch_name,branch.branch_addr from emp 
cross join branch 

select distinct branch_name from branch




select * from branch where 
branch_id = (select branch_id from emp where e_name='james')



 




