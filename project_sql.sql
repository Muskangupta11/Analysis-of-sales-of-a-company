use sales;
# primary analysis of database
select count(*) from transactions;
select count(*) from customers;
select * from markets limit 2;

# getting all transactions in market of chennai
select t.*,m.markets_name from
transactions t
join markets m on t.market_code=m.markets_code
where m.markets_name='chennai';

# getting count of transactions done in usd
select count(*) from transactions where currency='usd';
select * from transactions where curreny='usd';

# getting number of transactions in 2020
select * from transactions where year(order_date)=2020;
select count(*) from transactions where year(order_date)=2020;
"""alternate """
select t.*,d.* 
from transactions t
join date d on t.order_date=d.cy_date
where d.year=2020;

# revenue in the year 2020 - usd not in 2020
select sum(sales_amount) from transactions where year(order_date)=2020;

# revenue in the year 2020 in chennai
select sum(t.sales_amount) , m.markets_name
from transactions t
join markets m on t.market_code=m.markets_code
where m.markets_name='chennai';

