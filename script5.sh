#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Siddhant Kumar | Roll: 24BAI10299
# Course: Open Source Software
# Description: Generates a personal open source manifesto
#              based on answers given by the user

echo "============================================"
echo "   Open Source Manifesto Generator"
echo "   By Siddhant Kumar (24BAI10299)"
echo "============================================"
echo ""
echo "Answer three questions to create your manifesto."
echo ""

# ---- Take input from user ----
read -p "1. Name one open source tool you use every day: " TOOL
read -p "2. In one word what does freedom mean to you: " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# ---- Get date and set output file name ----
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "--------------------------------------------"
echo "Generating your manifesto..."
echo "--------------------------------------------"
echo ""

# ---- Write manifesto to file ----
echo "Open Source Manifesto" > $OUTPUT
echo "Generated on: $DATE" >> $OUTPUT
echo "By: Siddhant Kumar | 24BAI10299" >> $OUTPUT
echo "============================================" >> $OUTPUT
echo "" >> $OUTPUT
echo "I use $TOOL every single day." >> $OUTPUT
echo "It was built by people who chose to share their work freely." >> $OUTPUT
echo "That choice changed the world and it changed the way I work." >> $OUTPUT
echo "" >> $OUTPUT
echo "To me freedom means $FREEDOM." >> $OUTPUT
echo "Open source gives us exactly that kind of freedom." >> $OUTPUT
echo "The freedom to look inside understand and improve the tools we depend on." >> $OUTPUT
echo "" >> $OUTPUT
echo "If I could build and share one thing freely it would be $BUILD." >> $OUTPUT
echo "I believe that when we share what we build everyone benefits." >> $OUTPUT
echo "That is the spirit of open source." >> $OUTPUT
echo "" >> $OUTPUT
echo "This is not just about software." >> $OUTPUT
echo "It is about the kind of world we want to build together." >> $OUTPUT
echo "============================================" >> $OUTPUT

# ---- Display the manifesto on screen ----
cat $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo "============================================"