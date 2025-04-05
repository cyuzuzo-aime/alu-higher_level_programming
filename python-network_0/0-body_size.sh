#!/bin/bash

# Check if a URL was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Use curl to send a request and get the size of the body of the response
curl -sI "$1" | grep -i Content-Length | awk '{print $2}'

