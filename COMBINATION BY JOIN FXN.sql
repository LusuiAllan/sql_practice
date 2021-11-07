-- COMBINING TABLES
SELECT * 
FROM orders
-- JOIN CUSTOMER TABLE AND CUSTOMER TABLE MAKING SURE THE CUSTOMER ID IS THE SAME
JOIN customers ON orders.customer_id = customers.customer_id;

-- SPECIFIC SELECTION
 -- SPECIFY THE TABLE IN THE SELECT STATEMENT...PREFIX
SELECT order_id, orders.customer_id, first_name, last_name
FROM orders
JOIN  customers ON orders.customer_id = customers.customer_id;

-- AVOIDING REPETION BY ALIAS "O" and "C"
SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN  customers c ON o.customer_id = c.customer_id;

-- JOIN Order items table with products table(with relational column)
-- USE ALIAS
-- USE UNIT PRICE AT THE TIME OF PURCHASE TO CALCULATE SALES
SELECT o.order_id, p.product_id, quantity,o.unit_price
FROM order_items o
JOIN products p ON o.product_id = p.product_id