-- JOIN + WHERE Tasks
-- Orders after certain date with customer data
-- Employees in specific department
-- Customers from specific city with orders
-- Products above certain price in orders

select * from Customers as c 
join Orders as o on 
c.customer_id = o.customer_id where order_date > '2026-01-05'


select * from Employees as e 
join Department as d on 
e.dep_id  = d.dep_id where dep_id 

select * from Order_Items as ot 
join Products as p on 
ot.product_id = p.product_id where p.price >1000

