(this code is not the most optimal way and is only for studing purposes across the services)

Simple example of a cdc using postgres, debezium+kafka and spark+delta to create a cdc 

how to run the example:

- run  the startup.sh
- create the two example tables inside postgres database exampledb in public schema  (you can connect in docker db directly, or use pgadmin in localhost:5000 to run the querys)
- run ./comands-executed/request.sh to registrate this tables in kafka/debezium 
- run the delta_postgres_cdc notebook to start the cdc
- run some inserts, updates, and deletes to verify the cdc happening in the tables, enjoy !!

You need to connect in jupyter remote session using the url that will show inside spark container when created ! 

