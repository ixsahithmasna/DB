-- SELF JOIN Tasks
-- Employee with manager name
-- Employees under same manager
-- List only managers
-- Employee–mentor mapping
-- Show reporting hierarchy pairs


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




