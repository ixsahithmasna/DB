--  INNER JOIN Tasks
-- Customers with their orders
-- Orders with customer name and city
-- Employees with departments
-- Orders with products (3-table join)
-- Select multiple columns from joined tables
-- Filter joined rows using WHERE amount > X
-- Filter joined rows using LIKE pattern

use College_DB
select * from Customers as c
join Orders as o on 
c.customer_id = o.customer_id




select o.order_id,c.name,c.email,o.total_amount from Customers as c
 join Orders as o on 
c.customer_id=o.customer_id

select e.emp_id,e.emp_name,e.dep_id,d.dep_name from Employees as e
join Department as d on 
e.dep_id=d.dep_id


select * from Customers
select * from Orders
select * from products
select * from Order_items


select * from Orders as o
join Customers as c on 
o.customer_id = c.customer_id 
join Order_items as ot on 
ot.order_id = o.customer_id
join products as p on 
p.product_id = ot.product_id



select * from Orders as o
join Customers as c on 
o.customer_id = c.customer_id 
join Order_items as ot on 
ot.order_id = o.customer_id
join products as p on 
p.product_id = ot.product_id
where p.price >500;


select * from Orders as o
join Customers as c on 
o.customer_id = c.customer_id 
join Order_items as ot on 
ot.order_id = o.customer_id
join products as p on 
p.product_id = ot.product_id
where c.name like 'sa%'





