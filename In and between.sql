select *from personal;
use school;

select * from personal where age in (18,21);
select * from personal where age in (18,21,19);
select * from personal where age not in (18,21,19);
select * from personal where city in ("Delhi","Bhopal");
select * from personal where city not in ("Delhi","Bhopal");


Select * from personal where age between 18 and 20;

Select * from personal where age not between 18 and 20;

Select * from personal  where id between 2 and 5;

Select * from personal where id not between 2 and 5;

Select * from personal where name between "a" and "k";