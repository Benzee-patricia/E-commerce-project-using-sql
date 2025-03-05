create database ord;
use ord;
-- drop database ord;
create table orders( ord_id varchar(5) primary key,ord_date date,shipping_date date,product_name varchar(30),quantity int,delivery_status varchar(10),return_available varchar(10));
INSERT INTO orders (ord_id, ord_date, shipping_date, product_name, quantity, delivery_status, return_available)
VALUES
('ORD01', '2025-02-01', '2025-02-05', 'Laptop', 2, 'Shipped', 'Yes'),
('ORD02', '2025-02-02', '2025-02-06', 'Smartphone', 1, 'Delivered', 'Yes'),
('ORD03', '2025-02-03', '2025-02-07', 'Headphones', 3, 'Delivered', 'No'),
('ORD04', '2025-02-04', '2025-02-08', 'Refrigerator', 1, 'Shipped', 'Yes'),
('ORD05', '2025-02-05', '2025-02-09', 'Smartwatch', 2, 'Shipped', 'Yes'),
('ORD06', '2025-02-06', '2025-02-10', 'Washing Machine', 1, 'Delivered', 'Yes'),
('ORD07', '2025-02-07', '2025-02-11', 'Tablet', 3, 'Shipped', 'Yes'),
('ORD08', '2025-02-08', '2025-02-12', 'Blender', 2, 'Delivered', 'Yes'),
('ORD09', '2025-02-09', '2025-02-13', 'Smartphone', 1, 'Delivered', 'No'),
('ORD10', '2025-02-10', '2025-02-14', 'Jeans', 3, 'Shipped', 'Yes'),
('ORD11', '2025-02-11', '2025-02-15', 'T-Shirt', 5, 'Delivered', 'Yes'),
('ORD12', '2025-02-12', '2025-02-16', 'Microwave Oven', 1, 'Shipped', 'Yes'),
('ORD13', '2025-02-13', '2025-02-17', 'Laptop', 1, 'Shipped', 'Yes'),
('ORD14', '2025-02-14', '2025-02-18', 'Headphones', 2, 'Delivered', 'No'),
('ORD15', '2025-02-15', '2025-02-19', 'Winter Jacket', 1, 'Shipped', 'Yes'),
('ORD16', '2025-02-16', '2025-02-20', 'Smartwatch', 3, 'Shipped', 'Yes'),
('ORD17', '2025-02-17', '2025-02-21', 'Coffee Maker', 2, 'Delivered', 'Yes'),
('ORD18', '2025-02-18', '2025-02-22', 'Tablet', 2, 'Shipped', 'Yes'),
('ORD19', '2025-02-19', '2025-02-23', 'Shirt', 4, 'Delivered', 'No'),
('ORD20', '2025-02-20', '2025-02-24', 'Laptop', 2, 'Shipped', 'Yes'),
('ORD21', '2025-02-21', '2025-02-25', 'Refrigerator', 1, 'Delivered', 'Yes'),
('ORD22', '2025-02-22', '2025-02-26', 'Smartphone', 2, 'Shipped', 'Yes'),
('ORD23', '2025-02-23', '2025-02-27', 'Jeans', 1, 'Delivered', 'Yes'),
('ORD24', '2025-02-24', '2025-02-28', 'Microwave Oven', 1, 'Shipped', 'No'),
('ORD25', '2025-02-25', '2025-03-01', 'Blender', 3, 'Delivered', 'Yes');


