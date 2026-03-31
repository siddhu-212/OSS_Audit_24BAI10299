#!/bin/bash
# =============================================================
# Script 2: FOSS Package Inspector (Pro Version)
# Author: Nitin Kolhe | Roll: 24BCE10532
# Course: Open Source Software
# =============================================================

# ----------- COLORS -----------
GREEN="\e[32m"
RED="\e[31m"
CYAN="\e[36m"
YELLOW="\e[33m"
RESET="\e[0m"

clear

echo -e "${CYAN}==============================================${RESET}"
echo -e "${CYAN}        FOSS Package Inspector (Pro)${RESET}"
echo -e "${CYAN}     By Nitin Kolhe (24BCE10532)${RESET}"
echo -e "${CYAN}==============================================${RESET}"
echo ""

# ----------- USER INPUT -----------
read -p "Enter package name to inspect (e.g., python3, git, vlc): " PACKAGE

echo ""
echo -e "${YELLOW}Checking package: $PACKAGE ...${RESET}"
echo ""

# ----------- CHECK INSTALLATION -----------
if dpkg -l | grep -qw "$PACKAGE"; then
    echo -e "${GREEN}[✔] $PACKAGE is INSTALLED${RESET}"
    echo ""

    # Version
    VERSION=$($PACKAGE --version 2>&1 | head -1)
    echo -e "➤ Version  : ${CYAN}$VERSION${RESET}"

    # Location
    LOCATION=$(which $PACKAGE 2>/dev/null)
    echo -e "➤ Location : ${CYAN}$LOCATION${RESET}"

else
    echo -e "${RED}[✘] $PACKAGE is NOT installed${RESET}"
    echo -e "${YELLOW}👉 Install using: sudo apt install $PACKAGE${RESET}"
fi

echo ""
echo -e "${CYAN}----------------------------------------------${RESET}"
echo -e "${CYAN}   My Open Source Perspective${RESET}"
echo -e "${CYAN}----------------------------------------------${RESET}"

# ----------- PHILOSOPHY SECTION -----------
case $PACKAGE in
    python3 | python)
        echo "Python is simple yet powerful."
        echo "I like how it makes programming easy for beginners."
        ;;
    git)
        echo "Git is essential for developers."
        echo "It helps track changes and collaborate easily."
        ;;
    vlc)
        echo "VLC is a perfect example of free software."
        echo "It runs almost every media format without hassle."
        ;;
    firefox)
        echo "Firefox respects user privacy."
        echo "It stands strong for open web principles."
        ;;
    mysql | mariadb)
        echo "Databases like MySQL power real applications."
        echo "Open source makes them accessible to everyone."
        ;;
    *)
        echo "$PACKAGE represents the power of community-driven software."
        ;;
esac

echo ""
echo -e "${CYAN}----------------------------------------------${RESET}"
echo -e "${CYAN}   License Info${RESET}"
echo -e "${CYAN}----------------------------------------------${RESET}"

echo "Most open-source tools allow:"
echo "- Free usage"
echo "- Modification"
echo "- Redistribution"

echo ""
echo -e "${GREEN}✔ Script executed successfully!${RESET}"
echo ""