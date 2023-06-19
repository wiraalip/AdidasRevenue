SELECT *
FROM AdidasSales.dbo.AdidasSalesData

-- total sold by retail, year 
SELECT retailer, sum(units_sold) as total_sold, sum(operating_profit) as revenue
FROM AdidasSales.dbo.AdidasSalesData
group by retailer
order by 3 desc

-- units sold by state
select state, sum(units_sold) as sold
FROM AdidasSales.dbo.AdidasSalesData
group by state

--
CREATE VIEW  gender as 
select  *, 
		CASE WHEN product LIKE 'Men%' THEN 'Men' ELSE 'Women' END AS Gender
from AdidasSales.dbo.AdidasSalesData
