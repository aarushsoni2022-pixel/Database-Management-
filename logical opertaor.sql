select *from personal;
use school;


select * from personal where age>=18 and age<=20;
select * from personal where age>=18 or age<=20;
select * from personal where age<=20 and gender="M";
select * from personal where age<=20 and gender="M" and city="Agra";
select * from personal where age<=20 or city="Agra";
select * from personal where city="Bhopal" or city="Agra";
select * from personal where city="Bhopal" and city="Agra";
select * from personal where (city="Bhopal" or city="Agra")and gender="M";
select * from personal where not age>=20;
select * from personal where not (city="Bhopal" or city="Agra");
