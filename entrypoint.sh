#!/bin/sh

# Run the pretext build command
pretext build web

# Check if the first command was successful
if [ $? -eq 0 ]; then
  # Run the pretext view command
  pretext view web --port 8128
else
  echo "pretext build web failed"
  exit 1
fi
