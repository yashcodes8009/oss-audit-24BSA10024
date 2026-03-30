#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "========================================"
echo " Open Source Manifesto Generator"
echo "========================================"
echo ""

# User input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_${USER_NAME}.txt"

# Generate manifesto
echo "----------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT

echo "On $DATE, I reflect on the importance of open source." >> $OUTPUT
echo "I use $TOOL regularly, and it represents the spirit of collaboration." >> $OUTPUT
echo "To me, freedom means $FREEDOM — the ability to learn, modify, and share." >> $OUTPUT
echo "I believe in building $BUILD and making it accessible to everyone." >> $OUTPUT
echo "Open source is not just code, it is a philosophy of transparency and community." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
