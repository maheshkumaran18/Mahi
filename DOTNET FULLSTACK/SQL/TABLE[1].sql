use mah_30
create table employee
(
id int constraint PK_id primary key,
name varchar(90) constraint nn_n not null,
dept varchar(10),
salary int
)


INSERT INTO employee (id, name, dept, salary) VALUES
(1, 'John Doe', 'IT', 60000),
(2, 'Jane Smith', 'HR', 55000),
(3, 'Alex Johnson', 'Marketing', 62000),
(4, 'Sarah Williams', 'IT', 58000),
(5, 'David Garcia', 'Operations', 63000),
(6, 'Emma Wilson', 'HR', 56000),
(7, 'James Brown', 'Marketing', 61000),
(8, 'William Rodriguez', 'Marketing', 59000),
(9, 'Ava Lopez', 'IT', 65000),
(10, 'Ethan Hernandez', 'Operations', 62000),
(11, 'Mia Gonzalez', 'HR', 57000),
(12, 'Alexander Perez', 'IT', 61000),
(13, 'Sofia Carter', 'Finance', 60000),
(14, 'Michael Scott', 'Operations', 64000),
(15, 'Liam Hall', 'HR', 58000),
(16, 'Amelia Murphy', 'Marketing', 63000),
(17, 'Henry Baker', 'IT', 59000),
(18, 'Charlotte Turner', 'Operations', 66000),
(19, 'Lucas Cooper', 'HR', 59000),
(20, 'Evelyn Reed', 'Marketing', 62000),
(21, 'Benjamin Bailey', 'IT', 60000),
(22, 'Harper Stewart', 'Finance', 61000),
(23, 'Oliver Cox', 'Operations', 65000),
(24, 'Chloe Flores', 'HR', 58000),
(25, 'Sebastian Ward', 'Marketing', 64000),
(26, 'Zoey Sanchez', 'IT', 60000),
(27, 'Luna Morris', 'Operations', 63000),
(28, 'Leo Rivera', 'HR', 59000),
(29, 'Layla Coleman', 'Finance', 60000),
(30, 'Xavier Ross', 'Operations', 66000),
(31, 'Avery Peterson', 'IT', 62000),
(32, 'Mason Price', 'Marketing', 65000),
(33, 'Ella Simmons', 'Operations', 67000),
(34, 'Logan Cooper', 'HR', 59000),
(35, 'Riley Reed', 'Finance', 61000),
(36, 'Levi Hayes', 'Operations', 64000),
(37, 'Nora Barnes', 'HR', 60000),
(38, 'Hudson Brooks', 'Marketing', 63000),
(39, 'Mila Ward', 'IT', 61000),
(40, 'Gabriel Long', 'Finance', 62000),
(41, 'Hannah Howard', 'Operations', 66000),
(42, 'Jack Foster', 'HR', 60000),
(43, 'Aria Gray', 'Marketing', 64000),
(44, 'Carter Coleman', 'IT', 62000),
(45, 'Eleanor Bell', 'Finance', 63000),
(46, 'Lincoln Murphy', 'Operations', 67000),
(47, 'Stella Kelly', 'HR', 61000),
(48, 'Mateo Sanders', 'Marketing', 65000),
(49, 'Aurora Rivera', 'IT', 63000),
(50, 'Grayson Ramirez', 'Finance', 64000),
(51, 'Paisley Wood', 'Operations', 68000),
(52, 'Theodore James', 'HR', 61000),
(53, 'Nova Watson', 'Marketing', 66000),
(54, 'Eliana Gonzales', 'IT', 64000),
(55, 'Beckett Stewart', 'Finance', 65000),
(56, 'Zara Morgan', 'Operations', 69000),
(57, 'Christopher Hill', 'HR', 62000),
(58, 'Lily Coleman', 'Marketing', 67000),
(59, 'Asher Henderson', 'IT', 65000),
(60, 'Emilia Richardson', 'Finance', 66000),
(61, 'Austin Carter', 'Operations', 70000),
(62, 'Madelyn Price', 'HR', 63000),
(63, 'Jordan Watson', 'Marketing', 68000),
(64, 'Angelina Sanders', 'IT', 66000),
(65, 'Adrian Turner', 'Finance', 67000),
(66, 'Allison Hayes', 'Operations', 71000),
(67, 'Gavin Brooks', 'HR', 64000),
(68, 'Bella Foster', 'Marketing', 69000),
(69, 'Nolan Gray', 'IT', 67000),
(70, 'Penelope Coleman', 'Finance', 68000),
(71, 'Dominic Henderson', 'Operations', 72000),
(72, 'Mariah James', 'HR', 65000),
(73, 'Brayden Morgan', 'Marketing', 70000),
(74, 'Lyla Watson', 'IT', 68000),
(75, 'Jace Ramirez', 'Finance', 69000),
(76, 'Reagan Richardson', 'Operations', 73000),
(77, 'Easton Hill', 'HR', 66000),
(78, 'Clara Coleman', 'Marketing', 71000),
(79, 'Leon Henderson', 'IT', 69000),
(80, 'Skylar Bell', 'Finance', 70000),
(81, 'Jeremy Sanders', 'Operations', 74000),
(82, 'Violet Stewart', 'HR', 67000),
(83, 'Parker Wood', 'Marketing', 72000),
(84, 'Delilah Gonzalez', 'IT', 70000),
(85, 'Cameron Foster', 'Finance', 71000),
(86, 'Isabelle Morgan', 'Operations', 75000),
(87, 'Kingston Hill', 'HR', 68000),
(88, 'Gianna Coleman', 'Marketing', 73000),
(89, 'Tristan Henderson', 'IT', 71000),
(90, 'Rylee Bell', 'Finance', 72000),
(91, 'Kai Richardson', 'Operations', 76000),
(92, 'Sophie Hill', 'HR', 69000),
(93, 'Maxwell Wood', 'Marketing', 74000),
(94, 'Emery Gonzalez', 'IT', 71000),
(95, 'Daniela Foster', 'Finance', 73000),
(96, 'Rhett Morgan', 'Operations', 77000),
(97, 'Hope Coleman', 'HR', 70000),
(98, 'Damian Henderson', 'Marketing', 75000),
(99, 'Willow Bell', 'IT', 72000),
(100, 'Gideon Stewart', 'Finance', 74000);
 
