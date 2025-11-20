Create table student2(
Id int not null unique,
Name varchar(20) not null,
Age int not null check (age>=18),
Gender varchar(1) not null,
Phone varchar(10) not null unique,
City varchar (15) not null default 'Agra');

insert into student2(id,name,age,gender,phone,city)
value(1,"Raj",18,"M",67890,"dehli");
insert into student2(id,name,age,gender,phone,city)
value(2,"Raju",18,"M",678,"dehli");
select* from student2;
insert into student2(id,name,age,gender,phone,city)
value(3,"chiku",19,"M",6899054,"dehli");
select* from student2;





Select * from student2 where age>=18 and age<=20;

Select * from student2 where age>=18 or age<=20;

Select * from student2 where age<=20 and gender =“M”;

Select * from student2 where age<=20 and gender =“M” and city=“jalandhar”;

Select * from student2 where age<=20 or city  =“Jalandhar”;

Select * from student2 where city  =“Bhopal” or city=“jalandhar”;

Select * from student2 where city  =“Bhopal” and city=“jalandhar”;

Select * from student2 where (city =“Bhopal” or city=“jalandhar”) and gender=“M’;

Select not age>=20;