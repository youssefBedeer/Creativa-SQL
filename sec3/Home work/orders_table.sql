CREATE DATABASE IF NOT EXISTS Shop; 
USE Shop;

-- create orders table
CREATE TABLE IF NOT EXISTS orders(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(30) NOT NULL,
    product VARCHAR(30) NOT NULL,
    quantity INT NOT NULL,
    price FLOAT NOT NULL,
    order_date DATE NOT NULL,
    city VARCHAR(30) NOT NULL
);

INSERT INTO orders (customer_name, product, quantity, price, order_date, city)
VALUES
("Ali","Laptop",2,1200.00,"2024-09-01","Cairo"),
("Sara","Phone",1,800.00,"2024-09-03","Giza"),
("Omar","Tablet",3,400.00,"2024-09-05","Cairo"),
("Mona","Laptop",1,1200.00,"2024-09-06","Alexandria"),
("Hossam","Phone",2,800.00,"2024-09-07","Cairo"),
("Laila","Tablet",5,400.00,"2024-09-08","Giza"),
("Karim","Laptop",1,1200.00,"2024-09-09","Cairo"),
("Aya","Phone",4,800.00,"2024-09-10","Alexandria"),
("Youssef","Tablet",2,400.00,"2024-09-11","Cairo"),
("Nour","Laptop",3,1200.00,"2024-09-12","Giza");

SELECT * FROM orders;