# Portfolio 2 - Query Processing and Optimisation

## Overview
This portfolio demonstrates SQL query processing and query optimisation using the NovaMart E-Commerce database implemented in MySQL.

The aim was to execute different types of SQL queries, inspect their results, analyse execution plans and improve query performance using indexing.

## SQL Queries Implemented

The following types of queries were tested:

- Filtering query using `WHERE`
- JOIN query between Orders and Customers
- Aggregation using `COUNT()` and `SUM()`
- Multi-table JOIN
- GROUP BY and HAVING
- Subquery using `AVG()`

The SQL queries are stored in:

`queries.sql`

## Query Optimisation

Query optimisation was tested using the MySQL `EXPLAIN` command.

The following query was analysed:

```sql
SELECT *
FROM orders
WHERE status = 'Completed';
```

### Before Indexing
Before creating an index on the `status` column, the execution plan showed:

- Access type: `ALL`
- No index was used
- MySQL performed a full table scan

This means MySQL had to examine the table to find matching records.

### Index Created
The following index was created:

```sql
CREATE INDEX idx_orders_status
ON orders(status);
```

The index command is stored in:

`indexes.sql`

### After Indexing
After creating the index, the execution plan showed:

- Access type: `ref`
- Index used: `idx_orders_status`
- MySQL used the index to locate matching rows

This demonstrated that indexing can improve the efficiency of queries that frequently filter by a specific column.

## Practical Evidence

Query screenshots are stored in the:

`screenshots` folder

Execution-plan evidence is stored in the:

`execution-plans` folder

The before-index and after-index screenshots show the change in MySQL's query execution strategy.

## Learning Reflection

This portfolio helped me understand how MySQL processes SQL queries and how the `EXPLAIN` command can be used to inspect execution plans.

I also learned that indexes can improve query performance by reducing the need for full table scans.

However, indexes should be created carefully because they require additional storage and can add overhead when inserting or updating records.


However, indexes should be created carefully because they require additional storage and can add overhead when inserting or updating records.
