#!/usr/bin/env bash

OUT="q2_2/ThiagoDoValle.txt"

echo "Q2.2 Starred Commands Output" >> "$OUT"
echo "Genrated on: $(date)" >> "$OUT"
echo "-----------------------------" >> "$OUT"

echo "Hostname:" >> "$OUT"
hostname >> "$OUT"
echo  "" >> "$OUT"

echo "Current User:" >> "$OUT"
whoami >> "$OUT"
echo "" >> "$OUT"

echo "Architecture:" >> "$OUT"
arch >> "$OUT"
echo "" >> "$OUT"

echo "System Information (uname -a):" >> "$OUT"
uname -a >> "$OUT"
echo "" >> "$OUT"
