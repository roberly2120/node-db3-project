-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select 
    productname,
    categoryname
from product as p
join category as c
    on c.id = p.categoryid
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select 
    o.id,
    s.companyname
from "Order" as o
join shipper as s
    on s.id = o.ShipVia
     where o.OrderDate < '2012-08-09'


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select 
    productname,
    o.quantity
from orderdetail as o
join product as p
    on p.id = o.ProductId
where o.orderid = 10251
order by productname
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select
    o.Id as OrderId,
    c.CompanyName as CompanyName,
    e.LastName as Employee_Last_Name
from "Order" as o
left join customer as c
    on o.customerid = c.id
left join employee as e 
    on o.EmployeeId = e.Id
    where c.CompanyName <> 'null'