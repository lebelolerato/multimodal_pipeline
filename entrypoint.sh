#!/usr/bin/env bash
set -e

# Activate any env vars here or perform startup logic
# Default behaviour: print message and open shell (or run command)
echo "Container started. Running: $@"

# If a command is passed, run it, otherwise open a shell
if [ $# -gt 0 ]; then
  exec "$@"
else
  exec bash
fi
