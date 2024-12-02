select * from employees
select count(job_id) from employees group by job_id
select max(salary) as max from employees where job_id='it_prog' ---1---
select sum(salary) as tot from employees where department_id=50---2----
select count(employee_id) from employees where department_id=100 and salary>5000---3---
select count(employee_id) from employees where first_name like '%e%' ---4-----
select count(employee_id) from employees where (hire_date between '1995-01-01' and '2000-12-31') and (department_id in(90,100)) ----5---
select count(employee_id) as num from employees group by department_id ---6---
select count(employee_id) as num, department_id from employees group by department_id----7---
select max(salary) from employees group by job_id----8----
select min(salary) from employees group by department_id----9---
select avg(salary) from employees group by department_id ----10---
select sum(salary) from employees group by job_id ----11-----
select count(first_name), first_name from employees group by first_name having count(first_name)>1 ----12----
select count(employee_id) from employees group by job_id having job_id!='FI_ACCOUNT' -----13---
select department_id,job_id,first_name from employees where salary>5000 group by department_id,job_id,first_name -----14----
select count(job_id) from employees group by job_id having count(job_id)>2 -----15----
select count(first_name), first_name from employees group by first_name having count(first_name)>1 -----16---
select count(employee_id) from employees group by department_id having count(department_id)>2 ----17---
select count(first_name), first_name from employees group by first_name having count(first_name)=2 ----18---
select count(salary), salary from employees group by salary having count(salary)>1 -----19---
select count(employee_id) from employees where (first_name like'%a%' or first_name like '%s%')  group by department_id having count(employee_id)>1 -----20---
select sum(salary),job_id from employees  group by job_id having sum(salary) > 25000 ----21---
select sum(salary),job_id from employees  where salary > 5000 group by job_id  ------22----


select count(employee_id),department_id from employees  where job_id!='AD_PRES' group by department_id --23---
select sum(salary), job_id from employees group by job_id ----24---
select avg(salary),department_id from employees where department_id != 50 group by department_id,department_id----25--
select count(employee_id),job_id from employees where first_name like '%a%' group by job_id  ----26---
select count(employee_id),avg(salary) from employees where salary>2000 group by department_id -----27---
select count(employee_id),max(salary),job_id from employees group by job_id -----28----
select max(salary),department_id from employees group by department_id -----29---
select count(salary),salary from employees group by salary -----30----
