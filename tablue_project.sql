use sales;
# get revenue my year alter - task1
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
select sum(t.sales_amount) as total_revenue, d.year ,d.month_name 
from transactions t
join date d on t.order_date=d.date
group by d.YEAR,d.month_name
order by d.year;
# get sales quantity -task2
select sum(t.sales_qty) as total_sales_quantity, d.year ,d.month_name 
from transactions t
join date d on t.order_date=d.date
group by d.YEAR,d.month_name
order by d.year;
# sales by customer - task3
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
select sum(t.sales_amount) as revenue ,c.custmer_name as customer_name,d.year,d.month_name 
from transactions t
join customers c on c.customer_code=t.customer_code
join date d on d.date=t.order_date
group by d.year,c.custmer_name
order by d.year,d.month_name;
#quantity purchased by each customer - task4
select sum(t.sales_qty) as sales_quantity ,c.custmer_name as customer_name,d.year,d.month_name 
from transactions t
join customers c on c.customer_code=t.customer_code
join date d on d.date=t.order_date
group by d.year,c.custmer_name
order by d.year;