create table customer(cus_id varchar(5) primary key, customer_name varchar(30),customer_city varchar(30),customer_state varchar(20),region varchar(10), ord_id varchar(5), foreign key (ord_id)references orders(ord_id));
INSERT INTO customer (cus_id, customer_name, customer_city, customer_state, region, ord_id)
VALUES
('C001', 'John Doe', 'New York', 'NY', 'East', 'ORD01'),
('C002', 'Jane Smith', 'Los Angeles', 'CA', 'West', 'ORD02'),
('C003', 'Bob Johnson', 'Chicago', 'IL', 'Midwest', 'ORD03'),
('C004', 'Alice Brown', 'Houston', 'TX', 'South', 'ORD04'),
('C005', 'Charlie Davis', 'Phoenix', 'AZ', 'West', 'ORD03'),
('C006', 'David Wilson', 'San Antonio', 'TX', 'South', 'ORD06'),
('C007', 'Emily Moore', 'Philadelphia', 'PA', 'East', 'ORD07'),
('C008', 'Michael Taylor', 'Dallas', 'TX', 'South', 'ORD08'),
('C009', 'Rachel Clark', 'San Diego', 'CA', 'West', 'ORD09'),
('C010', 'James Lewis', 'Austin', 'TX', 'South', 'ORD03'),
('C011', 'Sophia Walker', 'Charlotte', 'NC', 'East', 'ORD11'),
('C012', 'William Harris', 'Detroit', 'MI', 'Midwest', 'ORD12'),
('C013', 'Olivia Martinez', 'San Jose', 'CA', 'West', 'ORD13'),
('C014', 'Liam Young', 'Seattle', 'WA', 'West', 'ORD14'),
('C015', 'Amelia King', 'Boston', 'MA', 'East', 'ORD15'),
('C016', 'Lucas Scott', 'Denver', 'CO', 'West', 'ORD16'),
('C017', 'Mia Adams', 'Minneapolis', 'MN', 'Midwest', 'ORD25'),
('C018', 'Ethan Nelson', 'Miami', 'FL', 'South', 'ORD18'),
('C019', 'Isabella Carter', 'Portland', 'OR', 'West', 'ORD19'),
('C020', 'Mason Rodriguez', 'Nashville', 'TN', 'South', 'ORD03'),
('C021', 'Harper Lee', 'Las Vegas', 'NV', 'West', 'ORD21'),
('C022', 'Alexander Perez', 'Indianapolis', 'IN', 'Midwest', 'ORD12'),
('C023', 'Avery Mitchell', 'Salt Lake City', 'UT', 'West', 'ORD23'),
('C024', 'Evelyn White', 'Tampa', 'FL', 'South', 'ORD24'),
('C025', 'Sebastian Green', 'Sacramento', 'CA', 'West', 'ORD25');

create table product( product_id varchar(5) primary key,product_name varchar(20),product_description varchar(100),quantity int,price int,ord_id varchar(5),foreign key (ord_id)references orders(ord_id));
INSERT INTO product (product_id, product_name, product_description, quantity, price, ord_id)
VALUES
('P001', 'Laptop', 'High performance laptop for gaming and work', 50, 50000, 'ORD01'),
('P002', 'Smartphone', 'Latest model smartphone with 5G support', 150, 1500, 'ORD02'),
('P003', 'Headphones', 'Noise-canceling wireless headphones with long battery life', 200, 150, 'ORD03'),
('P004', 'Refrigerator', 'Energy-efficient refrigerator with smart features', 30, 18000, 'ORD04'),
('P005', 'Smartwatch', 'Fitness tracking smartwatch with heart rate monitor', 100, 200, 'ORD05'),
('P006', 'Washing Machine', 'Top-load washing machine with quick wash cycle', 40, 13350, 'ORD06'),
('P007', 'Tablet', 'Portable tablet with a large screen and fast processor', 60, 14000, 'ORD07'),
('P008', 'Blender', 'High-speed kitchen blender for smoothies and shakes', 80, 500, 'ORD08'),
('P009', 'Jeans', 'Comfortable denim jeans available in multiple sizes', 300, 500, 'ORD10'),
('P010', 'T-Shirt', 'Cotton T-shirt, available in various colors', 500, 200, 'ORD11'),
('P011', 'Microwave Oven', 'Compact microwave oven with multiple presets', 45, 1150, 'ORD12'),
('P012', 'Winter Jacket', 'Waterproof and insulated winter jacket for cold weather', 100, 1120, 'ORD15'),
('P013', 'Coffee Maker', 'Automatic coffee maker with programmable settings', 50, 400, 'ORD17'),
('P014', 'Shirt', 'Formal shirt in various sizes and colors for men and women', 200, 230, 'ORD23'),
('P015', 'Smart TV', '4K Ultra HD smart TV with built-in streaming apps', 25, 14800, 'ORD01'),
('P016', 'Air Conditioner', 'Energy-efficient air conditioner with remote control', 15, 22600, 'ORD14'),
('P017', 'Vitamix Blender', 'Commercial-grade blender for smoothies and soups', 30, 2250, 'ORD17'),
('P018', 'Electric Kettle', 'Cordless electric kettle with fast boiling function', 100, 335, 'ORD18'),
('P019', 'Hair Dryer', 'Professional hair dryer with multiple heat settings', 150, 740, 'ORD19'),
('P020', 'Gaming Chair', 'Ergonomic gaming chair with adjustable features', 50, 900, 'ORD20'),
('P021', 'Desk Lamp', 'LED desk lamp with adjustable brightness and angle', 80, 245, 'ORD21'),
('P022', 'Stand Mixer', 'Kitchen stand mixer with multiple attachments', 25, 450, 'ORD22'),
('P023', 'Leather Jacket', 'Premium leather jacket for men', 30, 300, 'ORD23'),
('P024', 'Sneakers', 'Comfortable sneakers for sports and casual wear', 100, 260, 'ORD24'),
('P025', 'Luggage Set', '3-piece luggage set with durable wheels and compartments', 20, 350, 'ORD25');

