use mah_30
create table DNFSD_15
(ID int constraint pk1 primary key,
 NAME Varchar(30) constraint nn1 not null,
 AGE int constraint chk1 check(AGE>18),
 MOBILE bigint constraint uq1 unique,
 COURSE varchar(30) constraint df1 default '.NET FULLSTACK',
 mail varchar(40) constraint uq_3 unique)

 insert into DNFSD_15(ID,NAME, AGE,MOBILE, COURSE,mail) values
 (1,'MAHESHKUMARAN',21,6369967423,'.NET FULLSTACK','maheshkumaran19@gmail.com'),
 (2,'KUNAL',23,9857589338,'.NET FULLSTACK','djhcj@gamil.com'),
 (3,'KULDEEP',23,6649883909,'.NET FULLSTACK','jdcgegdycfgeyugu@gmail.com'),
 (4,'SARGUNARAJ',22,6844899083,'.NET FULLSTACK','jcbcehkcg@gmail.com'),
 (5,'AARTHICK RAJA',22,8772245307,'.NET FULLSTACK','iceuggcocdehcgu@gmail.com'),
 (6,'ANANTH',27,8216743521,'.NET FULLSTACK','jdceydgygdu@gmail.com'),
 (7,'BALAJI',21,9726781430,'.NET FULLSTACK','uhugugwhdwh@gmail.com'),
 (8,'PRIYAKUMAR',22,6199653885,'.NET FULLSTACK','jcxhjuewguewgc@gmail.com'),
 (9,'SANJEEV PRASAD',22,6938392784,'.NET FULLSTACK','wdihdwhhdwhh@gmail.com'),
 (10,'AYSHA',21,9018288746,'.NET FULLSTACK','dkwdhdgwudgjwh@gmail.com');

 select * from DNFSD_15;
 drop table DNFSD_15;