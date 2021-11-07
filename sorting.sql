SELECT * 
FROM sql_store.customers
-- by descnding order
ORDER BY first_name DESC;

-- multiple order
SELECT * 
FROM sql_store.customers
ORDER BY state, first_name;

-- introduce alias
SELECT *, quantity * unit_price AS total_price
FROM sql_store.order_items
WHERE order_id = 2 
ORDER BY total_price DESC;