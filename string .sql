select *from personal;
use school;

select id,upper(name),percentage from personal2;
select id,ucase(name),percentage from personal2;
select id,lower(name),percentage from personal2;
select id,lcase(name),percentage from personal2;

select id,char_length(name),percentage from personal2;
select id,character_length(name),percentage from personal2;

select id,concat(name,percentage) from personal2;
select id,concat(name,"   ",percentage) from personal2;

select concat("aarush soni");

select concat_ws("-","aarush","hello","class");
select trim(    "aarush soni"    );


select position("world" in "helloworld" );
select position("o" in "helloworld");
select position("ell" in "helloworld");
select instr( "helloworld","ell");
select locate("ell","helloworld");
select locate("l","helloworld",3);

select substring("neema jha",5);
select substring("neema jha",3,6);
select substring("neema jha",-6,3);
select mid("neema jha",-6,3);

select substring_index("www.neemajha.net",".",1);
select substring_index("www.neemajha.net",".",2);
select substring_index("www.neemajha.net","e",2);

select strcmp("Neema jha","Neema jha");
select strcmp("Neema jha","Neema");
select strcmp("Neema ","Neema jha");

select format(234.3456,3);

select left("neema jha",3);
select left("neema jha",5);
select right ("neema jha",3);

select rpad("neema jha",20,"-");
select rpad("neema jha",20,"*");
select lpad("neema jha",20,"-");

select reverse("neema jha");
select replace("neema jha","neema","Ms.");

select field("a","X","a","k");
select field("a","X","A","k");
select field("a","x","a","k");
select field(2,3,4,5,6,7);

select field("ram","ram","mohan","shyam");
select find_in_set("mohan","ram,mohan,shyam");