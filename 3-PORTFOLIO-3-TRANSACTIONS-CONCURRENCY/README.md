# Portfolio 3 - Transactions and Concurrency

## Overview
This portfolio demonstrates transaction processing and concurrency control using the NovaMart E-Commerce database in MySQL.

The practical work focused on COMMIT, ROLLBACK, row locking and concurrent access to the same database record.

## COMMIT Transaction
A transaction was started and the stock quantity of a product was reduced by one.

The transaction was completed using `COMMIT`.

After the COMMIT was executed, a SELECT query confirmed that the new stock quantity was permanently stored in the database.

## ROLLBACK Transaction
A second transaction attempted to reduce the same product stock quantity by five.

Instead of committing the change, `ROLLBACK` was executed.

A SELECT query confirmed that the stock quantity remained unchanged, demonstrating that ROLLBACK reverses uncommitted changes.

## Concurrency and Row Locking
Concurrency was tested using two separate MySQL Workbench sessions.

In Session A, a transaction was started and the following statement was used:

```sql
SELECT *
FROM products
WHERE product_id = 1
FOR UPDATE;
```

This placed a row lock on the selected product.

In Session B, an UPDATE statement attempted to modify the same product.

The second session displayed `Running...` because it had to wait for the lock held by Session A.

This demonstrated how row-level locking can prevent two transactions from modifying the same record at the same time.

## SQL Files
The transaction examples are stored in:

`transactions.sql`

The concurrency test is stored in:

`concurrency-test.sql`

## Practical Evidence
Screenshots showing the COMMIT, ROLLBACK and concurrency lock-wait tests are stored in the:

`screenshots` folder

## Learning Reflection
This portfolio helped me understand how database transactions protect data consistency.

I learned that COMMIT permanently saves changes, while ROLLBACK can undo changes that have not yet been committed.

I also learned that concurrency control is important when multiple users access the same data. Row locking can prevent conflicting updates and help maintain data integrity.
