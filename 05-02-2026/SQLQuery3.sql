--  LEFT JOIN Tasks	
-- All customers with orders including NULLs
-- Customers without orders
-- All departments with employees
-- Departments without employees
-- Products not ordered
-- LEFT JOIN with WHERE filter
-- LEFT JOIN with LIKE filter

use College_DB
select * from Customers as c 
left join Orders as o on 
c.customer_id = o.customer_id


select * from Customers as c 
left join Orders as o on 
c.customer_id = o.customer_id
where o.order_id is null

select * from Employees 
select * from Department

select * from Department as d
left join Employees as e  on 
d.dep_id = e.dep_id




select p.* from products as p
left join order_items as oi
on p.product_id = oi.product_id 
where oi.order_id is null







