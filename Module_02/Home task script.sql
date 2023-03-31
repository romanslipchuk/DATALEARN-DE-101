-- Just to check table and columns names
select order_date_id from dw.sales_fact limit 10;

-- TOtal sales is 2297200.8603
select sum(sales) from dw.sales_fact sf;

--Total profit is 286397.0216999999887055
select sum(profit) from dw.sales_fact sf;

--Profit ratio is 0.12467217240315604661
select sum(profit) / sum(sales) from dw.sales_fact sf;

-- Profit per order
select order_id, sum(profit)/sum(sales)
from dw.sales_fact sf 
group by order_id;

--Sales per customer
select cust_id, sum(sales)
from dw.sales_fact sf 
group by cust_id;

--Avg Discount is 0.15620272163297978787
select avg(discount)
from dw.sales_fact sf 

-- Monthly sales by SEGMENT
select segment, date_part('month',order_date_id), sum(sales)
from dw.sales_fact sf left join dw.product_dim pd using(prod_id)
group by 1, 2
order by 2, 1

--Monthly sales by Product Category
select category, date_part('month',order_date_id), sum(sales)
from dw.sales_fact sf left join dw.product_dim pd using(prod_id)
group by 1, 2
order by 2, 1
	