create table shipping( shipping_id varchar(5)primary key,shipping_mode varchar(20),shipping_date date,ord_date date,region varchar(10),ord_id varchar(5),product_id varchar(5),shipping_status varchar(20),foreign key (ord_id)references orders(ord_id) ,foreign key (product_id)references product(product_id));
INSERT INTO shipping (shipping_id, shipping_mode, shipping_date, ord_date, region, ord_id, product_id,shipping_status)
VALUES
('S001', 'Standard', '2025-02-06', '2025-02-01', 'East', 'ORD01', 'P001',"shipped"),
('S002', 'Express', '2025-02-07', '2025-02-02', 'West', 'ORD02', 'P002',"not_shipped"),
('S003', 'Standard', '2025-02-08', '2025-02-03', 'Midwest', 'ORD03', 'P003',"shipped"),
('S004', 'Standard', '2025-02-09', '2025-02-04', 'South', 'ORD04', 'P004',"shipped"),
('S005', 'Express', '2025-02-10', '2025-02-05', 'West', 'ORD05', 'P005',"shipped"),
('S006', 'Standard', '2025-02-11', '2025-02-06', 'South', 'ORD06', 'P006',"not_shipped"),
('S007', 'Express', '2025-02-12', '2025-02-07', 'East', 'ORD07', 'P007',"not_shipped"),
('S008', 'Standard', '2025-02-13', '2025-02-08', 'South', 'ORD08', 'P008',"not_shipped"),
('S009', 'Express', '2025-02-14', '2025-02-09', 'West', 'ORD09', 'P002',"shipped"),
('S010', 'Standard', '2025-02-15', '2025-02-10', 'South', 'ORD10', 'P009',"shipped"),
('S011', 'Express', '2025-02-16', '2025-02-11', 'East', 'ORD11', 'P010',"shipped"),
('S012', 'Standard', '2025-02-17', '2025-02-12', 'Midwest', 'ORD12', 'P011',"not_shipped"),
('S013', 'Standard', '2025-02-18', '2025-02-13', 'West', 'ORD13', 'P013',"not_shipped"),
('S014', 'Express', '2025-02-19', '2025-02-14', 'West', 'ORD14', 'P012',"not_shipped"),
('S015', 'Standard', '2025-02-20', '2025-02-15', 'East', 'ORD15', 'P015',"not_shipped"),
('S016', 'Express', '2025-02-21', '2025-02-16', 'West', 'ORD16', 'P005',"shipped"),
('S017', 'Standard', '2025-02-22', '2025-02-17', 'Midwest', 'ORD17', 'P017',"not_shipped"),
('S018', 'Express', '2025-02-23', '2025-02-18', 'South', 'ORD18', 'P018',"shipped"),
('S019', 'Standard', '2025-02-24', '2025-02-19', 'West', 'ORD19', 'P014',"not_shipped"),
('S020', 'Express', '2025-02-25', '2025-02-20', 'South', 'ORD20', 'P020',"not_shipped"),
('S021', 'Standard', '2025-02-26', '2025-02-21', 'West', 'ORD21', 'P007',"shipped"),
('S022', 'Express', '2025-02-27', '2025-02-22', 'Midwest', 'ORD22', 'P003',"shipped"),
('S023', 'Standard', '2025-02-28', '2025-02-23', 'West', 'ORD23', 'P013',"shipped"),
('S024', 'Express', '2025-03-01', '2025-02-24', 'South', 'ORD24', 'P008',"not_shipped"),
('S025', 'Standard', '2025-03-02', '2025-02-25', 'West', 'ORD25', 'P001',"shipped");

