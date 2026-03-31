#!/bin/bash
# =============================================================
# Script 5: Open Source Manifesto Generator
# Author: Nitin Kolhe | Roll: 24BCE10532
# Course: Open Source Software
# Description: Creates a personal open-source manifesto
#              in a more human and expressive style.
# =============================================================

echo "====================================================="
echo "        Open Source Manifesto Generator"
echo "        Created by Nitin Kolhe (24BCE10532)"
echo "====================================================="
echo ""
echo "Hey there! 👋"
echo "Let’s create your personal Open Source Manifesto."
echo "Just answer a few simple questions honestly."
echo ""

# --- User Input ---
read -p "👉 1. Which open-source tool do you use daily? : " TOOL
read -p "👉 2. What does 'freedom' mean to you (one word)? : " FREEDOM
read -p "👉 3. What would you love to build and share freely? : " BUILD

# --- Date & File ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "✨ Writing your manifesto..."
sleep 1

# --- Generate Manifesto ---
cat > "$OUTPUT" << EOF
================================================
        MY OPEN SOURCE MANIFESTO
        By Nitin Kolhe (24BCE10532)
        Date: $DATE
================================================

Hi, I'm Nitin Kolhe.

Every day, I use $TOOL — not just as a tool,
but as a reminder that someone, somewhere,
decided to share their work with the world.

To me, freedom means $FREEDOM.
It’s about having the power to explore,
to learn, to modify, and to create without limits.

Open source gives us that power.
It breaks barriers and connects people through ideas.

If I had the chance, I would build $BUILD
and share it freely with everyone —
because knowledge grows when it is shared.

I believe software should not be locked away.
It should inspire, empower, and help others grow.

This is not just code.
This is a mindset.
This is open source.

================================================
EOF

# --- Output ---
echo ""
echo "✅ Your manifesto has been created successfully!"
echo "📄 File saved as: $OUTPUT"
echo ""

echo "---------------- Your Manifesto ----------------"
echo ""
cat "$OUTPUT"

echo ""
echo "================================================"