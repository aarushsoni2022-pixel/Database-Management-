create database window_fun;

use window_fun;


create table catergory_table (
 new_id int,
 new_cat varchar(50)
 );

INSERT INTO catergory_table (new_id, new_cat) VALUES
(100, 'Agni'),
(200, 'Agni'),
(500, 'Dharti'),
(700, 'Dharti'),
(200, 'Vayu'),
(300, 'Vayu'),
(500, 'Vayu');

select * from catergory_table ;


select new_id,new_cat,
sum(new_id)over(partition by new_cat order by new_id) as "total" from catergory_table ;

select new_id,new_cat,
avg(new_id)over(partition by new_cat order by new_id) as "average" from catergory_table ;

select new_id,new_cat,
count(new_id)over(partition by new_cat order by new_id) as "count" from catergory_table ;

select new_id,new_cat,
min(new_id)over(partition by new_cat order by new_id) as "min" from catergory_table ;

select new_id,new_cat,
max(new_id)over(partition by new_cat order by new_id) as "max" from catergory_table ;


select new_id,new_cat,
sum(new_id)over(partition by new_cat order by new_id) as "sum" from catergory_table ;


select new_id,
row_number() over(order by new_id) as "row_number" from catergory_table;


select new_id,
rank() over(order by new_id) as "rank_number" from catergory_table;

select new_id,
first_value(new_id)over(order by new_id)as "first value",
last_value(new_id)over(order by new_id)as "last value",
lead(new_id)over(order by new_id)as "lead",
lag(new_id)over(order by new_id)as "lag"
from catergory_table;

select new_id,
lead(new_id,2)over(order by new_id) as"lead_by 2",
lag(new_id,2)over(order by new_id) as"lag_by 2"
from catergory_table;

select new_id,new_cat,
sum(new_id)over(order by new_id rows between unbounded preceding and unbounded following )as "total",
avg(new_id)over(order by new_id rows between unbounded preceding and unbounded following )as "avg",
count(new_id)over(order by new_id rows between unbounded preceding and unbounded following )as "count",
min(new_id)over(order by new_id rows between unbounded preceding and unbounded following )as "min",
max(new_id)over(order by new_id rows between unbounded preceding and unbounded following )as "max"
from catergory_table;

