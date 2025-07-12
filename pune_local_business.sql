create database pune_local_business;
use pune_local_business;

select * from business limit 5;

#1. Top 5 Areas by Active Businesses:
create view top_5_Areas as
select Area,count(*) as total_active_businesses
from business
where Is_Active = "Yes"
group by Area
order by total_active_businesses desc
limit 5;

select * from top_5_Areas;

#2. Category-wise Average Ratings:
create view Category_Wise_Avg_Ratings as
select Category,avg(Rating) as Average_Ratings
from business
group by Category
order by Average_Ratings desc;

select * from Category_Wise_Avg_Ratings;

#3. Total Sales by Price Range:
create view total_Sales_Range as
select Price_Range,sum(Monthly_Sales) as total_Sales
from business
group by Price_Range
order by total_Sales desc;

select * from total_Sales_Range;

#4. Average Delivery Time by Area (only for those with delivery):
create view Avg_delivery_by_area as
select Area,avg(Delivery_Time_Minutes) as avg_delivery_time
from business
where Delivery_Time_Minutes is not null
group by Area
order by avg_delivery_time desc;

select * from Avg_delivery_by_area;

#5.Percentage (%) of Businesses Offering Online Orders:
create view Percentage_of_online_orders as
SELECT 
  (COUNT(*) * 100) / (SELECT COUNT(*) FROM business) AS percent_with_online_orders
FROM business
WHERE monthly_online_orders IS NOT NULL;

select * from Percentage_of_online_orders;

#6. businesses whose average order amount is more than ₹700,(only considering completed orders):
create view businesses_avg_order as
SELECT Business_Name,Area,Category,Avg_Order_Value
FROM business
WHERE Avg_Order_Value > 700;

select * from businesses_avg_order;

#7.Show businesses that are either High priced OR in Koregaon Park
create view High_priced_businesses as
SELECT business_name, category, area, price_range
FROM business
WHERE price_range = 'High' OR area = 'Koregaon Park';

select * from High_priced_businesses;
