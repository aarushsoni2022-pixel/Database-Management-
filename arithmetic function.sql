#Arithmetic function 
select 5+6;
select 5-6;
select 5*6;
select 5/6;

select id,name,(percentage+5) as new percentage from personal2;

select pi();
select round(4.51);
select round(4.49);
select round(-4.49);

select round(1234.987,2);
select round(1234.987,1);

select ceil(1.23);
select ceil(4.56);

select pow(2,2);
select pow(2,3);
select pow(2,4);

select sqrt(16);
select sqrt(4);
select sqrt(5);

select round(sqrt(5),2);

select rand();

select rand()*100;

select abs(-56);
select abs(-56.25);
select abs(56.25); 

select sign(23);
select sign(0);
select sign(-23);

