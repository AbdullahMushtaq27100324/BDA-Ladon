#!/bin/bash

# Grab the first argument as the name, default to 'latest_graph.png' if left blank
OUTPUT_NAME=${1:-latest_graph.png}

# Failsafe: Add .png if you forgot to type it
if [[ "$OUTPUT_NAME" != *.png ]]; then
    OUTPUT_NAME="${OUTPUT_NAME}.png"
fi

echo "📊 Scanning for experiment data..."
CSVS=$(find deployment-data -name "result-summary.csv")

if [ -z "$CSVS" ]; then
    echo "❌ No result-summary.csv files found!"
    exit 1
fi

echo "📈 Generating $OUTPUT_NAME..."
python3 plot_comparison.py -o "$OUTPUT_NAME" $CSVS

echo "✨ Done! Graph saved as: $OUTPUT_NAME"