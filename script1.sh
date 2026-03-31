#!/bin/bash
# Script 1: System Identity Report
# Author: Siddhant Kumar | Roll: 24BAI10299
# Course: Open Source Software
# Description: Displays system information in a friendly format

# ---- Student Variables ----
STUDENT_NAME="Siddhant Kumar"
ROLL_NUMBER="24BAI10299"
SOFTWARE_CHOICE="Git"

# ---- Gather System Information ----
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATETIME=$(date '+%d %B %Y | %H:%M:%S')
DISTRO=$(lsb_release -d | cut -f2)
OS_LICENSE="GNU General Public License v2 (GPL v2)"

# ---- Time based greeting ----
HOUR=$(date +%H)
if [ $HOUR -lt 12 ]; then
    GREETING="Good Morning"
elif [ $HOUR -lt 18 ]; then
    GREETING="Good Afternoon"
else
    GREETING="Good Evening"
fi

# ---- Display Output ----
echo "============================================"
echo "   Open Source Audit — Siddhant Kumar"
echo "   Roll Number : 24BAI10299"
echo "   Software Chosen : $SOFTWARE_CHOICE"
echo "============================================"
echo ""
echo "$GREETING, $USER_NAME! Here is your system info:"
echo "--------------------------------------------"
echo " OS        : $DISTRO"
echo " Kernel    : $KERNEL"
echo " User      : $USER_NAME"
echo " Home      : $HOME_DIR"
echo " Uptime    : $UPTIME"
echo " Date/Time : $DATETIME"
echo " License   : $OS_LICENSE"
echo "--------------------------------------------"
echo "Linux is free software licensed under GPL v2"
echo "============================================"