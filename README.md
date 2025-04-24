# 📊 Ecommerce Reviews SQL Analysis

This project showcases SQL-based data analysis using the **Ecommerce Review Dataset** with MySQL. The analysis focuses on customer feedback, delivery performance, service quality, and product-related insights using structured queries.

---

## 🛠️ Tools Used
- **MySQL** (Query Execution)
- **MySQL Workbench** (or any other client)
- **CSV to Table Conversion**
- **SQL File** with queries

---

## 📁 Dataset Overview

The dataset contains 5,000 customer reviews from ecommerce platforms like Zepto and JioMart. Each record includes:
- Agent Name
- Rating
- Review Text
- Delivery Time (min)
- Location
- Order Type
- Customer Feedback
- Price Range
- Discount Applied
- Product Availability
- Customer Service Rating
- Order Accuracy

---

## 📌 Table Schema

```sql
CREATE TABLE ecommerce_reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    `Agent Name` VARCHAR(100),
    Rating FLOAT,
    `Review Text` TEXT,
    `Delivery Time (min)` INT,
    Location VARCHAR(100),
    `Order Type` VARCHAR(100),
    `Customer Feedback` VARCHAR(50),
    `Price Range` VARCHAR(20),
    `Discount Applied` VARCHAR(10),
    ProductAvailability VARCHAR(50),
    `Customer Service Rating` INT,
    `Order Accuracy` VARCHAR(50)
);

✅ Output
SQL file with queries

Screenshots of output (to be added after running queries)
