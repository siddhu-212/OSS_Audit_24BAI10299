#!/bin/bash
# Script 4: Log File Analyzer
# Author: Siddhant Kumar | Roll: 24BAI10299
# Course: Open Source Software
# Description: Reads a log file and counts keyword matches
# Usage: ./log_analyzer.sh /var/log/syslog error

# ---- Read command line arguments ----
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo "============================================"
echo "   Log File Analyzer"
echo "   By Siddhant Kumar (24BAI10299)"
echo "============================================"
echo ""

# ---- Check if log file argument is given ----
if [ -z "$LOGFILE" ]; then
    echo "No log file provided."
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

# ---- Check if file exists ----
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# ---- Check if file is empty ----
if [ ! -s "$LOGFILE" ]; then
    echo "The log file is empty. Nothing to analyze."
    exit 1
fi

echo "Analyzing file : $LOGFILE"
echo "Searching for  : $KEYWORD"
echo "--------------------------------------------"

# ---- Read file line by line and count matches ----
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# ---- Print summary ----
echo ""
echo " Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""
echo "--------------------------------------------"
echo " Last 5 matching lines:"
echo "--------------------------------------------"

# ---- Show last 5 matching lines ----
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "============================================"
echo "Analysis complete."
echo "============================================"