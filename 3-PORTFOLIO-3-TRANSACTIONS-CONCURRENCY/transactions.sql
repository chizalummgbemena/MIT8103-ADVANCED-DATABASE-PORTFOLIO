USE novamart;

START TRANSACTION;

UPDATE products
SET stock_quantity = stock_quantity - 1
WHERE product_id =1;

COMMIT;

SELECT product_id, product_name, stock_quantity
FROM products
WHERE product_id = 1;
START TRANSACTION;

UPDATE products
SET stock_quantity = stock_quantity - 5
WHERE product_id = 1;

ROLLBACK;

SELECT product_id, product_name, stock_quantity
FROM products
WHERE product_id = 1;
START TRANSACTION;

SELECT *
FROM products
WHERE product_id = 1
FOR UPDATE;
ROLLBACK;