# Final Documentation

## Project Title

**MIT8103 Advanced Database Systems Practical Portfolio**

## Case Study

**NovaMart E-Commerce Platform**

NovaMart is a simulated e-commerce system that allows customers to:

- Browse products
- Place orders
- Make payments
- Track deliveries
- Submit product reviews

The same NovaMart case study was used consistently throughout all five portfolio sections.

---

## Portfolio 1 - Database Design and Modelling

Portfolio 1 focused on designing and implementing the relational database for NovaMart.

### Activities Completed

- Identification of entities and attributes
- Definition of primary and foreign keys
- Relationship modelling
- ER diagram creation
- Relational schema design
- Normalisation to Third Normal Form (3NF)
- MySQL database implementation
- Creation of database tables
- Practical implementation screenshots

The relational database was implemented using **MySQL**.

---

## Portfolio 2 - Query Processing and Optimisation

Portfolio 2 demonstrated SQL query processing and database performance optimisation.

### SQL Operations Tested

- Filtering queries using `WHERE`
- JOIN queries
- Aggregate functions such as `COUNT()` and `SUM()`
- Multi-table JOIN queries
- `GROUP BY`
- `HAVING`
- Subqueries

### Query Optimisation

Query performance was analysed using the MySQL:

`EXPLAIN`

command.

An index was created and the execution plan was compared before and after indexing.

This demonstrated how indexing can improve the way MySQL searches and retrieves data.

---

## Portfolio 3 - Transactions and Concurrency

Portfolio 3 demonstrated transaction management and concurrency control.

### Transaction Operations

The following commands were tested:

- `START TRANSACTION`
- `COMMIT`
- `ROLLBACK`

Product stock quantities were updated within transactions to demonstrate how changes can either be permanently saved or reversed.

### Concurrency Control

Concurrency was tested using separate MySQL sessions.

The following statement was used:

`SELECT ... FOR UPDATE`

This demonstrated row locking and showed how database systems can prevent conflicting updates when multiple users access the same data.

---

## Portfolio 4 - NoSQL and Advanced Data Models

Portfolio 4 demonstrated the use of MongoDB as a document-based NoSQL database.

A MongoDB database named:

`novamart`

and a collection named:

`products`

were created.

### MongoDB Operations

The following operations were demonstrated:

- Insert documents
- Query documents
- Update documents
- Delete documents
- Store nested attributes
- Aggregation using `$group`

MongoDB was suitable for the NovaMart product catalogue because different product types can contain different attributes.

For example, a smartphone may contain storage and operating-system information, while a blender may contain capacity and speed information.

---

## Portfolio 5 - Distributed and Cloud Databases

Portfolio 5 demonstrated cloud database deployment using **MongoDB Atlas**.

A cloud cluster named:

`NovaMartCluster`

was created.

### Cloud Configuration

- **Cloud Provider:** AWS
- **Region:** Paris (`eu-west-3`)
- **Tier:** Free
- **Cluster Type:** Replica Set
- **Number of Nodes:** 3

MongoDB Compass was successfully connected to the Atlas cloud cluster.

A cloud database named:

`novamart`

was created with a:

`products`

collection.

A sample product document was also stored in the cloud database.

### Distributed Database Concepts

Portfolio 5 also covered:

- Replication
- High availability
- Fault tolerance
- Consistency
- Sharding
- Horizontal scalability

The three-node replica set demonstrated how multiple database nodes can improve availability and fault tolerance.

Sharding was discussed as a possible future scaling strategy if NovaMart grows significantly.

---

## Practical Evidence

Practical evidence is organised within the individual portfolio folders.

The GitHub repository contains:

- SQL scripts
- MongoDB scripts
- ER diagrams
- Relational schema documentation
- Query execution plans
- Indexing evidence
- Transaction evidence
- Concurrency-control evidence
- MongoDB NoSQL evidence
- MongoDB Atlas cloud evidence
- Screenshots
- README documentation

---

## Reflection

Completing this portfolio improved my understanding of both relational and non-relational database systems.

I learned how database design decisions affect implementation, querying and database performance.

I gained practical experience using:

- MySQL Workbench
- MongoDB Compass
- MongoDB Atlas
- GitHub

I also learned how transactions help maintain data consistency, how indexing can improve query performance, how MongoDB stores flexible documents, and how cloud database platforms provide replication and remote database access.

The practical activities helped me understand concepts that would have been more difficult to understand through theory alone.

---

## AI Use Declaration

ChatGPT was used as a learning aid to:

- Explain database concepts
- Review SQL syntax
- Review MongoDB syntax
- Provide implementation guidance
- Assist with troubleshooting
- Assist with documentation structure

All database designs, MySQL queries, MongoDB operations, transaction tests and cloud database activities were personally executed, tested and verified using MySQL Workbench, MongoDB Compass and MongoDB Atlas.

AI-generated suggestions were reviewed and adjusted based on the actual implementation results.

---

## GitHub Repository

The complete practical portfolio is stored in the private GitHub repository:

`MIT8103-ADVANCED-DATABASE-PORTFOLIO`
