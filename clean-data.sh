#!/bin/bash

echo "🧹 Sweeping up old experiment data..."

# Remove all the local run folders
rm -rf deployment-data/local-*

# Optional: Remove old graph images so you don't confuse yourself
rm -f *.png

echo "✨ All clean! Your deployment-data folder is pristine."