drop table employee



select * from employee where dept='IT' --just selects and shows doesnt update in database--
select name as Employee_name,dept as Department from employee where dept='IT'
select name as Employee_name,dept as Department,salary from employee where (dept='Finance' or dept = 'HR' or dept='IT') and salary=61000

-----------------Task------------------

select * from employee where dept!='Operations'
select id,name, dept, salary, salary+salary/10 as Updated_salary from employee
select id,name, dept, salary, salary-(salary*15/100) as detected_salary from employee
select id,name, dept, salary, salary-60000 as diff from employee
select * from employee where dept='Finance' and salary>65000
select * from employee where salary>60000 and salary<70000 and dept!='IT'
select id,name, dept, salary, salary+salary*5/100 as Updated_salary from employee
select id,name, dept, salary, salary-(salary/10) as detected_salary from employee
select id,name, dept, salary, salary+5000 as Updated_salary from employee
select * from employee where salary>=60000 and salary<65000
select * from employee where  dept='HR' or (salary>55000 and salary<65000)
select * from employee where  dept='Finance' and (salary=61000 or salary=67000)
select * from employee where  (dept='Marketing' or dept='Operations') and salary>60000

--------------------------------------
select * from employee where name like 'A%' ---% means n characters after the A---
select * from employee where name like '%n' ---- ends with n-----
select * from employee where name like 'A_e%' --- '_' means one character--- 
select * from employee where name like '%a%' ---selects name with character 'a'----
select * from employee where name like '__________' ---- '_'considers single character ,also the space in between the first name and last name-----
select top 10 * from employee --selects top 10----
select * from employee order by salary asc
select * from employee order by salary desc
select top 5 * from employee order by salary asc --- selects top 5 with low salary----
select top 5 * from employee order by salary desc ----selects 5 with high salary
------------------------------

update employee set salary=10000 where id=2;
select* from employee

