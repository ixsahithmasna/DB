
-- List all customers and their orders (id, name, order_id, amount).

-- Show customers who have never placed an order.

-- Show orders above ₹500 with customer names.

-- Find orders placed in the last 30 days.

-- Count how many orders each customer has made.

-- Show the total amount spent by each customer.

-- List all cities and the number of customers in each.

-- Show customers whose name starts with “A” and their order count.

-- Find customers who placed more than 3 orders.

-- Show the largest order each customer placed.



-- Show customers who have never placed an order.

select * from Customers as c 
left join Orders as o on 
c.customer_id = o.customer_id 
where order_id is null

select * from Orders

-- Find orders placed in the last 30 days.
select * from Orders
where order_date>= DATEADD(day,-60,GETDATE())

-- Show the total amount spent by each customer
select c.customer_id,SUM(o.total_amount) as total_spent from Customers as c
join Orders as o on 
c.customer_id=o.customer_id group by c.customer_id


-- Show the largest order each customer placed.
select customer_id,MAX(total_amount) from Orders
group by customer_id






-- ORDERS + ORDER_ITEMS + PRODUCTS

-- List every order with each product purchased.

-- Show total quantity of each product sold.

-- Show total revenue generated per product.

-- List products that were never ordered.

-- Show the most expensive product ever ordered.

-- Find orders where total item quantity > 5.

-- Show each customer with the total items they purchased.

-- Show each order’s line total (price * quantity).

-- Find the average order value per customer.

-- Find the most sold product (highest quantity sum).

select 
p.product_id,count(*) as order_cnt from Products as p 
join Order_Items as o on 
p.product_id = o.product_id group by p.product_id 
order by order_cnt desc 
offset 0 rows fetch next 2 row only;



-- EMPLOYEES + DEPARTMENTS

-- List all employees and their department names.

-- Show employees who do not belong to any department.

-- Show all departments and employees (include empty dept).

-- Show employee salary and department location.

-- Show the highest-paid employee in each department.
SELECT e.dep_id,
       e.emp_name,
       e.salary
FROM Employees e
WHERE e.salary = (
        SELECT MAX(e2.salary)
        FROM Employees e2
        WHERE e2.dep_id = e.dep_id
);

select e.dep_id from Employees e
where e.salary = (select max(e.salary) from Employees e where )

-- List departments that have no employees.

-- Show total departmental salary expenditure.

-- Show employees who earn more than their manager.

-- List all employees with their manager’s name.

-- Show employees managed by the same manager.

-- 🔹 ADVANCED JOINS / FILTERS

-- List customers from “Mumbai” who ordered products above ₹1,000 total.

select * from Customers 
SELECT DISTINCT c.customer_id,
       c.name
FROM Customers c
JOIN Orders o 
     ON c.customer_id = o.customer_id
WHERE c.name LIKE 'sa%'
GROUP BY c.customer_id, c.name
HAVING SUM(o.total_amount) > 1000;


-- Find orders that contain more than 3 different products.

-- Show customers whose total spending is above the average customer spending.

-- Show products priced above the average product price.

-- Show all customers and their order count, sorted by highest → lowest.

-- Show all orders that include a product whose name contains “Phone”.

-- Find customers who bought at least 2 different products.

-- List customers who purchased product ID 3.
bought
-- Find customers who  all products in the catalog (hard one).

-- Show the top 3 products by revenue.

