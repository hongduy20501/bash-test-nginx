#!/usr/bin/env bash
set -e

for i in $(seq 10); do
  curl -s localdev.me | grep Hostname | awk '{ print $2 }'
done
