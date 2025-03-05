# E-COMMERCE SQL PROJECT

# SQL Project Description: Order Management System
This project is an Order Management System designed to handle product orders, customer information, shipping details, and product availability. The system utilizes relational database management (RDBMS) concepts such as table creation, relationships, data manipulation, and querying to manage and analyze the orders placed by customers. Below is a detailed description of the components of the project.

# Database Structure Overview
The project consists of four main tables that interact with each other:

# Orders Table (orders): 
This table records the order details including the order ID, order date, shipping date, product name, quantity, delivery status, and whether the item can be returned.

Primary Key: ord_id
Attributes:
ord_id: Unique identifier for each order.
ord_date: Date when the order was placed.
shipping_date: Date when the order is shipped.
product_name: Name of the product ordered.
quantity: Number of items ordered.
delivery_status: Delivery status of the order (e.g., 'Shipped', 'Delivered').
return_available: Whether the product can be returned ('Yes' or 'No').

# Customer Table (customer): This table contains customer details such as their name, city, state, region, and the order associated with them.

Primary Key: cus_id
Foreign Key: ord_id (references orders table)
Attributes:
cus_id: Unique identifier for each customer.
customer_name: Name of the customer.
customer_city: City where the customer resides.
customer_state: State where the customer resides.
region: Region where the customer is located.
ord_id: Foreign key linking to the orders table.

#Product Table (product): This table contains information about the products being ordered, including the product ID, name, description, quantity in stock, price, and associated order.

Primary Key: product_id
Foreign Key: ord_id (references orders table)
Attributes:
product_id: Unique identifier for each product.
product_name: Name of the product.
product_description: Description of the product.
quantity: Number of items available for the product.
price: Price of each product.
ord_id: Foreign key linking to the orders table.

#Shipping Table (shipping): This table tracks the shipping information, including the shipping ID, mode, shipping date, order ID, product ID, and shipping status.

Primary Key: shipping_id
Foreign Keys: ord_id (references orders), product_id (references product)
Attributes:
shipping_id: Unique identifier for each shipping record.
shipping_mode: Mode of shipping (e.g., 'Standard', 'Express').
shipping_date: Date when the product is shipped.
ord_date: Date when the order was placed.
region: Region associated with the order.
ord_id: Foreign key linking to the orders table.
product_id: Foreign key linking to the product table.
shipping_status: Status of shipping (e.g., 'Shipped', 'Not Shipped').
Queries and Operations
The SQL queries in this project address various business needs by interacting with the database tables. Some of the key operations and queries are outlined below:

# Retrieve Basic Information:

* Display all orders, customers, products, and shipping records with basic information using SELECT * queries.
# Order and Product Details:
* Fetch the names and descriptions of all products ordered.
* Find the total quantity of each product ordered by customers using SUM and JOIN operations.
* Retrieve all products that were shipped using 'Express' shipping mode.
# Customer Analysis:
* Find the customers who live in the 'West' region.
* Display the total price of products ordered by each customer.
* Identify customers who have ordered more than three items.
# Regional and Order Status Analysis:
* Get the number of products ordered and total amount spent by customers in each region.
* List all products that have been ordered but are currently 'Shipped'.
* Display customers who ordered products in the 'Midwest' and 'South' regions.
# Shipping and Return Information:
* List orders placed between specific dates (e.g., '2025-02-01' and '2025-02-10').
* Get the total number of orders per region.
* Find products that have been shipped but are in the 'Shipped' status.
# Advanced Queries:

* Find the products with the highest price and the quantity ordered.
* Retrieve customers who ordered 'Smartphone' products.
* Show the customers who have ordered a 'Smartwatch' and the status of their order.
* Display the products shipped to customers in the 'East' region.
# Miscellaneous Queries:
*Show the details of orders where the delivery status is 'Delivered'.
*List the names of customers who have ordered both 'Jeans' and 'Shirt'.
*Get the number of orders that were shipped via 'Standard' shipping mode.
