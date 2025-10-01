#!/bin/bash

# Function to calculate and display Simple Interest
# Usage: calculate_interest <principal> <rate> <time>
calculate_interest() {
    local P=$1
    local R=$2
    local T=$3

    # Check for three arguments
    if [ -z "$P" ] || [ -z "$R" ] || [ -z "$T" ]; then
        echo "Error: Missing arguments. Usage: calculate_interest <principal> <rate> <time>"
        return 1
    fi

    # Calculate Simple Interest (I = P * R * T) using 'bc'
    # Use scale=2 to ensure the result has two decimal places for currency format.
    interest=$(echo "scale=2; $P * $R * $T" | bc)

    echo "Calculated Simple Interest: $interest"
}

echo "Simple Interest Calculator (I = P * R * T)"
echo "-----------------------------------------"

# Prompt and read all variables directly
echo -n "Principal Amount (P): "
read P

echo -n "Annual Rate (R, as decimal): "
read R

echo -n "Time (T, years): "
read T

# Execute the function with user inputs
calculate_interest "$P" "$R" "$T"
