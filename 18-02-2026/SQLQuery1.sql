
create table Users(
user_id int identity(1,1) primary key,
user_name varchar(100) not null,
user_email varchar(250) unique not null,
phone_no bigint not null,
status bit not null,
created_at datetime default getdate()
)

create table Restaurant(
rest_id int identity(1,1) primary key,
name varchar(200) not null,
is_active bit not null,
is_open bit not null,
created_at datetime default getdate()
)
DBCC CHECKIDENT ('Restaurant', RESEED, 100);
DBCC CHECKIDENT ('Restaurant');

select * from Users
insert into Restaurant 
(name,is_active,is_open,created_at)
values
('Girl_Friend_Mandi',1,1,'2024-01-01'),
('Krithunga',1,1,'2023-05-04'),
('Joint_All',1,1,'2022-07-07'),
('Jail_Mandi',1,1,'2022-05-27'),
('Lucky',1,1,'2020-07-17'),
('Shah_Gouse',1,1,'2021-08-02'),
('Rayalaseema Ruchulu',1,0,'2025-08-01'),
('Roast CCx',1,1,'2025-12-02'),
('Terrai',1,1,'2024-11-07'),
('Manam Cafe',1,1,'2023-11-19'),
('Arabian Mandi',1,1,'2023-10-22');

select * from Restaurant






insert into Users 
(user_name,user_email,phone_no,status,created_at)
values 
('amogh','amogh@gmail.com',9490962746,1,'2026-02-19'),
('jaideep','jaideep@gmail.com',6302890645,1,'2026-02-19'),
('rishi','rishi@gmail.com',7894561230,1,'2026-02-18'),
('snehith','snehith@gmail.com',9490962746,1,'2026-02-18'),
('prudhvi','prudhvi@gmail.com',8976543210,1,'2026-02-18'),
('sai','sai@gmail.com',9876543210,1,'2026-02-17'),
('preetham','preetham@gmail.com',7986543210,1,'2026-02-18'),
('shankar','shankar@gmail.com',8975642310,1,'2026-02-18'),
('anudeep','andueep@gmail.com',7789456123,1,'2026-02-19'),
('deepesh','deepesh@gmail.com',8897456123,1,'2026-02-18'),
('karthik','karthik@gmail.com',8897789456,0,'2026-01-18'),
('rishab','rishab@gmail.com',8877994455,1,'2026-02-19'),
('sathwik','sathwik@gmail.com',8639828321,0,'2026-02-18'),
('masna','masna@gmail.com',9988774455,1,'2026-02-19');








create table Menu_items(
	menu_id int identity(200,1) primary key,
	rest_id int not null,
	name varchar(150) not null,
	price decimal(10,2) not null,
	is_available bit not null,
	created_at datetime default getdate()
	foreign key (rest_id) references Restaurant(rest_id)
);

