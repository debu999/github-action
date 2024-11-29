#!/bin/bash

if [ "$INPUT_CLUSTER_MODE" = "false" ]; then
  docker-compose -f docker-compose-single.yml up
else
  docker-compose -f docker-compose-cluster.yml up
fi