# Relational Schema
## Customers
Customers(
customer_id PK,
first_name,
last_name,
email,
phone,
created_at
)
## Addresses
Addresses(
address_id FK,
street,
city,
state,
country,
postal_code
)
## Cathegories
Categories(
category_id PK,
category_name,
description
)
## Suppliers
Suppliers(
supplier_id PK
supplier_name,
email,
phone
)
## Products
Products(
product_id PK,
category_id FK,
supplier_id FK,
product_name,
description,
price,
stock_quantity,
created_at
)
## Orders
Orders(
order_id FK,
order_date,
total_amount,
status
)
## OrderItems
OrderItems(
order_item_id PK,
order_id FK,
product_id FK,
quantity,
unit_price
)
## Payments
Payments(
payment_id PK,
order_id FK
payment_date,
amount,
payment_method,
payment_status
)
## Deliveries
Deliveries(
delivery_id PK,
order_id FK,
address_id FK,
delivery-status,
shipped_date,
delivered_date
)
## Reviews
Reviews(
review_id FK,
customer_id FK,
product_id FK
rating,
comment,
review_date
)
