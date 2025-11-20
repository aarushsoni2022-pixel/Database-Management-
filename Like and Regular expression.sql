select *from personal;
use school;

Select * from personal where name like "%s";

Select * from personal where name like "a%";

Select * from personal where name like "ram%";

Select * from personal where name like "rm%";

Select * from personal where name like "%am%";

Select * from personal where name like "r%" or name like "s%";

Select * from personal where name like "r%";

Select * from personal where name like "%r";

Select * from personal where name like "%ar";

Select * from personal where Phone_No like "%21";

Select * from personal where Phone_No NOT like "%21";

Select * from personal where name like "s%n";

Select * from personal where name like "r%r";

Select * from personal where name like "_am%";

Select * from personal where name like "_m%";

Select * from personal where name like "__m%";

Select * from personal where name like "__l%";

Select * from personal where name like "r_m%";
## regular expresion 

Select * from personal where name regexp 'ra';

Select * from personal where name regexp 'la';

Select * from personal where name regexp 'man';

Select * from personal where name regexp '^ra';

Select * from personal where name regexp '^la';

Select * from personal where name regexp '^man';

Select * from personal where name regexp 'an$';

Select * from personal where name regexp 'ram|kapoor|khan';

Select * from personal where name regexp 'ram|poor|khan';

Select * from personal where name regexp '^ram|poor|khan$';

Select * from personal where name regexp '[is]';

Select * from personal where name regexp '[rm]';

Select * from personal where name regexp '[rm]a';

Select * from personal where name regexp '[rmh]a';

Select * from personal where name regexp '^[rm]';

Select * from personal where name regexp 'r[am]';
