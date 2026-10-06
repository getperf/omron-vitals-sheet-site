#!/bin/bash
set -e

echo "📦 Deploying to GitHub Pages..."

git add .
git commit -m "Update site"
git push origin main

echo "✅ Done. GitHub Pages will reflect changes shortly."
