# 📊 SQL Data Analysis — eCommerce Database

This repository contains solutions to **Task 3: SQL for Data Analysis** as part of a Data Analyst Internship. The goal is to explore and analyze a structured dataset using SQL queries.

---

## 📦 Dataset Structure

We simulate an eCommerce platform with the following tables:

### `users`
| Column      | Type    | Description             |
|-------------|---------|-------------------------|
| user_id     | INT     | Unique ID for user      |
| name        | VARCHAR | Name of the user        |
| email       | VARCHAR | Email address           |
| signup_date | DATE    | Account creation date   |

### `products`
| Column     | Type     | Description             |
|------------|----------|-------------------------|
| product_id | INT      | Unique product ID       |
| name       | VARCHAR  | Product name            |
| category   | VARCHAR  | Product category        |
| price      | DECIMAL  | Product price           |

### `orders`
| Column      | Type     | Description                     |
|-------------|----------|---------------------------------|
| order_id    | INT      | Unique order ID                 |
| user_id     | INT      | FK to users(user_id)            |
| order_date  | DATE     | Date of order                   |
| total_amount| DECIMAL  | Total price for the order       |

### `order_items`
| Column     | Type     | Description                           |
|------------|----------|---------------------------------------|
| item_id    | INT      | Unique item ID                        |
| order_id   | INT      | FK to orders(order_id)                |
| product_id | INT      | FK to products(product_id)            |
| quantity   | INT      | Quantity of product in the order      |
| line_total | DECIMAL  | Price * quantity                      |

---

## 🧠 SQL Concepts Used

✅ SELECT, WHERE, GROUP BY, ORDER BY  
✅ INNER JOIN  
✅ Subqueries  
✅ Aggregate functions: COUNT, SUM, AVG  
✅ Views for analysis  
✅ HAVING vs WHERE  
✅ Query optimization insights

---

## 🔍 SQL Analysis Queries

1. View all users  
2. Total orders & revenue per user  
3. Top-selling products by quantity  
4. Average order value  
5. Revenue per user > average (subquery)  
6. View creation: user revenue  
7. Total revenue by category  

You can find all these queries in the Attached file.

---


