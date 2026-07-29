-- ==========================================================
-- SQL Practice Sheet 15 : Advanced SQL Case Studies
-- Topics:
-- Business Scenarios using JOINs, GROUP BY, HAVING,
-- Subqueries, CTEs & Window Functions
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_15;
USE practice_sheet_15;

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;

CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30)
);

INSERT INTO customers VALUES
(1,'Aarav','Pune'),
(2,'Diya','Mumbai'),
(3,'Kabir','Delhi'),
(4,'Anaya','Bengaluru'),
(5,'Vihaan','Hyderabad');

CREATE TABLE products(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(101,'Laptop','Electronics',65000),
(102,'Keyboard','Electronics',1500),
(103,'Office Chair','Furniture',7000),
(104,'Monitor','Electronics',12000),
(105,'Desk','Furniture',9000);

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id)
);

INSERT INTO orders VALUES
(1001,1,101,1,'2026-01-10'),
(1002,1,102,2,'2026-01-10'),
(1003,2,104,1,'2026-02-05'),
(1004,3,103,3,'2026-02-12'),
(1005,2,101,1,'2026-03-01'),
(1006,4,105,2,'2026-03-20'),
(1007,1,104,1,'2026-04-02'),
(1008,5,102,5,'2026-04-15'),
(1009,3,101,1,'2026-05-01'),
(1010,5,103,1,'2026-05-18');

-- ==========================================================
-- Write only the SQL query below each question.
-- ==========================================================

-- Q1. Display every order with customer name and product name.

-- Q2. Calculate the total amount of each order
-- (quantity * price).

-- Q3. Find the total spending of each customer.

-- Q4. Display the top 3 customers by total spending.

-- Q5. Find the best-selling product by quantity sold.

-- Q6. Find the highest revenue-generating product.

-- Q7. Display the average order value for each customer.

-- Q8. Find customers who have never placed an order.

-- Q9. Find products that have never been ordered.

-- Q10. Display monthly sales revenue.

-- Q11. Display category-wise total revenue.

-- Q12. Find the customer with the highest number of orders.

-- Q13. Display each customer's latest order.

-- Q14. Rank customers by total spending using DENSE_RANK().

-- Q15. Display the running total of monthly revenue.

-- Q16. Find customers whose spending is above the average customer spending.

-- Q17. Find the second highest revenue-generating product.

-- Q18. Display the top-selling product in each category.

-- Q19. Find the percentage contribution of each product
-- to total revenue.

-- Q20. Create a CTE to calculate customer spending,
-- then display only customers spending above ₹50000.

-- Q21. Find the month with the highest sales revenue.

-- Q22. Display the top 2 products purchased by each customer.

-- Q23. Find customers who bought products from more than
-- one category.

-- Q24. Display city-wise total revenue.

-- Q25. Build a sales report showing:
-- Customer Name, Product Name, Category,
-- Quantity, Revenue, Order Date.
