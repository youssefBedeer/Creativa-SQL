-- 1.select all orders where the product is Laptop and quantity is greater than 1
SELECT * FROM orders WHERE product = "Laptop" AND quantity > 1;

-- 2.Show all orders made in cairo but not for the product tablet
SELECT * FROM orders WHERE city = "Cairo" AND product != "tablet";

-- 3.List all customers whose names starts with A 
SELECT customer_name FROM orders WHERE customer_name LIKE  'A%';

-- 4.Find the top 3 most expensive orders (use order by and limit) 
SELECT
    *,
    (price * quantity) AS Total
FROM orders ORDER BY price DESC LIMIT 3;

-- 5.Show the total quantity of each product ordered 
SELECT product, SUM(quantity) FROM orders GROUP BY product;

-- 6.Find the average price of products sold in giza 
SELECT product, AVG(price) FROM orders WHERE city = "Giza" GROUP BY product;

-- 7.Get the highest quantity ordered in cairo 
SELECT product, quantity FROM orders WHERE city = "Cairo" ORDER BY quantity DESC LIMIT 1;

-- 8.Show the number of orders per city
SELECT city, SUM(order_id) AS Total_orders FROM orders GROUP BY city;

-- 9.Find the customers who ordered more than 2 items in one order
SELECT customer_name, quantity FROM orders WHERE quantity > 2;

/* 
10.Show all products where the total sales amount 
(quantity x price) is more than 3000 (use GROUP BY and HAVING)
*/
SELECT 
    product, 
    SUM(quantity * price) AS total_sales_amount
FROM orders
GROUP BY product
HAVING SUM(quantity * price) > 3000;

-- 11.Find the customers who ordered a phone or tablet
SELECT customer_name, product FROM orders WHERE product IN ("phone", "tablet");

/* 
12.Show all orders placed between 
"2024-09-05" and "2024-09-10"
*/
SELECT * FROM orders WHERE order_date BETWEEN "2024-09-05" AND "2024-09-10";