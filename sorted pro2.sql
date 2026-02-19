SELECT * FROM university.student;

use university;
Delimiter $$
Create procedure get_student()
Begin
	Select * from student where student.age=21;
end$$
Delimiter ;
Call get_student;


delimiter $$
create procedure get_student1(in age int)
begin 
	select * from student where student.age= age;
end $$
delimiter ;
call get_student1(19);


delimiter $$
create procedure get_student3(inout records int,in age int)
begin
	select count(*) into records from student where student.age = age;
end $$
delimiter ;

call get_student3(@record,21);
select @records as totalrecords;




