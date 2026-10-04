#!/usr/bin/env bash

LOG_FILE="monitor.log"
INTERVAL_SECONDS=10

while true; do
    {
        echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---"
        echo "free -h"
        free -h
        echo "df -h"
        df -h
        echo "uptime"
        uptime
        echo
    } >> "$LOG_FILE"

    echo "new report generated"
    sleep "$INTERVAL_SECONDS"
done