begin tran 
update employee set salary=10000 
delete from employee where id=1 ----can 'use where' and deletes only row
rollback --goes to the previous point 
commit ---saves the edited process in begin tran



-----AGGREGATE FUNCTIONS-----
select count(id) from employee ---counts the id
select max(salary) from employee
select min(salary) from employee
select avg(salary) from employee
select sum(salary) from employee

select max(salary) from employee where dept in('HR','IT','Finance') ----max salary among the mentioned dept----
select avg(salary) as sal,dept from employee group by dept order by sal desc  -----avg salary in each dept-----
select avg(salary) as avg_salary,dept from employee group by dept having avg(salary)>65000 ---avg salary of dept having avg >65000---- ---cant use where after group by---
select max(salary) as high_salary,branch_id from employees group by branch_id ---max salary of each branch id---

select * from employee
begin tran
update employee set salary=10000 where id=1
save tran savepoint1
update employee set salary=17400 where id=2
save tran savepoint2
update employee set salary=20000 where id=3
save tran savepoint3
rollback tran savepoint1 ---rollback to savepoint1 // ie.undo after the process of savepoint2 ----

---------------------------------Sub Query-----------------------------------------------------------------------------
select top 1 * from employee where salary <
(select top 1 salary from employee where salary <
(select top 1 salary from employee order by salary desc)order by salary desc)order by salary desc

select * from employee where salary> (select salary from employee where name='John Doe')

create table employee_dp(
id bigint,
name varchar(50)
);
insert into employee_dp select id,name from employee ---2 columns are inserted as values of the newly created table-----
select * from employee_dp
drop table if exists employee_dp --- drops if exists----

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Create the table---
CREATE TABLE employees (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    emp_id INT,
    department VARCHAR(50),
    branch_id INT,
    location VARCHAR(100),
    salary DECIMAL(10, 2),
    role VARCHAR(50)
);


