#!/usr/bin/env bash

LOG_FILE="monitor.log"

{
    echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---"
    echo "free -h"
    free -h
    echo "df -h"
    df -h
    echo "uptime"
    uptime
} >> "$LOG_FILE"
