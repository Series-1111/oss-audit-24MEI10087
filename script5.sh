#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Shrinkhla

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "" > $OUTPUT

echo "Open Source Manifesto" >> $OUTPUT
echo "----------------------" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL regularly, and it represents the spirit of open collaboration." >> $OUTPUT
echo "To me, freedom means $FREEDOM, especially in the context of software and knowledge sharing." >> $OUTPUT
echo "If given the opportunity, I would build $BUILD and share it openly with others." >> $OUTPUT
echo "I believe open source empowers individuals and communities to grow together." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
