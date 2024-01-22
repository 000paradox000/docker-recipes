#!/usr/bin/env bash

mongosh "mongodb://localhost:27017/mydb" \
  --username myuser \
  --password P4ssw0rd \
  --authenticationDatabase admin < /opt/scripts/nodejs/init.js

mongoimport \
   --db=mydb \
   --username=myuser \
   --port=27017 \
   --password='P4ssw0rd' \
   --host=localhost \
   --collection='agents' \
   --file='/opt/data/csv/agents.csv' \
   --type=csv \
   --headerline \
   --authenticationDatabase=admin

mongoimport \
   --db=mydb \
   --username=myuser \
   --port=27017 \
   --password='P4ssw0rd' \
   --host=localhost \
   --collection='customers' \
   --file='/opt/data/csv/customers.csv' \
   --type=csv \
   --headerline \
   --authenticationDatabase=admin

mongoimport \
   --db=mydb \
   --username=myuser \
   --port=27017 \
   --password='P4ssw0rd' \
   --host=localhost \
   --collection='calls' \
   --file='/opt/data/csv/calls.csv' \
   --type=csv \
   --headerline \
   --authenticationDatabase=admin