INSERT INTO employees (first_name, last_name, emp_id, department, branch_id, location, salary, role) VALUES
('John', 'Doe', 1001, 'HR', 1, 'New York', 60000.00, 'Manager'),
('Jane', 'Smith', 1002, 'Finance', 2, 'Los Angeles', 70000.00, 'Analyst'),
('Michael', 'Johnson', 1003, 'Marketing', 1, 'Chicago', 65000.00, 'Coordinator'),
('Emily', 'Brown', 1004, 'IT', 3, 'Seattle', 75000.00, 'Developer'),
('David', 'Williams', 1005, 'Sales', 2, 'Dallas', 68000.00, 'Sales Associate'),
('Sarah', 'Jones', 1006, 'Operations', 1, 'Miami', 62000.00, 'Supervisor'),
('Christopher', 'Miller', 1007, 'HR', 3, 'San Francisco', 67000.00, 'Recruiter'),
('Jessica', 'Wilson', 1008, 'Finance', 2, 'Boston', 72000.00, 'Accountant'),
('Daniel', 'Anderson', 1009, 'IT', 1, 'Washington D.C.', 80000.00, 'Systems Analyst'),
('Ashley', 'Martinez', 1010, 'Marketing', 3, 'Austin', 69000.00, 'Manager'),
('Matthew', 'Taylor', 1011, 'Sales', 2, 'Houston', 66000.00, 'Sales Representative'),
('Amanda', 'Garcia', 1012, 'Operations', 1, 'Denver', 63000.00, 'Coordinator'),
('James', 'Hernandez', 1013, 'HR', 3, 'Portland', 71000.00, 'Consultant'),
('Melissa', 'Lopez', 1014, 'Finance', 2, 'Phoenix', 74000.00, 'Financial Analyst'),
('Robert', 'Young', 1015, 'IT', 1, 'Detroit', 77000.00, 'Developer'),
('Jennifer', 'King', 1016, 'Marketing', 3, 'Atlanta', 68000.00, 'Marketing Specialist'),
('Joshua', 'Lee', 1017, 'Sales', 2, 'Las Vegas', 69000.00, 'Sales Manager'),
('Michelle', 'Scott', 1018, 'Operations', 1, 'Philadelphia', 65000.00, 'Supervisor'),
('Kevin', 'Green', 1019, 'HR', 3, 'San Diego', 69000.00, 'Recruiter'),
('Stephanie', 'Adams', 1020, 'Finance', 2, 'San Antonio', 71000.00, 'Accountant'),
('Brian', 'Baker', 1021, 'IT', 1, 'Charlotte', 78000.00, 'Systems Analyst'),
('Lauren', 'Rivera', 1022, 'Marketing', 3, 'Minneapolis', 70000.00, 'Manager'),
('Ryan', 'Mitchell', 1023, 'Sales', 2, 'Orlando', 67000.00, 'Sales Associate'),
('Kimberly', 'Carter', 1024, 'Operations', 1, 'Tampa', 64000.00, 'Coordinator'),
('Eric', 'Torres', 1025, 'HR', 3, 'St. Louis', 72000.00, 'Consultant'),
('Rebecca', 'Gray', 1026, 'Finance', 2, 'Nashville', 73000.00, 'Financial Analyst'),
('Tyler', 'James', 1027, 'IT', 1, 'Raleigh', 79000.00, 'Developer'),
('Nicole', 'Evans', 1028, 'Marketing', 3, 'Kansas City', 71000.00, 'Marketing Specialist'),
('Jason', 'Morris', 1029, 'Sales', 2, 'Salt Lake City', 70000.00, 'Sales Manager'),
('Samantha', 'Hall', 1030, 'Operations', 1, 'Indianapolis', 66000.00, 'Supervisor'),
('Adam', 'Sullivan', 1031, 'HR', 3, 'Columbus', 73000.00, 'Recruiter'),
('Heather', 'Nelson', 1032, 'Finance', 2, 'Oklahoma City', 74000.00, 'Accountant'),
('Justin', 'Walker', 1033, 'IT', 1, 'Pittsburgh', 80000.00, 'Systems Analyst'),
('Tiffany', 'Hill', 1034, 'Marketing', 3, 'Detroit', 72000.00, 'Manager'),
('Brandon', 'Wright', 1035, 'Sales', 2, 'Miami', 68000.00, 'Sales Associate'),
('Rachel', 'Ward', 1036, 'Operations', 1, 'San Francisco', 67000.00, 'Coordinator'),
('Andrew', 'Peterson', 1037, 'HR', 3, 'New York', 74000.00, 'Consultant'),
('Courtney', 'Russell', 1038, 'Finance', 2, 'Los Angeles', 75000.00, 'Financial Analyst'),
('Timothy', 'Coleman', 1039, 'IT', 1, 'Chicago', 81000.00, 'Developer'),
('Kelsey', 'Perry', 1040, 'Marketing', 3, 'Seattle', 73000.00, 'Marketing Specialist'),
('Nathan', 'Cook', 1041, 'Sales', 2, 'Dallas', 71000.00, 'Sales Manager'),
('Hannah', 'Murphy', 1042, 'Operations', 1, 'Miami', 68000.00, 'Supervisor'),
('Dylan', 'Bailey', 1043, 'HR', 3, 'San Francisco', 75000.00, 'Recruiter'),
('Cassandra', 'Long', 1044, 'Finance', 2, 'Boston', 76000.00, 'Accountant'),
('Ethan', 'Howard', 1045, 'IT', 1, 'Washington D.C.', 82000.00, 'Systems Analyst'),
('Olivia', 'Bell', 1046, 'Marketing', 3, 'Austin', 74000.00, 'Manager'),
('Jacob', 'Murphy', 1047, 'Sales', 2, 'Houston', 72000.00, 'Sales Associate'),
('Victoria', 'Foster', 1048, 'Operations', 1, 'Denver', 69000.00, 'Coordinator'),
('Benjamin', 'Reed', 1049, 'HR', 3, 'Portland', 76000.00, 'Consultant'),
('Kayla', 'Gomez', 1050, 'Finance', 2, 'Phoenix', 77000.00, 'Financial Analyst'),
('Austin', 'Perez', 1051, 'IT', 1, 'Detroit', 83000.00, 'Developer'),
('Megan', 'Harrison', 1052, 'Marketing', 3, 'Atlanta', 75000.00, 'Marketing Specialist'),
('Luke', 'Myers', 1053, 'Sales', 2, 'Las Vegas', 72000.00, 'Sales Manager'),
('Caitlin', 'Morgan', 1054, 'Operations', 1, 'Philadelphia', 70000.00, 'Supervisor'),
('Gabriel', 'Ward', 1055, 'HR', 3, 'San Diego', 77000.00, 'Recruiter'),
('Sara', 'Ferguson', 1056, 'Finance', 2, 'San Antonio', 78000.00, 'Accountant'),
('Jesse', 'Sims', 1057, 'IT', 1, 'Charlotte', 84000.00, 'Systems Analyst'),
('Lindsay', 'Frazier', 1058, 'Marketing', 3, 'Minneapolis', 76000.00, 'Manager'),
('Brett', 'Cunningham', 1059, 'Sales', 2, 'Orlando', 73000.00, 'Sales Associate'),
('Danielle', 'Bradley', 1060, 'Operations', 1, 'Tampa', 71000.00, 'Coordinator'),
('Nicholas', 'Harvey', 1061, 'HR', 3, 'Columbus', 78000.00, 'Consultant'),
('Madison', 'Dixon', 1062, 'Finance', 2, 'Oklahoma City', 79000.00, 'Financial Analyst'),
('Logan', 'Barnes', 1063, 'IT', 1, 'Pittsburgh', 85000.00, 'Developer'),
('Alyssa', 'Pearson', 1064, 'Marketing', 3, 'Detroit', 77000.00, 'Marketing Specialist'),
('Cameron', 'Hayes', 1065, 'Sales', 2, 'Miami', 74000.00, 'Sales Manager'),
('Hailey', 'Reyes', 1066, 'Operations', 1, 'San Francisco', 68000.00, 'Supervisor'),
('Owen', 'Payne', 1067, 'HR', 3, 'New York', 79000.00, 'Recruiter'),
('Gabrielle', 'Gordon', 1068, 'Finance', 2, 'Los Angeles', 80000.00, 'Accountant'),
('Wyatt', 'Wallace', 1069, 'IT', 1, 'Chicago', 86000.00, 'Systems Analyst'),
('Peyton', 'Cole', 1070, 'Marketing', 3, 'Seattle', 78000.00, 'Manager'),
('Isaac', 'Cruz', 1071, 'Sales', 2, 'Dallas', 75000.00, 'Sales Associate'),
('Isabella', 'Murray', 1072, 'Operations', 1, 'Miami', 70000.00, 'Coordinator'),
('Bryce', 'Simmons', 1073, 'HR', 3, 'San Francisco', 80000.00, 'Consultant'),
('Summer', 'Porter', 1074, 'Finance', 2, 'Boston', 81000.00, 'Financial Analyst'),
('Tristan', 'Ferguson', 1075, 'IT', 1, 'Washington D.C.', 87000.00, 'Developer'),
('Vanessa', 'Perkins', 1076, 'Marketing', 3, 'Austin', 79000.00, 'Marketing Specialist'),
('Landon', 'Rice', 1077, 'Sales', 2, 'Houston', 76000.00, 'Sales Manager'),
('Makayla', 'West', 1078, 'Operations', 1, 'Denver', 71000.00, 'Supervisor'),
('Cole', 'Nichols', 1079, 'HR', 3, 'Portland', 81000.00, 'Recruiter'),
('Savannah', 'Gutierrez', 1080, 'Finance', 2, 'Phoenix', 82000.00, 'Accountant'),
('Ayden', 'Lambert', 1081, 'IT', 1, 'Detroit', 88000.00, 'Systems Analyst'),
('Faith', 'Horton', 1082, 'Marketing', 3, 'Atlanta', 80000.00, 'Manager'),
('Brody', 'Wood', 1083, 'Sales', 2, 'Las Vegas', 77000.00, 'Sales Associate'),
('Clara', 'Vasquez', 1084, 'Operations', 1, 'Philadelphia', 72000.00, 'Coordinator'),
('Brady', 'Maldonado', 1085, 'HR', 3, 'San Diego', 82000.00, 'Consultant'),
('Leah', 'Lloyd', 1086, 'Finance', 2, 'San Antonio', 83000.00, 'Financial Analyst'),
('Eli', 'Craig', 1087, 'IT', 1, 'Charlotte', 89000.00, 'Developer'),
('Hope', 'Luna', 1088, 'Marketing', 3, 'Minneapolis', 81000.00, 'Marketing Specialist'),
('Dominic', 'Pierce', 1089, 'Sales', 2, 'Orlando', 78000.00, 'Sales Manager'),
('Amelia', 'Morrison', 1090, 'Operations', 1, 'Tampa', 73000.00, 'Supervisor'),
('Henry', 'Ortega', 1091, 'HR', 3, 'St. Louis', 83000.00, 'Recruiter'),
('Lydia', 'Santiago', 1092, 'Finance', 2, 'Nashville', 84000.00, 'Accountant'),
('Gavin', 'Bishop', 1093, 'IT', 1, 'Raleigh', 90000.00, 'Systems Analyst'),
('Mariah', 'Curtis', 1094, 'Marketing', 3, 'Kansas City', 82000.00, 'Manager'),
('Jaden', 'Mendoza', 1095, 'Sales', 2, 'Salt Lake City', 79000.00, 'Sales Associate'),
('Paige', 'Alvarado', 1096, 'Operations', 1, 'Indianapolis', 74000.00, 'Coordinator'),
('Zoe', 'Fleming', 1097, 'HR', 3, 'Columbus', 84000.00, 'Consultant'),
('Xavier', 'Griffin', 1098, 'Finance', 2, 'Oklahoma City', 85000.00, 'Financial Analyst'),
('Kaitlyn', 'Hoover', 1099, 'IT', 1, 'Pittsburgh', 91000.00, 'Developer'),
('Blake', 'Walters', 1100, 'Marketing', 3, 'Detroit', 83000.00, 'Marketing Specialist');

