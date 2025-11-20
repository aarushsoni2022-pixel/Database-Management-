insert into personal2(Id,Name,percentage,Age,Gender,Phone_No,City)
values 
(1, "Ram Kumar",45, 19, "M", 4022155, "Agra"),
(2, "Sarita Kumari",55, 21, "F", 4034421, "Delhi"),
(3, "Salman khan",62, 20, "M", 4056221, "Agra"),
(4, "Juhi chawla",47, 18, "F", 4089821, "Bhopal"),
(5, "Anil kapoor",74, 22, "M", 4025221, "Agra"),
(6, "john Abraham",64, 21, "M", 4033776, "Delhi"),
(7, "Shahid Kapoor", 52, 20, "M", 4022784, "Agra");

select * from personal2;

select max(percentage) from personal2;
select min(percentage) from personal2;
select sum(percentage) from personal2;
select avg(percentage) from personal2;
select avg(age) from personal2;
select max(percentage) from personal2 where city="Agra";
select count(city)from personal2 where city="Agra";
select count(distinct city) from personal2;
