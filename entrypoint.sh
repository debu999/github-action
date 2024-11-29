#!/bin/sh

if [ "$INPUT_CLUSTER_MODE" = "false" ]; then
  docker-compose -f docker-compose-single.yml up -d
else
  docker-compose -f docker-compose-cluster.yml up -d
fi