select * from Restaurant
select * from Menu_items
insert into Menu_items
(rest_id, name, price, is_available, created_at)
values
(101, 'Chicken Biryani', 139.00, 1, '2021-01-01'),
(101, 'Chicken Biryani Full', 240.00, 1, '2021-01-01'),
(101, 'Paneer Biryani', 149.00, 1, '2021-01-01'),
(101, 'Mutton Biryani Single', 220.00, 1, '2021-01-01'),
(101, 'Mutton Biryani Full', 320.00, 1, '2021-01-01'),
(110, 'Chicken 65', 180.00, 1, '2021-01-01'),
(110, 'Butter Chicken', 260.00, 1, '2021-01-01'),
(110, 'Tandoori Roti', 20.00, 1, '2021-01-01'),
(110, 'Veg Manchurian', 170.00, 1, '2021-01-01'),
(112, 'Haleem', 299.00, 1, '2022-05-01'),
(112, 'Chicken Shawarma', 120.00, 1, '2022-05-01'),
(112, 'Mutton Haleem Family Pack', 999.00, 1, '2022-05-01'),
(113, 'Shadab Special Biryani', 250.00, 1, '2022-02-05'),
(113, 'Chicken Fry Piece Biryani', 199.00, 1, '2022-02-05'),
(114, 'Chicken Mandi', 350.00, 1, '2021-06-01'),
(114, 'Mutton Mandi', 550.00, 1, '2021-06-01'),
(119, 'Arabian Chicken Mandi', 400.00, 1, '2024-01-01'),
(119, 'Juicy Alfaham', 320.00, 1, '2024-01-01'),
(120, 'Natu Kodi Pulusu', 280.00, 1, '2023-05-04'),
(120, 'Rayalaseema Chicken Fry', 260.00, 1, '2023-05-04'),
(121, 'Veg Combo Meal', 150.00, 1, '2022-07-07'),
(121, 'Chicken Combo Meal', 220.00, 1, '2022-07-07'),
(122, 'Special Chicken Mandi', 380.00, 1, '2022-05-27'),
(123, 'Lucky Special Biryani', 210.00, 1, '2020-07-17'),
(124, 'Shah Gouse Mutton Biryani', 280.00, 1, '2021-08-02'),
(125, 'Ragi Sangati with Natu Kodi', 300.00, 1, '2025-08-01'),
(126, 'Grilled Chicken', 270.00, 1, '2025-12-02'),
(127, 'Terai Special Thali', 250.00, 1, '2024-11-07'),
(128, 'Cold Coffee', 120.00, 1, '2023-11-19'),
(129, 'Arabian Mutton Mandi', 600.00, 1, '2023-10-22');


select m.name,m.price,m.is_available from Restaurant as r 
inner join Menu_items as m on 
r.rest_id = m.rest_id where r.rest_id=112


create table Carts
  (cart_id int identity(1,1) primary key,
	user_id int not null,
	rest_id int not null,
	created_at datetime default getdate(),
	foreign key (user_id) references  Users(user_id),
	foreign key (rest_id) references Restaurant(rest_id)
 );

select * from Users
select * from Restaurant
insert into Carts (user_id, rest_id)
values
(2, 101),
(2, 110),
(2, 112),
(2, 113),
(3, 114),
(3, 119),
(4, 120),
(4, 121),
(5, 122),
(5, 123);

select * from Carts


create table Cart_items 
(cart_item_id int identity(1,1) primary key,
cart_id int not null,
menu_id int not null,
quantity int not null check(quantity>0),
foreign key (cart_id) references Carts(cart_id),
foreign key (menu_id) references Menu_items(menu_id)
)


SELECT user_id FROM Users;
SELECT menu_id FROM Menu_items;
SELECT rest_id FROM Restaurant;

DELETE FROM Cart_items;
DBCC CHECKIDENT ('Cart_items', RESEED, 0);

INSERT INTO Cart_items (cart_id, menu_id, quantity)
VALUES

(2, 1, 2),
(2, 3, 1),

(3, 7, 1),
(3, 8, 2),

(4, 11, 1),
(4, 12, 1),

(5, 14, 2),

(6, 16, 1),
(6, 17, 1),

(7, 18, 2),

(8, 20, 1),

(9, 22, 2),

(10, 24, 1),

(11, 25, 1);






select * from Users
select * from Restaurant 
select * from Menu_items
select * from Carts
select * from Cart_items


create table Orders (
    order_id int IDENTITY(0,1) PRIMARY KEY,
    user_id int not null,
    rest_id int not null,
    status varchar(30) not null,
    sub_total decimal(10,2) not null,
    tax_amount decimal(10,2) not null,
    delivery_fee decimal(10,2) not null,
    discount_amount decimal(10,2) not null default 0,
    final_amount decimal(10,2) not null,
    delivery_address varchar(255) not null,
    contact_phone_no BIGINT NOT NULL,
    placed_at datetime2(7) default Sysdatetime(),
    completed_at datetime NULL,
    cancel_reason varchar(255) NULL,
    foreign key (user_id) references Users(user_id),
    foreign key (rest_id) references Restaurant(rest_id)
);

