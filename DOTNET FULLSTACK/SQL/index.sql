use mah_30
create table index1(
id int primary key,
name varchar(50) unique,
age int not null
);
create nonclustered index in2 on index1(id);

