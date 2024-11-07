select *
from [dbo].[pizza_sales$]

--1	Total Revenue
select sum([total_price]) as 'Total Revenue'
from [dbo].[pizza_sales$]

--2	Total Pizzas Sold
select sum([quantity]) as 'Total Sale'
from [dbo].[pizza_sales$]

--3	Total number of Orders
Select count([order_id]) as 'No of Orders'
from [dbo].[pizza_sales$]

--4	How many order Veggie pizza category was sold
select count([pizza_category]) As 'Total Sold'
from [dbo].[pizza_sales$]
where [pizza_category] = 'veggie'

--5	How many  The Hawaiian Pizza and  The Greek Pizza  was sold
select count([pizza_name]) As 'Total Sold'
from [dbo].[pizza_sales$]
where [pizza_name] in ('The Greek Pizza','The Hawaiian Pizza')

--6	List of pizza ordered in January 2015
select *
from [dbo].[pizza_sales$]
where [order_date] between '2015/01/01' and '2015/01/31'
--7	List of pizza ordered between 1st of November till 31st December 2015
select *
from [dbo].[pizza_sales$]
where [order_date] between '2015/11/01' and '2015/12/31'
--8	What is the quantity of The Spinach Supreme Pizza sold in March 2015
select count([pizza_name_id])
from [dbo].[pizza_sales$]
where [pizza_name_id] 
--9	List of Medium pizza sold
--10	List of pizza that sold for more than 12.5
