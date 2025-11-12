#!/bin/bash
# Update Palet AI Cask formula with new version

set -e

if [ -z "$1" ]; then
  echo "Usage: ./update-cask.sh <version>"
  echo "Example: ./update-cask.sh 1.0.2"
  exit 1
fi

VERSION=$1
URL="https://github.com/cha2hyun/PaletAI/releases/download/v${VERSION}/PaletAI-macOS-arm64.zip"

echo "📥 Downloading PaletAI v${VERSION}..."
curl -sL "$URL" -o /tmp/PaletAI-macOS-arm64.zip

echo "🔐 Calculating SHA256..."
SHA256=$(shasum -a 256 /tmp/PaletAI-macOS-arm64.zip | awk '{print $1}')

echo "✏️  Updating Cask formula..."
sed -i '' "s/version \".*\"/version \"${VERSION}\"/" Casks/palet-ai.rb
sed -i '' "s/sha256 \".*\"/sha256 \"${SHA256}\"/" Casks/palet-ai.rb

echo "✅ Updated to version ${VERSION}"
echo "   SHA256: ${SHA256}"
echo ""
echo "📝 Next steps:"
echo "   git add Casks/palet-ai.rb"
echo "   git commit -m \"chore: Update palet-ai to v${VERSION}\""
echo "   git push origin main"

