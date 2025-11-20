create database school;



use school;

create table student(
	st_id int,
    st_name varchar(20),
    st_age int
    );

insert into student(st_id,st_name,st_age)values(1,"raj",25);



insert into student(st_id,st_name,st_age)values(2,"ria",20),(3,"aaru",21);
select*from student;

alter table student add email varchar(20);

alter table student modify email int;

alter table student change email email_id varchar(20);

alter table student modify email_id varchar(20) after st_name;

alter table student drop column email_id;

alter table student rename student2;

select* from student2;

alter table student2 change st_age age int;
alter table student2 change st_name name varchar(20);
alter table student2 change st_id id int;

truncate table student2;

drop table student2;