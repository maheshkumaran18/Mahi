create table kum_31
(ID int constraint pk primary key, 
NAME varchar(30) constraint nn not null, 
MOBILE bigint constraint uq unique, 
LOCATION varchar(50) constraint dflt default 'MADURAI',
SALARY int constraint chk check(SALARY>10000))
insert into kum_31(ID,NAME,MOBILE,LOCATION,SALARY) values(1,'mahesh', 76545672,'APK', 90000), (2,'kumaran', 765456788, 'MDU', 4647489 ), (3,'vk',747484949, 'VNR',45464);
select * from kum_31
truncate table kum_31
drop table kum_31
alter table kum_31 drop column SALARY
alter table kum_31 add SALARY VARCHAR(20)
alter table kum_31 add SALARY varchar(20)