select* from orders;
select* from customer;
select* from product;
select* from shipping;
-- List all orders with their corresponding product details.
select product_name,product_description from product;
--  Find the total quantity of each product ordered by customers.
SELECT SUM(orders.quantity) AS total_quantity, product.product_name FROM orders JOIN product ON orders.ord_id = product.ord_id GROUP BY product.product_name;
-- Retrieve a list of customers who live in the 'West' region.
select customer_name from customer where region="west";
-- Display the total price of products ordered by each customer.
select sum(price)as total_price,product_name from product group by product_name;
--  Show all products that were shipped using 'Express' shipping mode.
select product.product_name,product.product_id,shipping.shipping_mode from product join shipping on product.product_id=shipping.product_id where shipping_mode="express";
-- Identify customers who have ordered more than 3 items in total.
select (count(ord_id)) from customer group by ord_id;
select (count(ord_id)>3) from customer group by ord_id;
-- Get the number of products ordered and the total amount spent by customers in each region.
select count(product.product_name),sum(product.price),shipping.region from product join shipping on product.product_id=shipping.product_id group by shipping.region;
--  List all products that have been ordered but are currently 'Shipped'.
select shipping.product_id,product.product_id,shipping.shipping_status from shipping join product on shipping.product_id=product.product_id where shipping.shipping_status="shipped";
-- Find the products with the highest price, and the quantity ordered for each
select product_name,max(price),max(quantity) from product group by product_name;
--  Retrieve the names of customers who ordered 'Smartphone' products
select customer.customer_name from customer join orders on customer.ord_id=orders.ord_id join product on product.ord_id=orders.ord_id  where orders.product_name="smartphone" ;
select customer.customer_name,customer.cus_id,orders.product_name from customer join orders on customer.ord_id=orders.ord_id where orders.product_name="smartphone";
select customer.customer_name,customer.cus_id,product.product_name from customer join product on customer.ord_id=product.ord_id where product.product_name="smartphone";
--  Show the customers who have ordered a 'Smartwatch' and the status of their order.
select customer.customer_name,customer.cus_id,orders.product_name,orders.delivery_status from customer join orders on customer.ord_id=orders.ord_id where orders.product_name="smartwatch";
--  Display the products that have been shipped to customers in the 'East' region.
select product.product_name,shipping.region from product join shipping on shipping.product_id=product.product_id where shipping.region="east"; 
--  List the orders that were placed between '2025-02-01' and '2025-02-10'.
select product_name,ord_date from orders where ord_date between  '2025-02-01' and '2025-02-10';
-- Find the total number of orders per region.
select count(orders.ord_id)as tot_no_orders,customer.region from orders join customer where customer.ord_id=orders.ord_id group by region;
--  Retrieve all products with a quantity ordered greater than 2.
select ord_id,product_name,(quantity>2) from orders group by ord_id,product_name;
-- Show the details of orders where the delivery status is 'Delivered'.
select * from orders where delivery_status="delivered";
--  Display all customers who have ordered products in 'Midwest' and 'South' regions
select customer_name,cus_id ,region from customer where region="midwest" or region="south";
--  List the names of customers who have ordered both a 'Jeans' and a 'Shirt'
select customer.customer_name,orders.product_name ,orders.ord_id from customer join orders on customer.ord_id=orders.ord_id where orders.product_name="jeans" or orders.product_name="shirt";
-- Show the number of orders that were shipped via 'Standard' shipping mode.
select count(ord_id) from shipping where shipping_mode="standard";
-- Show the products ordered by customers who have 'No' return available.
select product_name from orders where return_available="no";
-- Get the total number of orders made by customers in the 'South' region, where the order status is 'Shipped
select count(ord_id),region,shipping_status from shipping where region="south" and shipping_status="shipped";
-- orders which are not choosen by customer
select customer.customer_name,customer.cus_id,orders.ord_id,orders.product_name from customer right join orders on customer.ord_id=orders.ord_id where customer.customer_name is null and customer.cus_id is null;