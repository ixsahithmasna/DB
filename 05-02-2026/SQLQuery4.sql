--  RIGHT JOIN Tasks
-- --
-- Orders without matching customers
-- All departments even if empty
-- RIGHT JOIN with WHERE condition
-- RIGHT JOIN with COUNT per parent

select c.customer_id,c.name,c.email from Orders as o 
right join Customers as c on 
o.customer_id = c.customer_id where o.order_id is null


select * from Employees as e 
right join Department as d on
e.dep_id = d.dep_id 


select * from Employees as e 
right join Department as d on
e.dep_id = d.dep_id 
where salary > 50000


select d.dep_id,count(*) from Employees as e 
right join Department as d on 
e.dep_id = d.dep_id group by d.dep_id 