select * from Orders
DBCC CHECKIDENT ('Orders', RESEED, 0);


insert into Orders
(user_id, rest_id, status, sub_total, tax_amount, delivery_fee,discount_amount, final_amount, delivery_address, contact_phone_no,placed_at, completed_at, cancel_reason)
values

(2, 110, 'delivered',620.00, 31.00, 40.00,20.00, 671.00,'JNTU, Hyderabad',7396264453,'2026-02-19 09:00:00.0000000','2026-02-19 09:45:00',NULL),


(2, 112, 'preparing',419.00, 20.95, 35.00,0.00, 474.95,'Addagutta, Hyderabad',7396264453,SYSDATETIME(),null,null),

(2, 113, 'cancelled',250.00, 12.50, 30.00,0.00, 292.50,'Addagutta, Hyderabad',7396264453,'2026-02-18 11:00:00.0000000',NULL,'Restaurant delay'),

(3, 114, 'delivered',900.00, 45.00, 50.00,50.00, 945.00,'Gachibowli, Hyderabad',9490962746,'2026-02-17 18:30:00.0000000','2026-02-17 19:15:00',NULL),

(3, 119, 'out_for_delivery',720.00, 36.00, 40.00,0.00, 796.00,'Kondapur, Hyderabad',9490962746,SYSDATETIME(),NULL,NULL),

(4, 120, 'accepted',280.00, 14.00, 30.00,0.00, 324.00,'Miyapur, Hyderabad',6302890645,SYSDATETIME(),NULL,NULL),

(4, 121, 'delivered',220.00, 11.00, 25.00,0.00, 256.00,'Nizampet, Hyderabad',6302890645,'2026-02-18 13:00:00.0000000','2026-02-18 13:40:00',NULL),

(5, 122, 'placed',380.00, 19.00, 35.00,0.00, 434.00,'LB Nagar, Hyderabad',7894561230,SYSDATETIME(),NULL,NULL),

(5, 123, 'delivered',210.00, 10.50, 30.00,10.00, 240.50,'Banjara Hills, Hyderabad',7894561230,'2026-02-19 08:00:00.0000000','2026-02-19 08:35:00',NULL);

create table Order_items(
    order_item_id int IDENTITY(1,1) primary key,
    order_id int not null,
    menu_id int not null,
    item_name varchar(150) not null,
    price_snapshot decimal(10,2) not null,
    quantity int not null check (quantity > 0),
    total_price decimal(10,2) not null,
    foreign key (order_id) references Orders(order_id),
    foreign key (menu_id)  references Menu_items(menu_id)
);


select * from Orders
select * from Menu_items
insert into Order_items
(order_id, menu_id, item_name, price_snapshot, quantity, total_price)
values

(1, 7, 'Chicken 65', 180.00, 1, 180.00),
(1, 8, 'Butter Chicken', 260.00, 2, 520.00),
(2, 11, 'Haleem', 299.00, 1, 299.00),
(2, 12, 'Chicken Shawarma', 120.00, 1, 120.00),

(3, 14, 'Shadab Special Biryani', 250.00, 2, 500.00),

(4, 16, 'Chicken Mandi', 350.00, 1, 350.00),
(4, 17, 'Mutton Mandi', 550.00, 2, 1100.00),

(5, 18, 'Arabian Chicken Mandi', 400.00, 1, 400.00),

(6, 19, 'Juicy Alfaham', 320.00, 2, 640.00),

(7, 21, 'Rayalaseema Chicken Fry', 260.00, 1, 260.00),

(8, 23, 'Chicken Combo Meal', 220.00, 3, 660.00),

(9, 25, 'Lucky Special Biryani', 210.00, 1, 210.00);

select * from Order_items

