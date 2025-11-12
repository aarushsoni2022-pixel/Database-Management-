SELECT * FROM showroom.gb;
use showroom;

#Find total sales amount for each region. 
select region,
sum(price) as  total_sales from gb group by region;

#Find total quantity sold by each salesperson.
select salesperson,
sum(quantity) as total_quantity from  gb group by salesperson;

#Show categoris where total quantity sold is more than 30.
select category,
sum(quantity) as total_quantity from gb group by category having sum(quantity)>=30;

#Find total revenue by each category.
select category,
sum(price * quantity) AS total_revenue  from gb group by  category;

#Find salesperson who sold total quantity more than 20.
select salesperson,
sum(quantity) as total_quantity from gb group by salesperson having sum(quantity)>=20;

#Find region-wise average sale price.
select region,
avg(price) AS average_sales FROM gb GROUP BY region;

#Find total revenue for each salesperson and show on;y those having revenue above 300000.
select salesperson,
sum(quantity*price) as total_revenue from gb group by salesperson having total_revenue > 300000;

#Find how many product each categories has.
select category,
count(distinct product) as product_count from gb group by category;


#Find each region maximum sale pric.
select region,
max(price) as max_price from gb group by region;

#find each categories average quantity sold,but show only where avg>10.
select category,
avg(quantity)as avg_qty from gb group by category having avg_qty>10;


#Find total revenue by region and category.
select region,category,
sum(quantity*price)as total_revenue from gb group by region,category;

#Find how many sale each salesperson made in each region.
select salesperson,region,
count(*)as total_sales from gb group by salesperson,region;

#Find the region where total quantity sold exceed 20.
select region,
 sum(quantity)as total_qty from gb group by region having total_qty > 20;
 
 #find salesperson who sold in more than one region.
 select salesperson,
 count(distinct region)as region_count from gb group by salesperson having region_count >1;

#Find category having total revenue btw 200000 to 1000000.
select category,
sum(quantity*price)as total_revenue from gb group by category having total_revenue between 200000 and 10000000;

#find the top 1 category with highest total sales.
select category,
sum(quantity*price)as total_sales from gb group by category order by total_sales desc limit 1;

