#!/bin/bash
# =============================================================
# Script 3: Disk and Permission Auditor (Enhanced Version)
# Author: Nitin Kolhe | Roll: 24BCE10532
# Course: Open Source Software
# Description: Smart system audit tool with colors, clean output
#              and better readability.
# =============================================================

# --- Color Codes ---
GREEN='\033[0;32m'
RED='\033[0;31m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# --- Directories to check ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

clear
echo -e "${CYAN}====================================================${NC}"
echo -e "${CYAN}   Disk & Permission Auditor (Enhanced)${NC}"
echo -e "${CYAN}   By: Nitin Kolhe (24BCE10532)${NC}"
echo -e "${CYAN}====================================================${NC}"
echo ""
echo -e "${YELLOW}🔍 Starting system audit... please wait${NC}"
echo ""

# --- Directory Audit ---
for DIR in "${DIRS[@]}"; do

    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo -e "${GREEN}✔ Directory:${NC} $DIR"
        echo -e "   Size      : $SIZE"
        echo -e "   Permissions: $PERMS"
        echo -e "   Owner     : $OWNER ($GROUP)"
        echo "----------------------------------------------"

    else
        echo -e "${RED}✘ Missing:${NC} $DIR"
        echo "----------------------------------------------"
    fi

done

echo ""
echo -e "${CYAN}🐍 Checking Python directories...${NC}"
echo ""

PYTHON_DIRS=("/usr/lib/python3" "/usr/local/lib" "/etc/python3")

for PDIR in "${PYTHON_DIRS[@]}"; do

    if [ -d "$PDIR" ]; then
        PERMS=$(ls -ld "$PDIR" | awk '{print $1}')
        OWNER=$(ls -ld "$PDIR" | awk '{print $3}')
        SIZE=$(du -sh "$PDIR" 2>/dev/null | cut -f1)

        echo -e "${GREEN}✔ Found:${NC} $PDIR"
        echo "   Size  : $SIZE"
        echo "   Perms : $PERMS"
        echo "   Owner : $OWNER"
    else
        echo -e "${RED}✘ Not Found:${NC} $PDIR"
    fi

    echo "----------------------------------------------"

done

# --- Python Binary ---
echo ""
echo -e "${CYAN}📍 Locating python3 binary...${NC}"

PYTHON_BIN=$(which python3 2>/dev/null)

if [ -n "$PYTHON_BIN" ]; then
    echo -e "${GREEN}✔ python3 found at:${NC} $PYTHON_BIN"
    ls -lh "$PYTHON_BIN"
else
    echo -e "${RED}✘ python3 not found in PATH${NC}"
fi

echo ""
echo -e "${CYAN}====================================================${NC}"
echo -e "${GREEN}✅ Audit Completed Successfully!${NC}"
echo -e "${CYAN}====================================================${NC}"