-- SELF JOIN Tasks
-- Employee with manager name
-- Employees under same manager
-- List only managers
-- Employee–mentor mapping
-- Show reporting hierarchy pairs

select * from Employees



select e1.*,e.emp_name from Employees as e ,Employees as e1
where e.emp_id = e1.manager_id


select e1.* from Employees as e,Employees as e1 
where e.emp_id = e1.manager_id group by e1.manager_id


select 
    m.emp_id,m.emp_name,e.emp_id,e.emp_name
FROM Employees AS e
JOIN Employees AS m
    ON e.manager_id = m.emp_id;

SELECT 
    m.emp_id AS manager_id, m.emp_name AS manager_name
FROM Employees AS e
JOIN Employees AS m 
    ON e.manager_id = m.emp_id;





select * from Employees as e 
join Employees as e1 on 
e.emp_id = e1.manager_id




--third highest salary 
select * from Employees order by salary desc
offset 2 rows fetch next 1 rows only

select * from Customers
select * from Orders

select c.customer_id,c.name,c.email from Orders as o 
right join Customers as c on 
o.customer_id = c.customer_id where o.order_id is null