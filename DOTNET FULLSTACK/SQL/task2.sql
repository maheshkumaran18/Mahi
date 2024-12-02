select * from employees 
select * from employees where job_id in ('IT_PROG','FI_ACCOUNT','PU_CLERK' )---1---
select * from employees where salary between 5000 and 10000  ----2----
select * from employees where department_id!=50  ------3-----
select * from employees where last_name like 'k%'   ----4----
select * from employees order by hire_date desc -----5-----
select top 5 * from employees order by salary desc -----6-----
select * from employees where salary > 10000 or hire_date<'1995-01-01' -----7-----
select * from employees where department_id in (90 ,100,110 )------8-----
select * from employees where hire_date between '1990-01-01' and  '1999-12-31' ------9-----
select * from employees where job_id!='SA_rep' ------10-------
select * from employees where first_name like '%a%' ----11------
select top 10 * from employees order by hire_date desc -----12------
select * from employees where salary <5000 and department_id=50 --------13-----
select * from employees where hire_date between '1996-01-01' and  '2000-12-31' --------14------
select * from employees where department_id!=80 ------15------
select * from employees where email like '_g%' -----16-----
select * from employees where salary >9000 and department_id=100 -------17------
select * from employees where department_id in (20 ,30,40) -----18----
select * from employees where first_name!='David' and department_id=50 -------19-----
select * from employees where salary>3000 and hire_date between '1998-01-01' and  '1999-12-31'  ------20------
