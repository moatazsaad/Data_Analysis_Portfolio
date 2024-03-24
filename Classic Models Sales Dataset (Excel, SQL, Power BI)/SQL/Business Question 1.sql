-- 1-Overview of sales for 2004, breakdown by product, country, city, sales value, cost of sales, net profit
select t1.orderNumber, orderDate, productName, quantityOrdered, priceEach, buyPrice, city, country, productLine 
from orders t1
inner join orderdetails t2
on t1.orderNumber= t2.orderNumber
inner join products t3
on t2.productCode = t3.productCode
inner join customers t4
on t1.customerNumber = t4.customerNumber
where year(orderDate) = 2004