create table Order_status_logs (
    log_id int IDENTITY(1,1) primary key,
    order_id int not null,
    old_status varchar(30),
    new_status varchar(30) not null,
    changed_at datetime2(7) default sysdatetime(),
    foreign key (order_id) references Orders(order_id)
);

insert into Order_status_logs (order_id, old_status, new_status)
values
(1, NULL, 'placed'),
(1, 'placed', 'accepted'),
(1, 'accepted', 'preparing'),
(1, 'preparing', 'out_for_delivery'),
(1, 'out_for_delivery', 'delivered'),
(2, NULL, 'placed'),
(2, 'placed', 'accepted'),
(2, 'accepted', 'preparing'),
(3, NULL, 'placed'),
(3, 'placed', 'accepted'),
(3, 'accepted', 'cancelled'),
(4, NULL, 'placed'),
(4, 'placed', 'accepted'),
(4, 'accepted', 'preparing'),
(4, 'preparing', 'out_for_delivery'),
(4, 'out_for_delivery', 'delivered'),
(5, NULL, 'placed'),
(5, 'placed', 'accepted'),
(5, 'accepted', 'preparing'),
(5, 'preparing', 'out_for_delivery'),
(6, NULL, 'placed'),
(6, 'placed', 'accepted'),
(7, NULL, 'placed'),
(7, 'placed', 'accepted'),
(7, 'accepted', 'preparing'),
(7, 'preparing', 'out_for_delivery'),
(7, 'out_for_delivery', 'delivered'),
(8, NULL, 'placed'),
(9, NULL, 'placed'),
(9, 'placed', 'accepted'),
(9, 'accepted', 'preparing'),
(9, 'preparing', 'out_for_delivery'),
(9, 'out_for_delivery', 'delivered');





select  * from Orders
select * from Order_items
select * from Order_status_logs


select order_id,Max(log_id) from Order_status_logs group by order_id
having max(log_id) = (select log_id from Order_status_logs)	

select osl.order_id,osl.new_status from Order_status_logs as osl
join 
(select order_id,max(log_id) as max_log from Order_status_logs group by order_id) as x on  
osl.order_id= x.order_id and osl.log_id = x.max_log








select * from Orders where cast(placed_at as date) = cast(getdate() as date)
--Find total number of orders placed today 
select count(*) as total_order_placed_today from Orders where cast(placed_at as date) = cast(getdate() as date)

--Calculate total revenue generated today
select sum(final_amount) as total_revenue from Orders  where cast(placed_at as date) = cast(getdate() as date)

--Fetch orders which are currently in 'preparing' status 

select * from Orders where status = 'preparing'


--Update order status to 'delivered' 

update Orders 
set status='preparing' where order_id=8


--Find cancelled orders with cancel reason 
select status,cancel_reason from Orders where status = 'cancelled'




-- Fetch all ACTIVE users.

-- (Users where status = 1)
select * from Users where status=1

-- 🔹 Q2. Fetch all OPEN restaurants.
	
-- (Restaurants where is_open = 1)
	select * from Restaurant where is_open=1

-- 🔹 Q3. List menu items for a specific restaurant.

-- Fetch all menu items for restaurant id 110.
		select * from Restaurant where rest_id=110

-- 🔹 Q4. Count how many menu items each restaurant has.
		select rest_id,count(*) from Menu_items group by rest_id
-- 🔹 Q5. Get all carts created by user_id = 2.
		select * from Carts where user_id=2
-- 🔹 Q6. Fetch cart items with menu names and prices.
-- Join Cart_items and Menu_items.
		select mt.name,mt.price from Cart_items as ct 
		join Menu_items as mt on 
		ct.menu_id=mt.menu_id
		
-- 🔹 Q7. Get all orders with user name and restaurant name.
		select o.order_id,u.user_name,r.name from Orders as o 
		join Users as u on 
		o.user_id = u.user_id 
		join Restaurant as r on 
		r.rest_id = o.rest_id
