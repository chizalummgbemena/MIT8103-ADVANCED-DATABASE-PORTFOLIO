# Portfolio 1 - Database Design and Modelling

## Case Study
This portfolio is based on the NovaMart E-Commerce Platform, a simulated online shopping system designed to manage customers, products, orders, payments, deliveries, reviews and related information.

## Database Design
The database was designed using a relational model in MySQL.

The main entities are:
- Customers
- Addresses
- Categories
- Suppliers
- Products
- Orders
- Order Items
- Payments
- Deliveries
- Reviews

Primary keys and foreign keys were used to establish relationships between the tables.

## ER Diagram
An Entity Relationship Diagram was created to show the entities, attributes and relationships within the NovaMart database.

The editable and image versions of the ER diagram are stored in the `diagrams` folder.

## Normalisation
The database design was normalised to Third Normal Form (3NF).

Normalisation was used to reduce data duplication, improve consistency and ensure that data is stored in appropriate related tables.

## MySQL Implementation
The NovaMart database and its tables were implemented using MySQL Workbench.

The main database creation script is stored in:

`schema.sql`

Sample records were inserted using:

`sample-data.sql`

## Constraints and Data Integrity
The database includes several constraints, including:

- Primary keys
- Foreign keys
- NOT NULL constraints
- UNIQUE constraints
- CHECK constraints
- DEFAULT values

The constraints were tested practically.

A review rating of 6 was rejected because the allowed rating is between 1 and 5.

An order using a non-existent customer ID was also rejected by the foreign key constraint.

These tests confirmed that the database protects data integrity.

## Practical Evidence
Screenshots showing the database implementation, sample data and constraint tests are stored in the `screenshots` folder.

## Learning Reflection
This portfolio helped me understand how to move from an ER diagram and relational schema to a working MySQL database.

I learned how to create databases and tables, define primary and foreign keys, insert sample data, test constraints and verify database contents using SQL queries.

I also learned that constraints are important because they prevent invalid or inconsistent data from being stored in the database.
