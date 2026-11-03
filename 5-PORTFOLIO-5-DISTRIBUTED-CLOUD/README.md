# Portfolio 5 - Distributed and Cloud Databases

## Overview

This portfolio demonstrates the deployment of part of the NovaMart E-Commerce database in a cloud environment using MongoDB Atlas.

The aim was to understand how cloud databases support availability, replication, scalability and remote access.

## Cloud Platform

MongoDB Atlas was used as the cloud database platform.

A cloud cluster named:

`NovaMartCluster`

was created using the free tier.

The cluster was deployed on:

- Cloud Provider: AWS
- Region: Paris (`eu-west-3`)
- Cluster Type: Replica Set
- Number of Nodes: 3

## Cloud Database Deployment

A cloud database named:

`novamart`

was created inside MongoDB Atlas.

A collection named:

`products`

was also created.

A sample product document was inserted into the cloud database through MongoDB Compass.

The cloud database was accessed remotely using MongoDB Compass through the Atlas connection string.

## Replication

The Atlas cluster uses a replica set with three nodes.

Replication means that copies of the database are maintained across multiple database nodes.

This improves fault tolerance because if one database node becomes unavailable, another replica can continue to provide access to the data.

The Atlas cluster configuration screen confirms that the NovaMart cluster uses a three-node replica set.

## Availability

The use of multiple replica set members improves database availability.

In a production environment, replication reduces the risk of complete database downtime caused by the failure of a single database server.

MongoDB Atlas manages much of this infrastructure automatically as part of the cloud database service.

## Consistency

MongoDB provides mechanisms such as read concern and write concern that can be used to control the consistency and durability of database operations.

For the NovaMart system, stronger consistency would be important for operations such as payments, stock updates and order processing.

A balance between consistency and performance may be selected depending on the type of operation being performed.

## Sharding and Scalability

Sharding is a database scaling technique that distributes data across multiple servers or shards.

The free NovaMart Atlas cluster used for this practical exercise is not configured as a sharded cluster.

However, if NovaMart grew to support a very large number of customers, products and orders, sharding could be used to distribute the workload across multiple database servers.

For example, product or order data could be partitioned using an appropriate shard key.

This would allow the database system to scale horizontally as the amount of data and number of users increase.

## Cloud Deployment Benefits

Using MongoDB Atlas provides several advantages for NovaMart:

- Remote database access
- Managed cloud infrastructure
- Replication
- High availability
- Monitoring
- Easier scalability
- Reduced need to manage physical database servers

## Practical Evidence

The following screenshots were captured as practical evidence:

- `P5_01_Atlas_Connection.png` - successful connection between MongoDB Compass and MongoDB Atlas
- `P5_02_Cloud_Database.png` - NovaMart cloud database and product document
- `P5_03_Atlas_Cluster_Configuration.png` - Atlas cluster configuration showing the free tier, AWS region and three-node replica set

These screenshots are stored in the:

`screenshots` folder

## Learning Reflection

This portfolio helped me understand the difference between running a database locally and using a managed cloud database.

I learned how to create a MongoDB Atlas cluster, configure database access, connect MongoDB Compass to the cloud cluster and store data remotely.

I also learned how replication improves availability and fault tolerance, and how sharding can be used to support horizontal scaling in larger distributed database systems.