-- 🔹 Q8. Find total number of delivered orders.
		select count(*) as delivered_count from Orders where status ='delivered'
 -- 🔹 Q9. Get all cancelled orders with cancel reason.
		select status,cancel_reason from Orders where status = 'cancelled'
-- 🔹 Q🔟. Find all orders placed today.
		select count(*) from Orders 
		where  cast(placed_at as date) =cast(getdate() as date) 
	


	select * from Orders
	select * from Order_items
	select * from Restaurant
	select * from Menu_items
	select * from Carts
	select * from Cart_items
-- Q11. Find total revenue generated by each restaurant.
	select o.rest_id,sum(final_amount) from Orders as o 
	join 
	(select rest_id from Orders group by rest_id) as x
	on 
	x.rest_id = o.rest_id where status!='cancelled'
-- Q12. Show users who placed at least 2 orders. 
		select u.user_id,count(*) from Orders as o 
		join Users as u on 
		o.user_id = u.user_id  group by u.user_id having count(*)>=2
-- Q13. Find restaurants that never received an order.
		select r.rest_id,r.name from Restaurant as r 
		left join Orders as o on 
		r.rest_id  = o.rest_id where o.order_id is null
-- Q14. Show each order with number of items in it.
-- (use Orders + Order_items)

	select o.order_id,sum(quantity) as total_items from Orders as o 
	join Order_items as ot on 
	o.order_id = ot.order_id group by o.order_id

-- Q15. Find the most expensive menu item in each restaurant.
		
-- (no window function)
	select r.rest_id,max(mt.price) from Restaurant as r 
	join Menu_items as mt on 
	r.rest_id = mt.rest_id
	group by r.rest_id
	

-- Q16. Show the latest status for each order
	
-- (using Order_status_logs)
	select osl.* from Order_status_logs as osl
	join 
	(select order_id,max(log_id) as max_log from Order_status_logs group by order_id) as x on 
	x.order_id = osl.order_id and x.max_log = osl.log_id
	
-- Q17. Show total items ordered per restaurant.
		select o.rest_id, sum(oi.quantity) as total_items
		from Orders o
		join Order_items oi on o.order_id = oi.order_id
		group by o.rest_id;

-- Q18. Show users who never created a cart.
		select u.user_id,u.user_name from Users as u 
		left join Carts as c on 
		u.user_id = c.user_id 
		where c.cart_id is null 
-- Q19. Get all orders with subtotal greater than 500.
		select * from Orders where sub_total>500
-- Q20. Find restaurants with more than 5 menu items.
		select r.rest_id,r.name from Restaurant as r 
		join Menu_items as mt on 
		r.rest_id = mt.rest_id group by r.rest_id,r.name having count(r.rest_id) > 5



-- Q21. Find the restaurant with the highest total revenue.

-- (Return rest_id + name + total revenue)

-- 🔹 Q22. Find the user who placed the highest number of orders.

-- (Show user_id, user_name, order_count)

-- 🔹 Q23. Find all orders that took more than 40 minutes to deliver.

-- (delivered orders only)

-- Hint: DATEDIFF(minute, placed_at, completed_at)

-- 🔹 Q24. Find restaurants whose average order amount is greater than 500.
-- 🔹 Q25. Find the top 3 most ordered menu items across all orders.

-- (Based on total quantity)

-- 🔹 Q26. For each user, find their latest order amount.

-- (NO window functions allowed)

-- 🔹 Q27. Find users who placed an order but never created a cart.

-- (tricky)

-- 🔹 Q28. Find restaurants that have menu items priced above the restaurant’s average menu price.

-- (show rest_id, menu_id, name, price)

-- 🔹 Q29. Find orders that skipped the 'preparing' status.

-- For example: placed → accepted → out_for_delivery.

-- 🔹 Q30. Find the restaurant whose menu has the highest number of expensive items (price > 300).