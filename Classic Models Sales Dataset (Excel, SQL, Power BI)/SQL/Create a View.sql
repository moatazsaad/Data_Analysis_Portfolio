-- create a view to use to connect to Power Bi 
create or replace view sales_data_for_power_bi as

SELECT orderdate,
ord.ordernumber,
p.productName,
p.productLine,
cu.customerName,
cu.country as customer_country,
o.city as office_city,
o.country as office_country,
buyPrice, 
priceEach,
QuantityOrdered,
QuantityOrdered * priceEach as sales_value,
buyPrice * quantityOrdered as cost_of_sales

FROM orders ord
inner join orderdetails orddet
on ord.orderNumber = orddet.orderNumber
inner join customers cu
on ord.customerNumber = cu.customerNumber
join products p
on orddet.productCode = p.productCode
inner join employees emp
on cu.salesRepEmployeeNumber = emp.employeeNumber
inner join offices o
on emp.officeCode = o.officeCode
