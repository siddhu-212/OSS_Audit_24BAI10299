#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Siddhant Kumar | Roll: 24BAI10299
# Course: Open Source Software
# Description: Checks if a package is installed and shows its details

# ---- Package to check ----
PACKAGE="git"

echo "============================================"
echo "   FOSS Package Inspector"
echo "   By Siddhant Kumar (24BAI10299)"
echo "============================================"
echo ""

# ---- Check if package is installed ----
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is INSTALLED on this system."
    echo ""
    VERSION=$(git --version)
    LOCATION=$(which git)
    echo " Version  : $VERSION"
    echo " Location : $LOCATION"
else
    echo "$PACKAGE is NOT installed on this system."
    echo "You can install it using: sudo apt install $PACKAGE"
fi

echo ""
echo "--------------------------------------------"
echo " Open Source Philosophy Note"
echo "--------------------------------------------"

# ---- Case statement for philosophy notes ----
case $PACKAGE in
    git)
        echo "Git: Born out of frustration with proprietary tools."
        echo "It gave the world a free and distributed way to collaborate."
        ;;
    python3)
        echo "Python: A language built entirely by its community."
        echo "It made programming accessible to everyone."
        ;;
    firefox)
        echo "Firefox: A nonprofit browser fighting for an open web."
        echo "It exists so the internet is not controlled by one company."
        ;;
    vlc)
        echo "VLC: Built by students who just wanted to watch videos freely."
        echo "Today it plays almost any format on any device."
        ;;
    *)
        echo "This is an open source tool that someone built and shared freely."
        ;;
esac

echo ""
echo "============================================"
echo "Script completed successfully."
echo "============================================"