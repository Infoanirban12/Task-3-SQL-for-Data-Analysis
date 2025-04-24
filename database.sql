-- CREATE DATABASE
CREATE DATABASE IF NOT EXISTS ecommerce_db;
USE ecommerce_db;

-- 1. USERS TABLE
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    signup_date DATE
);

INSERT INTO users VALUES
(1, 'Alice Smith', 'alice@example.com', '2023-01-10'),
(2, 'Bob Johnson', 'bob@example.com', '2023-02-05'),
(3, 'Charlie Brown', 'charlie@example.com', '2023-03-15');

-- 2. PRODUCTS TABLE
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO products VALUES
(101, 'Smartphone', 'Electronics', 599.99),
(102, 'Laptop', 'Electronics', 999.99),
(103, 'Desk Chair', 'Furniture', 150.00),
(104, 'Bookshelf', 'Furniture', 120.00),
(105, 'Headphones', 'Accessories', 75.50);

-- 3. ORDERS TABLE
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO orders VALUES
(201, 1, '2023-03-01', 675.49),
(202, 2, '2023-03-05', 999.99),
(203, 3, '2023-03-06', 270.00),
(204, 1, '2023-03-10', 75.50);

-- 4. ORDER_ITEMS TABLE
CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    line_total DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(301, 201, 101, 1, 599.99),
(302, 201, 105, 1, 75.50),
(303, 202, 102, 1, 999.99),
(304, 203, 103, 1, 150.00),
(305, 203, 104, 1, 120.00),
(306, 204, 105, 1, 75.50);
