#!/bin/sh

if [ $# != 1 ]; then
  echo "Please input JSON file path."
  echo "ex) $0 basic.json"
  exit 1
fi

curl -X POST -H "Content-Type: application/json" http://mesos:8080/v2/apps -d @$1