-- Session A
USE novamart;

START TRANSACTION;

SELECT *
FROM products
WHERE product_id = 1
FOR UPDATE;

-- Session B
UPDATE products
SET stock_quantity = stock_quantity - 1
WHERE product_id = 1;