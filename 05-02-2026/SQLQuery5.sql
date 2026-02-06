select * from Customers as c 
full join Orders as o on 
c.customer_id = o.customer_id


select * from Employees as e
full join Department as d on 
e.dep_id = d.dep_id



select * from Customers as c
left join Orders as o on 
c.customer_id = o.customer_id

union 

select * from Customers as c
right join Orders as o on 
c.customer_id = o.customer_id 


select dep_id from Employees as e 
union 
select dep_id from Department as 



