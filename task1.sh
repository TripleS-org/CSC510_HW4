#!/bin/bash
# Find the process ID (PID) of infinite.sh and kill it
PID=$(ps -ef | grep '[i]nfinite.sh' | awk '{print $2}')
if [ -n "$PID" ]; then
  kill -9 "$PID"
  echo "Process infinite.sh (PID: $PID) killed."
else
  echo "Process infinite.sh not found."
fi
