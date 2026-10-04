#!/usr/bin/env bash

LOG_FILE="monitor.log"

{
    echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---"
    free -h
    df -h
    uptime
} >> "$LOG_FILE"
