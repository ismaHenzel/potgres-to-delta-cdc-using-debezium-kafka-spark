echo "Creating characters dim debezium connection "

curl -X POST \
  -H "Content-Type: application/json" \
  -d '{
    "name": "exampledb-onepiece-characters",
    "config": {
      "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
      "topic.creation.default.partitions": 10,
      "topic.creation.default.replication.factor": "1",
      "slot.name" : "exampledbonepiececharacters",
      "message.key.columns": "exampledb.characters_dim:character_id",
      "plugin.name": "pgoutput",
      "database.hostname": "host.docker.internal",
      "database.port": "5432",
      "database.user": "docker",
      "database.password": "docker",
      "database.dbname": "exampledb",
      "database.server.name": "exampledb",
      "table.include.list": "public.characters_dim"
    }
  }' \
  http://127.0.0.1:8083/connectors/

# echo "Creating bounties fact debezium connection "

curl -X POST \
  -H "Content-Type: application/json" \
  -d '{
    "name": "exampledb-onepiece-bounties-new",
    "config": {
      "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
      "plugin.name": "pgoutput",
      "database.hostname": "host.docker.internal",
      "topic.creation.default.partitions": 10, 
      "slot.name" : "exampledbonepiecebounties",
      "topic.creation.default.replication.factor": "1",
      "message.key.columns": "exampledb.bounties_fact:bounty_id",
      "database.port": "5432",
      "database.user": "docker",
      "database.password": "docker",
      "database.dbname": "exampledb",
      "database.server.name": "exampledb",
      "table.include.list": "public.bounties_fact"
    }
  }' \
  http://127.0.0.1:8083/connectors/
