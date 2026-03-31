#!/bin/bash
# =============================================================
# Script 4: Log File Analyzer
# Author: NITIN KOLHE | Roll: 24BCE10532
# Course: Open Source Software
# Description: A simple and friendly tool to scan log files,
#              count keyword matches, and show recent activity.
# =============================================================

# --- Read command-line arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}

# --- Counter ---
COUNT=0

# --- Welcome Message ---
echo "=============================================="
echo "   🔍 Log File Analyzer by Nitin Kolhe"
echo "   📘 Roll No: 24BCE10532"
echo "=============================================="
echo ""
echo "Hey! Let's analyze your log file 📄"
echo ""

# --- Check if file argument is given ---
if [ -z "$LOGFILE" ]; then
    echo "⚠️  Oops! You forgot to provide a log file."
    echo "👉 Usage: $0 <logfile> [keyword]"
    echo "👉 Example: $0 /var/log/dpkg.log install"
    exit 1
fi

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "❌ Hmm... I couldn't find the file: $LOGFILE"

    echo ""
    echo "🔄 Let me try a common system log instead (/var/log/dpkg.log)..."
    LOGFILE="/var/log/dpkg.log"

    if [ ! -f "$LOGFILE" ]; then
        echo "❌ Even fallback file is missing. Please check your system."
        exit 1
    else
        echo "✅ Found fallback log file. Continuing..."
    fi
fi

# --- Check if file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "⚠️  The file exists but it's empty. Nothing to analyze."
    exit 0
fi

echo ""
echo "📂 Log File Selected : $LOGFILE"
echo "🔑 Keyword to Search : '$KEYWORD'"
echo ""
echo "⏳ Scanning the file... please wait"
echo ""

# --- Read file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Results ---
echo ""
echo "=============================================="
echo "✅ Analysis Complete!"
echo "----------------------------------------------"
echo "🔍 Keyword '$KEYWORD' found $COUNT time(s)"
echo "📄 File: $LOGFILE"
echo "=============================================="
echo ""

# --- Show last 5 matches ---
echo "📌 Last 5 matching entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "🎉 Done! Thanks for using Nitin's Log Analyzer."
echo "=============================================="