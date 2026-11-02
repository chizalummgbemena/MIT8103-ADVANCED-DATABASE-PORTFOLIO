USE novamart;
SELECT product_name, price, stock_quantity
FROM products
WHERE price > 30000;
SELECT
orders.order_id,
customers.first_name,
customers.last_name,
orders.total_amount,
orders.status
FROM orders
JOIN customers
	ON orders.customer_id = customers.customer_id;
    SELECT
		status,
        COUNT(*) AS number_of_orders,
        SUM(total_amount) AS total_sales
        FROM orders
        GROUP BY status;
	SELECT
        orders.order_id,
        customers.first_name,
        customers.last_name,
        products.product_name,
        order_items.quantity,
        order_items.unit_price
	FROM orders
	JOIN customers
		ON  orders.customer_id = customers.customer_id
	JOIN order_items
		ON orders.order_id = order_items.order_id
	JOIN products
		ON order_items.product_id = products.product_id;
	SELECT
		customer_id,
        COUNT(*) AS number_of_orders,
        SUM(total_amount) AS total_spent
	FROM orders
	GROUP BY customer_id
    HAVING SUM(total_amount) > 50000;
    SELECT
		product_name,
		price
	FROM products
    WHERE price > (
		SELECT AVG(price)
        FROM products
	);
    EXPLAIN
    SELECT * 
    FROM orders
    WHERE customer_id = 2;
    EXPLAIN
    SELECT *
    FROM orders
    WHERE status = 'Completed';
    CREATE INDEX idx_orders_status
    ON orders(status);
    EXPLAIN
    SELECT *
    FROM orders
    WHERE status = 'Completed';
    
    
        