# neo4j-docker
neo4j-docker

To run the Neo4j Enterprise instance on Docker, type `bash start_db.sh`.

This file also includes environment variables.

This will start an instance of Neo4j Enterprise, importing nodes and relationships specified in csv files in the `neo4j/input/nodes` and `neo4j/input/rels` directories.

Properties for the Neo4j instance are specified in the `neo4j/input/extension_script.sh` file, which is run automatically on starting the Neo4j Enterprise instance.
