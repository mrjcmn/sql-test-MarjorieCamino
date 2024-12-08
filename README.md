
Introduction
This project is designed to assess the SQL proficiency of the candidate by having them design, query, and optimize a database schema based on a fictional e-commerce scenario. The test covers database schema design, basic CRUD operations, complex SQL queries, join operations, and performance optimization.

Scenario
The scenario is for a fictional e-commerce platform that sells dog toys, treats, and food. The platform supports the following entities:

1. Users:
Stores personal information about users who can place orders.
2. Products:
Contains information about products such as name, price, category, etc.
3. Orders:
Represents a user's order with details such as order date, order status, and the total amount.
4. OrderDetails:
Stores the relationship between orders and products, including the quantity and subtotal for each product in an order.
5. Reviews:
Stores user ratings and feedback for products.
Relationships:
A user can place multiple orders.
An order can contain multiple products (via OrderDetails).
A product can have many reviews from users.
Tasks
Design Database Schema:
Design the database schema based on the entities and their relationships as described.
Write SQL Queries:
Perform the following operations:
Simple CRUD Operations:
Insert a new user.
Update a product's price.
Delete an old order.
Complex Queries:
Find the total sales by product category for a specific month (e.g., December).
List users who have never placed an order.
Display the top 5 products by average review rating.
Show the number of orders per day for the last 30 days.
Join Operations:
Use joins to connect tables and retrieve data based on the relationships between them.
