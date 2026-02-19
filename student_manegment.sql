create database student_manegment;
use student_manegment;

create table student(
 student_id int primary key,
 name varchar(50),
 age int,
 email varchar(50),
 join_date date
);

create table course(
 course_id int primary key,
    couse_name varchar(50),
    credit int
);
    
create table enrollment(
 enroll_id int primary key,
 student_id int,
    course_id int,
    enroll_date date,
    foreign key(student_id)references student(student_id),
 foreign key(course_id)references course(course_id)
);

create table marks(
marks_id int primary key,
student_id int,
course_id int,
marks int,
grade char(1),
foreign key (student_id) references student(student_id),
foreign key (course_id) references course(course_id)
);

insert into student values
(1,'Raj',20,'raj@gmail.com','2024-06-01'),
(2,'Amit',21,'amit@gmail.com','2024-06-02');

insert into course values
(101,'Database Systems',4),
(102,'Python Programming',3);

insert into enrollment values
(1,1,101,curdate()),
(2,2,102,curdate());


#stored procedures

delimiter $$

create procedure add_student(
