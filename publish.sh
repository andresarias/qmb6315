#!/bin/bash
# Copy the widgets out of the LionMind vault and publish them to GitHub Pages.
# The vault is the source of truth; this repo is only the publishing target.
set -e

VAULT="/Users/andresarias/vaults/LionMind/01 Teaching/_QMB 6315/Widgets"
REPO="$(cd "$(dirname "$0")" && pwd)"

for f in z-score-explorer.html clt-sandbox.html ci-simulator.html p-value-visualizer.html; do
  cp "$VAULT/$f" "$REPO/$f"
done

cd "$REPO"
if git diff --quiet; then
  echo "No changes — nothing to publish."
  exit 0
fi

git add -A
git commit -m "${1:-Update widgets}"
git push
echo
echo "Pushed. GitHub Pages usually redeploys within a minute:"
echo "  https://andresarias.com/qmb6315/"
