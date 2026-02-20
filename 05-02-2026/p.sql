

select * from Customers where  exists
(select *,
case when p.price >500 and p.price<=1000 then 'Low Cost Product'
when p.price>1000 and p.price<=2000 then 'Medium Cost Product'
else 'High Cost Product'
end as status_price
from Customers as c 
left join Orders as o on 
c.customer_id = o.customer_id 
join Order_Items as ot on
ot.order_id = o.order_id
join Products as p on 
p.product_id = ot.product_id
join Suppliers as sp on
sp.supplier_id = p.product_id 
where order_date>'2026-01-05' or sp.country like 'India')




select d.dep_id,count(*) as count_emp from Employees as e 
join Department as d on 
e.dep_id = d.dep_id group by d.dep_id having count(*) >=2


select d.dep_id from Department as d
join Employees as e on 
d.dep_id = e.dep_id group by d.dep_id



