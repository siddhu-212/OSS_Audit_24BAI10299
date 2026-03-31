#!/bin/bash
# ============================================================
# Script 1: System Identity Report (Personalized Edition)
# Author: NITIN KOLHE | Roll: 24BCE10532
# Course: Open Source Software
# Description: Friendly system report with personalized output
# ============================================================

# --- Student & Project Variables ---
STUDENT_NAME="NITIN KOLHE"         
ROLL_NUMBER="24BCE10532"
SOFTWARE_CHOICE="Python"

# --- Greeting based on time ---
HOUR=$(date +%H)
if [ $HOUR -lt 12 ]; then
    GREETING="Good Morning"
elif [ $HOUR -lt 18 ]; then
    GREETING="Good Afternoon"
else
    GREETING="Good Evening"
fi

# --- Gather System Information ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATETIME=$(date '+%d %B %Y | %H:%M:%S')
DISTRO=$(grep '^PRETTY_NAME' /etc/os-release | cut -d= -f2 | tr -d '"')

# --- OS License ---
OS_LICENSE="GNU General Public License v2 (GPL v2)"

# --- Personalized Header ---
echo "==============================================================="
echo "      👋 $GREETING, $STUDENT_NAME!"
echo "==============================================================="
echo " Welcome to your Open Source System Audit"
echo " Roll Number : $ROLL_NUMBER"
echo " Tool Chosen : $SOFTWARE_CHOICE"
echo ""

# --- System Info ---
echo "🖥️  Hey $USER_NAME, here’s your system snapshot:"
echo "---------------------------------------------------------------"
echo "  OS           : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  Home         : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $DATETIME"
echo ""

# --- Fun Personal Touch ---
echo "💡 Tip: You’ve been using your system for $UPTIME — nice consistency!"
echo ""

# --- License Section ---
echo "📜 Open Source Freedom Check:"
echo "---------------------------------------------------------------"
echo "  License : $OS_LICENSE"
echo ""
echo "  ✔ You are free to:"
echo "     - Run the software"
echo "     - Study how it works"
echo "     - Modify it"
echo "     - Share it with others"
echo ""

# --- Closing Message ---
echo "==============================================================="
echo "🚀 $STUDENT_NAME, your system is ready for open source exploration!"
echo "Keep learning, keep building 💻"
echo "==============================================================="
---

#