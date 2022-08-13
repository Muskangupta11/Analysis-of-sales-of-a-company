use sales;
# removing foreign market from markets as the company only works in india (now)
SET sql_safe_updates=0;
delete from markets where markets_name='paris' or markets_name='new york';
# removing -negative sales amount from transactions
select count(*) from transactions where sales_amount<=0;
#converst usd into inr
select distinct currency from transactions;
select * from transactions where currency='usd';
alter table  transactions 
add column normallized_currency int; 
insert into transactions (normalized_currency) values( 
select  
case when currency= 'usd' then sales_amount*80
else sales_amount
from transactions);