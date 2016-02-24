#!/bin/sh

if [ $# != 1 ]; then
  echo "Please input JSON file path."
  echo "ex) $0 hello.json"
  exit 1
fi

curl -X POST -H "Content-Type: application/json" http://mesos:4400/scheduler/iso8601 -d @$1