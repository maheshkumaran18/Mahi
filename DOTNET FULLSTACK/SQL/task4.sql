select * from employees
select * from employee
select * from departments
select * from locations
select first_name,last_name, hire_date from employees where hire_date > (select hire_date from employees where first_name='adam')----1-----
select * from employees where job_id = (select job_id from employees where first_name='valli')---2----
select first_name,last_name, salary,department_id from employees where salary > 5000 and department_id = (select department_id from employees where first_name='anthony') ----3----
select * from employees where salary>5000 and job_id=(select job_id from employees where first_name='valli') ---4----
select * from employees where (salary > (select salary from employees where first_name='valli')) and (salary < (select salary from employees where first_name='neena') )-----5-----
select first_name,last_name, hire_date from employees where hire_date > (select hire_date from employees where first_name='adam') and first_name like '%s' ----6---
select * from employees where (department_id = (select department_id from employees where first_name='donald')) and (salary >(select salary from employees where first_name='shanta')) and (job_id=(select job_id from employees where first_name='payam')) and (hire_date> (select hire_date from employees where first_name='matthew'))-----7------
select count(employee_id) from employees where (salary > (select salary from employees where first_name='janette')) and (salary < (select salary from employees where first_name='neena') )------8------
select department_id from employees where first_name='lex'-----9-----
select department_name from departments where department_id=(select department_id from employees where first_name='lex') -----10-----

select  count(employee_id) from employees where department_id=(select department_id from departments where department_name='shipping')---13---
select  max(salary) from employees where department_id=(select department_id from departments where department_name='shipping')---14---
select top 5 * from employees order by salary*12 asc ----15----

begin tran
alter table employees add location_id bigint 
insert into employees(location_id) values (( location_id from locations))
rollback tran
