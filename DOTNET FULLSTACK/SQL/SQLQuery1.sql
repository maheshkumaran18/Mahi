create database mah_30
use mah_30
create table kum
( ID int,
  NAME varchar(50),
  AGE int,
  MOBILE bigint,
  DOB date
);
select * from kum
insert into kum(ID, NAME, AGE, MOBILE, DOB) values(1,'mahesh',20, 6369967423, '2003-08-18'),(2, 'vk', 22, 3276736760, '2000-10-10'),(3, 'mk', 24, 8999839939, '2002-12-10');
