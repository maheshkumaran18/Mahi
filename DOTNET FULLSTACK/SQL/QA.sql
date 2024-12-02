create table students
(ID int, 
 NAME Varchar(30),
 AGE int check(AGE>18),
 MOBILE bigint ,
 Grp_id int ,
 foreign key (Grp_id) references Grp(Grp_id)
 );

 insert into students values
 (1,'jwfchjcn',21,6369967423,1),
 (2,'sjcnscnj',23,9857589338,3),
 (3,'sckn',23,6649883909,2),
 (4,'scsncs',22,6844899083,3),
 (5,'cksmjskcj',22,8772245307,1),
 (6,'sdjnsdjb',27,8216743521,2),
 (7,'jcsnjn',21,9726781430,3),
 (8,'bnfbnfnbkmbf',22,6199653885,1);
 insert into students (ID, NAME, AGE,MOBILE) values(9,'kncdjbdbjbs',22,6938392784),
 (10,'scjsdbjsj',21,9018288746);

 select * from students
 drop table students
 -----------------------------------------------
 create table Grp(
 Grp_id int primary key,
 Grp varchar(30));

 insert into Grp values(1,'Bio-Maths'),
 (2,'Computer Science'),
 (3,'Pure Science');
 insert into Grp values (4,'Commerce')
 select * from grp
 drop table Grp
 ---------------------------------------------
 select s.ID,s.NAME,s.Grp_id, Grp.Grp from students as s inner join Grp on s.Grp_id = Grp.Grp_id

 select s.ID,s.NAME,s.Grp_id, Grp.Grp from students as s left outer join Grp on s.Grp_id = Grp.Grp_id

 select s.ID,s.NAME,s.Grp_id, Grp.Grp from students as s right outer join Grp on s.Grp_id = Grp.Grp_id

 select count(Grp_id), Grp_id from students group by Grp_id

 select  count(Grp.Grp), Grp.Grp from students as s inner join Grp on s.Grp_id = Grp.Grp_id group by Grp.Grp

 select  count(s.ID) as no_of_students, Grp.Grp from students as s inner join Grp on s.Grp_id = Grp.Grp_id group by Grp.Grp

  select  count(s.ID) as no_of_students, Grp.grp from students as s left outer join Grp on s.Grp_id = Grp.Grp_id group by Grp.Grp

   select  count(s.ID) as no_of_students, Grp.Grp from students as s right outer join Grp on s.Grp_id = Grp.Grp_id group by Grp.Grp

   select count(ID)as no_of_students from students where Grp_id is null