select * from employees
select * from employees where salary>=50000 and salary<=70000
select * from employees where salary between 50000 and 70000  -----runs one time----
select * from employees where salary not between 50000 and 70000
select * from employees where department in('IT','HR') -----runs one time----
select * from employees where department not in('IT','HR') --- selcets except IT and HR------
select * from employees where department='IT' or department='HR' --- checks each condition seperately------




 ----- CREATE TABLE branch ( branch_id INT PRIMARY KEY AUTO_INCREMENT, br_name VARCHAR(30) NOT NULL, addr VARCHAR(200) ); CREATE TABLE employee ( emp_id INT PRIMARY KEY AUTO_INCREMENT, ename VARCHAR(30) NOT NULL, job_desc VARCHAR(20), salary INT, branch_id INT, CONSTRAINT FK_branchId FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ); INSERT INTO branch VALUES(1,"Chennai","16 ABC Road"); INSERT INTO branch VALUES(2,"Coimbatore","120 15th Block"); INSERT INTO branch VALUES(3,"Mumbai","25 XYZ Road"); INSERT INTO branch VALUES(4,"Hydrabad","32 10th Street"); INSERT INTO employee VALUES(1,'Ram','ADMIN',1000000,2); INSERT INTO employee VALUES(2,'Harini','MANAGER',2500000,2); INSERT INTO employee VALUES(3,'George','SALES',2000000,1); INSERT INTO employee VALUES(4,'Ramya','SALES',1300000,2); INSERT INTO employee VALUES(5,'Meena','HR',2000000,3); INSERT INTO employee VALUES(6,'Ashok','MANAGER',3000000,1); INSERT INTO employee VALUES(7,'Abdul','HR',2000000,1); INSERT INTO employee VALUES(8,'Ramya','ENGINEER',1000000,2); INSERT INTO employee VALUES(9,'Raghu','CEO',8000000,3); INSERT INTO employee VALUES(10,'Arvind','MANAGER',2800000,3); INSERT INTO employee VALUES(11,'Akshay','ENGINEER',1000000,1); INSERT INTO employee VALUES(12,'John','ADMIN',2200000,1); INSERT INTO employee VALUES(13,'Abinaya','ENGINEER',2100000,2); INSERT INTO employee VALUES(14,'Vidya','ADMIN',2200000,NULL); INSERT INTO employee VALUES(15,'Ranjani','ENGINEER',2100000,NULL);  

