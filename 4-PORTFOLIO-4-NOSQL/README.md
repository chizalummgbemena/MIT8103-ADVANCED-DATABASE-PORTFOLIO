# Portfolio 4 - NoSQL and Advanced Data Models

## Overview

This portfolio demonstrates the use of MongoDB as a NoSQL database for the NovaMart E-Commerce case study.

MongoDB was used to model product data because product information can contain flexible and varying attributes.

## MongoDB Database

A MongoDB database named `novamart` was created.

Inside the database, a collection named `products` was created.

The collection stores product documents such as:

- Wireless Headphones
- Smartphone
- Electric Blender
- Classic Sneakers

## Document Model

Each product is stored as a MongoDB document.

The documents contain fields such as:

- `product_id`
- `product_name`
- `category`
- `supplier`
- `price`
- `stock_quantity`
- `attributes`

The `attributes` field contains nested product-specific information.

For example, an electronics product may contain fields such as connectivity, storage or battery life, while a fashion product may contain size, colour and material.

This demonstrates the flexible schema of a document database.

## MongoDB Operations

The following MongoDB operations were demonstrated:

- Insert a document
- Insert multiple product documents
- Find/filter documents
- Update a document
- Delete a document
- Aggregation using `$group`

The MongoDB commands are stored in:

`mongo-queries.js`

Sample product documents are stored in:

`sample-documents.json`

## Find Query

A filter was used to retrieve products from the Electronics category.

This demonstrated how MongoDB can query documents based on field values.

## Update Operation

The Smartphone stock quantity was updated from 20 to 18.

This demonstrated how an existing MongoDB document can be modified.

## Delete Operation

The Classic Sneakers document was deleted from the collection.

A query for `product_id: 4` returned no results after the deletion, confirming that the document had been removed.

## Aggregation

A MongoDB aggregation pipeline was used to group products by category.

The aggregation calculated:

- the number of products in each category
- the average product price for each category

This demonstrated MongoDB's ability to perform analytical operations on document data.

## Why MongoDB is Suitable

MongoDB is suitable for the NovaMart product catalogue because different product types can have different attributes.

A smartphone may require storage and operating system fields, while a blender may require capacity and speed information.

The document model allows these differences without requiring every product to have exactly the same structure.

MySQL remains suitable for strongly structured and transactional information such as orders, payments and customer relationships, while MongoDB is useful for flexible product data.

## Practical Evidence

Screenshots showing the MongoDB implementation and operations are stored in the:

`screenshots` folder

## Learning Reflection

This portfolio helped me understand the difference between relational and NoSQL databases.

I learned that MongoDB stores data as flexible documents rather than rows in fixed relational tables.

I also learned how to insert, query, update, delete and aggregate MongoDB documents using MongoDB Compass.
