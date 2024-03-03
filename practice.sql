CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (customer_id, order_date, total_amount ) VALUES 
    (4, '2022-01-05', 100.50),
    (5, '2020-01-07', 200.75),
    (4, '2022-01-08', 200.25),
    (6, '2022-01-08', 200.25)

SELECT customer_id, count(order_id), sum(total_amount) as total_spent FROM orders
GROUP BY customer_id HAVING count(order_id) > 2;

SELECT EXTRACT( month from order_date) as month, sum(total_amount) FROM orders WHERE EXTRACT(year from order_date) = 2022 GROUP BY month;

SELECT * FROM orders;