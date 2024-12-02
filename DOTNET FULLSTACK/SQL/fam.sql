use mah_30
create table fam(
id int constraint pk3 primary key,
fam_memb varchar(20) constraint nn6 not null,
rel varchar(20) constraint nn5 not null,
age int check(age>=10),
occ varchar(20) not null,
edu varchar(40) ,
dob date not null,
interests varchar(40) constraint df3 default 'movies',
mobile bigint constraint uq3 unique
)
insert into fam values(1,'sjbsj','cousin',23,'Software developer','B.E', '2001-05-10', 'trekking',938747484934),
(2,'idud','uncle',32,'Software developer','B.E', '1992-07-13', 'movies',9837898490),
(3,'sccug','aunt',30,'teacher','B.E', '1994-05-19', 'music',93736373988),
(4,'scjssj','brother',18,'student','B.E', '2006-10-10', 'games',7484903737),
(5,'widhwwi','sister',25,'house-wife','B.E', '1998-06-10', 'movies',9272636273930),
(6,'nsauhasug','grandfather',70,'retired','-', '1953-02-01', 'tv',93897783679),
(7,'dwhdwdw','grandmother',68,'house-wife','-', '1955-03-09', 'tv',837873879),
(8,'cbwcwug','nephew',10,'Student','elementary', '2013-09-28', 'cartoon',997666378393),
(9,'amkdxah','sister-in-law',27,'Software developer','B.E', '1996-07-31', 'movies',93838392009);
insert into fam (id,fam_memb,rel,age,occ,edu,dob,mobile)values(10,'majabdk','brother-in-law',29,'Software developer','B.E', '1994-08-30',9393738390);

select * from fam
drop table fam