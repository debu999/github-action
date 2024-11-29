#!/bin/sh

echo "$INPUT_VERSION"
echo "${INPUT_CLUSTER_MODE}"

if [ "${INPUT_CLUSTER_MODE}" = "false" ]; then
  run_redpanda="docker compose -f docker-compose-single.yml up -d"
  sh -c "$run_redpanda"
else
  run_redpanda="docker compose -f docker-compose-cluster.yml up -d"
  sh -c "$run_redpanda"
fi