#!/usr/bin/env bash

python initdb.py

sqlite_web --host=0.0.0.0 --port=8080 --no-browser mydb.db
