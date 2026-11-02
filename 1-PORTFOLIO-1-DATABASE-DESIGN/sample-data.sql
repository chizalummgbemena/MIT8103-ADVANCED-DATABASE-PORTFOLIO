USE novamart;
INSERT INTO customers (first_name, last_name, email, phone)
VALUES
('Ada', 'Okafor', 'ada.okafor@example.com', '08031234567'),
('Tunde', 'Adebayo', 'tunde.adebayo@example.com', '08039876543'),
('Ngozi', 'Eze', 'ngozi.eze@example.com', '08123456789');
SELECT * FROM customers;
INSERT INTO addresses (customer_id, street, city, state, country, postal_code)
VALUES
(1, '12 Admiralty Way', 'Lagos', 'Lagos', 'Nigeria', '101241'),
(2, '24 Allen Avenue', 'Ikeja', 'Lagos', 'Nigeria', '100271'),
(3, '7 Independence Layout', 'Enugu', 'Enugu', 'Nigeria', '400102');
SELECT * FROM addresses;
INSERT INTO categories (category_name, description)
VALUES
('Electronics', 'Electronic devices and accessories'),
('Home Appliances', 'Household electrical appliances'),
('Fashion', 'Clothing and fashion accessories');
SELECT * FROM categories;
INSERT INTO suppliers (supplier_name, email, phone)
VALUES
('TechSouce Nigeria', 'sales@techsource.example.com', '08050001111'),
('HomePlus Distributors', 'orders@homeplus.example.com', '08050002222'),
('UrbanStyle Supplies', 'contact@urbanstyle.example.com', '08050003333');
SELECT * FROM suppliers;
INSERT INTO products (category_id, supplier_id, product_name, description, price, stock_quantity)
VALUES
(1, 1, 'Wireless Headphones', 'Bluetooth wireless headphones', 25000.00, 50),
(1, 1, 'Smartphone', '128GB Andriod smartphone', 185000.00, 20),
(2, 2, 'Electric Blender', 'Multi-speed kitchen blender', 32000.00, 35),
(3, 3, 'Classic Sneakers', 'Comfortable casual sneakers', 28000.00, 40);
SELECT * FROM products;
INSERT INTO orders (customer_id, total_amount, status)
VALUES
(1, 50000.00, 'Completed'),
(2, 185000.00, 'Processing'),
(3, 60000.00, 'Completed');
SELECT * FROM orders;
INSERT INTO order_items (order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 2, 25000.00),
(2, 2, 1, 185000.00),
(3,3,1, 32000.00),
(3, 4, 1, 28000.00);
SELECT * FROM order_items;
INSERT INTO payments (order_id, amount, payment_method, payment_status)
VALUES
(1, 50000.00, 'Card', 'Paid'),
(2, 185000.00, 'Bank Transfer', 'Paid'),
(3, 60000.00, 'Card', 'Paid');
SELECT * FROM payments;
INSERT INTO deliveries (order_id, address_id, delivery_status, shipped_date, delivered_date)
VALUES
(1, 1, 'Delivered', '2026-10-28 10:00:00', '2026-10-29 14:30:00'),
(2, 2, 'Shipped', '2026-10-30 09:00:00', NULL),
(3, 3, 'Delivered', '2026-10-27 08:30:00', '2026-10-28 16:00:00');
SELECT * FROM deliveries;
INSERT INTO reviews (customer_id, product_id, rating, comment)
VALUES
(1, 1, 5, 'Excellent sound quality and good battery life.'),
(2, 2, 4, 'Very good phone and fast performance.'),
(3, 3, 5, 'The blender works perfectly.');
SELECT * FROM reviews;








