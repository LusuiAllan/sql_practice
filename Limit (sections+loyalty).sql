-- LIMIT clause\
SELECT *
FROM customers
LIMIT 6;

-- RETRIEVE SECTION
SELECT *
FROM customers
LIMIT 6, 3;

-- Most loyal customers
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3; 