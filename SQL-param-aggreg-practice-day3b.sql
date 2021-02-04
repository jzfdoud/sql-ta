----1)

--select c.Name 'Company', ol.Description 'Product Ordered', ol.Quantity, ol.Price
--from Customers c
--left join Orders o on o.CustomerId = c.Id
--left join OrderLines ol on ol.OrdersId = o.id
--order by c.Name

----2)

--Select ol.Product, ol.Description, count(ol.quantity) 'Amount Sold'
--from Orders o 
--join OrderLines ol on ol.OrdersId = o.Id
--group by ol.Product, ol.Description

----3)

Select * 
from Customers
where Sales > (select AVG(sales)
from Customers)

----4)

--declare @q417e datetime = '2017-12-31'
--declare @q417s datetime = '2017-10-01'

--select c.Name, o.Date
--from Orders o
--join Customers c on c.Id = o.CustomerId
--where Date <= @q417e and Date >= @q417s
--order by o.Date desc

----5)

--declare @min int = 90000
declare @min decimal(9,2) = 80000
declare @max decimal(9,2) = 90000

Select * 
from Customers
where Sales >= @min and Sales <= @max

----6)

select city, COUNT(*) 'Customers in City', Sum(sales) 'total Sales', AVG(sales) 'avg sales in city'
from Customers
group by City
