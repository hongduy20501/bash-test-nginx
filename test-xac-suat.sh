#!/usr/bin/env bash
set -e

r=''
for i in $(seq 50); do
  r="${r} $(curl -s localdev.me | grep Hostname | awk '{ print $2 }')"
done

for item in $(echo "${r}" | xargs -n 1 | sort | uniq); do
  count=$(echo "${r}" | xargs -n 1 | grep -cw "${item}")
  echo "${item}: ${count}"
done
