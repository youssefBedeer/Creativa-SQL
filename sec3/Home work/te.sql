
-- 6.Find the average price of products sold in giza 
SELECT 
    AVG(price) AS avg
FROM 
    orders 
WHERE city = "Giza";