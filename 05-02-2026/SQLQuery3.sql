use College_DB
select * from Customers as c 
left join Orders as o on 
c.customer_id = o.customer_id


select * from Customers as c 
left join Orders as o on 
c.customer_id = o.customer_id
where o.order_id is null



select * from Customers as c
join Orders as o 
on c.customer_id = o.customer_id
join products as p on 
p.order_id = o.order_id


select * from Customers as c 
left join Orders as o on 
c.customer_id = o.customer_id
where c.name like 'sa%'


