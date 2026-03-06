-- Total Sales
SELECT SUM(sales) AS total_sales
FROM superstore;

-- Total Profit
SELECT SUM(profit) AS total_profit
FROM superstore;

-- Sales by Region
SELECT region,
       SUM(sales) AS total_sales
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;

-- Profit by Category
SELECT category,
       SUM(profit) AS total_profit
FROM superstore
GROUP BY category
ORDER BY total_profit DESC;

-- Discount Impact on Profit
SELECT discount,
       AVG(profit) AS avg_profit
FROM superstore
GROUP BY discount
ORDER BY discount;

-- Top 10 Most Profitable Products
SELECT product_name,
       SUM(profit) AS total_profit
FROM superstore
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;
