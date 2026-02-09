-- JOIN + Subquery Tasks (IN / NOT IN / EXISTS / NOT EXISTS)
-- Customers whose id IN (select customer_id from orders)
-- Customers whose id NOT IN (select customer_id from orders)
-- Products NOT IN ordered products list
-- Employees NOT IN departments table
-- Orders where amount > (subquery average amount)
-- Customers who placed orders above average order value
-- Employees earning more than department average (subquery + join)
-- Departments IN list of active departments (subquery)
-- Customers NOT IN cancelled orders list
-- Use subquery inside JOIN condition
-- Use subquery as derived table and join it
-- Use EXISTS to find customers with orders
-- Use NOT EXISTS to find customers without orders
-- Use correlated subquery with join
-- Join with subquery that returns aggregated data





--Customers whose id IN (select customer_id from orders)
select * from Customers
where customer_id in (select customer_id from Orders)


-- Customers whose id NOT IN (select customer_id from orders)
select * from Customers
where customer_id not in (select customer_id from Orders)


--Products NOT IN ordered products list

select * from Products 
where product_id not in (select product_id from Order_Items)




--Employees NOT IN departments table
select * from Employees
where dep_id not in (select dep_id from Department)


--Orders where amount > (subquery average amount)
select * from Orders as o 
where total_amount > (select AVG(total_amount) from Orders)


-- Customers who placed orders above average order value

select * from Customers as c
join Orders as o on 
c.customer_id=o.customer_id
where o.total_amount > (select AVG(total_amount) from Orders)


-- Employees earning more than department average (subquery + join)

select * from Employees as e1
where e1.salary >
(select AVG(e2.salary) from Employees as e2 
where e2.dep_id=e1.dep_id)





-- Departments IN list of active departments (subquery)
select * from Department
where dep_id in (select dep_id from Department)


--Customers NOT IN cancelled orders list

alter table orders add status varchar(50)

update orders 
set status ='completed' where order_id in (1,2,3,6,7)

update orders 
set status ='cancelled' where order_id in (4,5,8,9)

select * from Orders


select * from Customers 
where customer_id not in (select customer_id from Orders where status ='cancelled')



--Use subquery inside JOIN condition
select * from Employees as e 
join Department as d on 
e.dep_id = d.dep_id and 
e.salary >(select AVG(e2.salary) from Employees as e2 where e2.dep_id=d.dep_id)


--Use subquery as derived table and join it

select c.customer_id,c.name,t.total_amount
from Customers c join
(select customer_id, SUM(total_amount) AS total_amount from Orders group by customer_id) as t on 
c.customer_id = t.customer_id

-- Use EXISTS to find customers with orders
select * from Customers as c where exists (select * from Orders as o where o.customer_id=c.customer_id)


-- Use NOT EXISTS to find customers without orders
select * from Customers as c where not exists (select * from Orders as o where o.customer_id=c.customer_id)

--Use correlated subquery with join

select * from Employees as e
where salary >
(select AVG(salary) from Employees where dep_id = e.dep_id)


-- Join with subquery that returns aggregated data

select * from Employees as e
join 
(select dep_id,count(*) as employees_total from Employees group by dep_id) as emp_count on
e.dep_id = emp_count.dep_id


