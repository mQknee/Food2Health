#!/usr/bin/env bash

DIR=$(cd "$(dirname "$0")"; pwd)

docker run \
--detach \
--user neo4j \
--publish=80:7474 \
--publish=443:7473 \
--publish=7687:7687 \
--volume=$DIR//data:/data \
--volume=$DIR/plugins:/plugins \
--env=NEO4J_AUTH=none \
--env=EXTENSION_SCRIPT=/input/extension_script.sh \
--env=NEO4J_ACCEPT_LICENSE_AGREEMENT=yes \
--env=NEO4J_dbms_security_procedures_unrestricted=apoc.\\\*,algo.\\\* \
--env=NEO4J_dbms_memory_heap_initial__size=8G \
--env=NEO4J_dbms_memory_heap_max__size=8G \
neo4j:enterprise