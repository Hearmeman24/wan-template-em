#!/usr/bin/env bash
set -euo pipefail

# Check if directory exists and remove it or update it
if [ -d "ComfyUI-Wan-Template-5090" ]; then
  echo "📂 Directory already exists. Removing it first..."
  rm -rf wan-template-em
fi

echo "📥 Cloning ComfyUI-Wan-Template-5090…"
git clone https://github.com/Hearmeman24/wan-template-em.git

echo "📂 Moving start.sh into place…"
mv wan-template-em/src/start.sh /

echo "▶️ Running start.sh"
bash /start.sh