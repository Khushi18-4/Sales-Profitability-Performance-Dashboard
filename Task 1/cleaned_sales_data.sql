CREATE DATABASE IF NOT EXISTS company_sales;
USE company_sales;


CREATE TABLE IF NOT EXISTS sales (
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Customer_Name VARCHAR(100),
    Region VARCHAR(50),
    Category VARCHAR(50),
    Product_Name VARCHAR(255),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(5,2),
    Profit DECIMAL(10,2)
);
SELECT Region, SUM(Sales) AS total_sales
FROM cleaned_sales_data
GROUP BY Region;
SELECT Category, SUM(Profit) AS total_profit
FROM cleaned_sales_data
GROUP BY Category
ORDER BY total_profit DESC
LIMIT 5;
SELECT MONTH(Order_Date) AS month, SUM(Sales) AS total_sales
FROM cleaned_sales_data
GROUP BY month
ORDER BY month;
SELECT Discount, AVG(Profit) AS avg_profit
FROM cleaned_sales_data
GROUP BY Discount
ORDER BY Discount;

