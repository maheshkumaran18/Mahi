select * from employee

select id,name,dept,salary,ROW_NUMBER()over(order by salary desc) as ad from employee

select id,name,dept,salary,rank()over(order by salary desc) as ad from employee

select id,name,dept,salary,dense_rank()over(order by salary desc) as ad from employee

select id,name,dept,salary,ntile(10)over(order by salary desc) as ad from employee

select id,name,dept,salary,lag(salary,15,4)over(order by salary desc) as ad from employee

select id,name,dept,salary,lead(salary,15,4)over(order by salary desc) as ad from employee


 