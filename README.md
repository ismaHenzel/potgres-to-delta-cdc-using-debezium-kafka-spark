# Change Data Capture (CDC) Example with PostgreSQL, Debezium, Kafka, Spark, and Delta

This repository serves as a simple example of implementing Change Data Capture (CDC) using a stack comprising PostgreSQL, Debezium with Kafka, and Spark with Delta.

## How to Run the Example

Follow these steps to execute the example:

1. Run the `startup.sh` script.
2. Create two example tables within the `exampledb` database in the public schema of PostgreSQL. Connect directly to the Dockerized database or use PgAdmin at localhost:5000 to execute the queries.
3. Execute `./comands-executed/request.sh` to register these tables in Kafka/Debezium.
4. Run the `delta_postgres_cdc` notebook to initiate the CDC process.
5. Perform some inserts, updates, and deletes to observe the CDC events occurring in the tables. Enjoy!

Ensure you connect to the Jupyter remote session using the URL displayed inside the Spark container upon creation.

## How It Works

[![demostration](http://img.youtube.com/vi/qb1ukrdbmXA/0.jpg)](https://youtu.be/qb1ukrdbmXA)

