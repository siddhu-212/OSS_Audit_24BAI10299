#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Siddhant Kumar | Roll: 24BAI10299
# Course: Open Source Software
# Description: Audits important system directories for size and permissions

# ---- List of directories to audit ----
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "============================================"
echo "   Disk and Permission Auditor"
echo "   By Siddhant Kumar (24BAI10299)"
echo "============================================"
echo ""
echo " Directory Audit Report"
echo "--------------------------------------------"

# ---- Loop through each directory ----
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo " $DIR"
        echo "   Permissions : $PERMS"
        echo "   Size        : $SIZE"
        echo ""
    else
        echo " $DIR does not exist on this system"
        echo ""
    fi
done

echo "--------------------------------------------"
echo " Git Config File Check"
echo "--------------------------------------------"

# ---- Check if git config file exists ----
GIT_CONFIG="$HOME/.gitconfig"
if [ -f "$GIT_CONFIG" ]; then
    PERMS=$(ls -l $GIT_CONFIG | awk '{print $1, $3, $4}')
    echo " Git config found at : $GIT_CONFIG"
    echo " Permissions        : $PERMS"
else
    echo " Git config file not found at $GIT_CONFIG"
    echo " Run git config to create it"
fi

echo ""
echo "============================================"
echo "Audit complete."
echo "============================================"