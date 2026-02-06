-- CROSS JOIN Tasks
-- All customer–product combinations
-- All employee–role combinations
-- Generate all pair combinations from two tables



select * from Customers as c
join Orders as o on 
c.customer_id = o.customer_id 
join Order_items as ot on 
o.order_id = ot.order_id 
cross join products as p 



select * from Customers as c
cross join Orders


