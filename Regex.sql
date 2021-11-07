-- last name contains field in it
SELECT * 
FROM sql_store.customers
WHERE last_name REGEXP 'field';

-- pipe operator
-- or operator 
-- last name contains field or rose or mac in it
SELECT * 
FROM sql_store.customers
WHERE last_name REGEXP 'field |mac|rose';

-- In place of  searching when unsure
-- last name ends in field or contains rose or mac
-- apply dollar sign where necessary on options
SELECT * 
FROM sql_store.customers
WHERE last_name REGEXP 'field$|mac|rose';

-- last name starts with field
-- apply power wheere necessary
SELECT * 
FROM sql_store.customers
WHERE last_name REGEXP '^field|mac|rose';

-- any of the characters in the square brackets can come before e
-- e is anywhere in the last name attribute
-- square brackets can come after
SELECT * 
FROM sql_store.customers
WHERE last_name REGEXP '[gim]e';

-- for a range of letters that might come before e
SELECT * 
FROM sql_store.customers
WHERE last_name REGEXP '[a-h]e'

-- ^ beginning of a string
-- $ end of a string
-- | or
-- [abcd] for letters before a certain letter expression/ letters
-- [a-d] for a range of letters between expressions / letters