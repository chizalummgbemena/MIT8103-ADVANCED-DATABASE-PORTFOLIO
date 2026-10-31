# Normalisation
## Introduction
The NovaMart database was designed using normalisation principles to reduce data duplication, improve data consistency, and avoid update, insertion, and deletion anomalies.
## First Normal Form (1NF)
A table is in First Normal Form when:
- each column contains atomic values
- there are no repeating groups
- each row is uniquely ideentifiable
An unnormalised order table could look like this:
OrderID, CustomerName, CustomerEmail, Product1, Produt2, Product3
This structure is problematic because several products are stored in repeating columns.
To achieve 1Nf, product information is separated so that each product appears as an individual record in the OrderItems table.
The relevantt tables are:
- Orders
- OrderItems
- Products
- This ensures that each field contains only one value.
## Second Normal Form (2NF)
A table is in Second Normal Form when:
- it is already in 1NF
- all non-key attributes depend on the whole primary key
In the NovaMart database, order information and product information are separated into different tables.
For example:
Orders stores:
- order_id
- customer_id
- order_date
- total_amount
- status
Products stores:
- product_id
- category_id
- supplier_id
- product_name
- description
- price
- stock_quantity
- created_at
OrderItems connects Orders and Products.
This prevents product details from being repeatedly stored inside the Orders table.
## Third Normal Form (3NF)
A table is in Third Normal Form when:
- it is already in 2NF
- non-key attributes do not depend on other non-key attributes
For example, category details are stored in the Categories table rather than repeatedly storing category_name and description in the Products table.
Similarly, suppliers information is stored separately in the suppliers table.
This means product records only store foreign keys such as category_id and supplier_id.
The design therefore reduces duplication and prevents transitive dependencies.
## Benefits of Normalisation in NovaMart
The normalised database design provides the following bbenefits:
- reduced data duplication
- improved data integrity
- easier data maintenance
- fewer update anomalies
- fewer insertion anomalies
- fewer deletion anomalies
- clearer relationships between entities
## Conclusion
The NovaMart relational database is designed to satisfy Third Normal Form (3NF). Data has been separated into related tables so that each entity stores information relevant to that entity while relationships are maintained using primary and foreign keys.
