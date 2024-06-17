#!/bin/bash

# Log file location
LOG_FILE="/Users/Shared/NetworkTester.log"

# Infinite loop to continuously ping the server
while true; do
    # Get current timestamp
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

    # Ping the server and capture the output
    PING_OUTPUT=$(ping -c 1 google.com)

    # Check if ping was successful
    if [ $? -eq 0 ]; then
        echo "$TIMESTAMP - Success: $PING_OUTPUT" >> "$LOG_FILE"
    else
        echo "$TIMESTAMP - Failure: $PING_OUTPUT" >> "$LOG_FILE"
    fi

    # Wait for 1 second before next ping
    sleep 1
done
