#!/bin/bash
# Simple Interest Calculator
# Formula: SI = (Principal * Rate * Time) / 100

echo "Enter the principal amount:"
read principal

echo "Enter the annual rate of interest (%):"
read rate

echo "Enter the time period (years):"
read time

simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Simple Interest = $simple_interest"
