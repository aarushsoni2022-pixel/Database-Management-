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

select substring("Astro bot",5);
select substring("Astro bot",3,6);
select substring("Astro bot",-6,3);
select mid("Astro bot",-6,3);

select substring_index("www.Astro bot.net",".",1);
select substring_index("www.Astro bot.net",".",2);
select substring_index("www.Astro bota.net","e",2);

select strcmp("Astro bot","Astro bot");
select strcmp("Astro bot","Astro");
select strcmp("Astro bot ","Astro bot");

select format(234.3456,3);

select left("Astro bot",3);
select left("Astro bot",5);
select right ("Astro bot",3);

select rpad("Astro bot",20,"-");
select rpad("Astro bot",20,"*");
select lpad("Astro bot",20,"-");

select reverse("Astro bot");
select replace("Astro bot","Astro","Ms.");

select field("a","X","a","k");
select field("a","X","A","k");
select field("a","x","a","k");
select field(2,3,4,5,6,7);

select field("ram","ram","mohan","shyam");
select find_in_set("mohan","ram,mohan,shyam");
