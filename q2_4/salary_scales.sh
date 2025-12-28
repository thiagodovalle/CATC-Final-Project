#!/bin/bash
# Q2.4 Salary Scales (Simple Version)

echo "Q2.4 - Salary Scales"
echo "--------------------"

# Inputs
read -p "Enter starting salary (whole number): " salary
read -p "Enter number of points on the scale: " points
read -p "Enter salary increment (whole number): " inc
read -p "Is the employee a manager? (y/n): " manager

year=$(date +%Y)

# Manager rule: 2 increments per year, otherwise 1
step=1
if [ "$manager" = "y" ]; then
  step=2
fi

echo ""
echo "Year | Point | Salary"
echo "----------------------"

point=1

# Loop through each year/row
for ((i=1; i<=points; i++))
do
  echo "$year | $point | €$salary"

  # Increase salary and point for next row
  salary=$((salary + inc * step))
  point=$((point + step))

  # Stop point from going above max points
  if [ $point -gt $points ]; then
    point=$points
  fi

  year=$((year + 1))
done

