# Homebrew Tap for Palet AI

🎨 **Palet AI** - Use multiple AI services simultaneously in one screen

## Installation

```bash
# Add this tap
brew tap cha2hyun/tap

# Install Palet AI
brew install --cask palet-ai
```

## Quick Start

```bash
# Install (combines the above two steps)
brew install --cask cha2hyun/tap/palet-ai

# Update to the latest version
brew upgrade palet-ai

# Uninstall
brew uninstall --cask palet-ai
```

## What is Palet AI?

Palet AI is a desktop app that lets you:

- ✨ **Compare AI responses** from ChatGPT, Gemini, Claude, and Perplexity side by side
- 🔑 **No API key needed** - just login with your existing accounts
- 🎨 **Beautiful dark mode** interface
- 📐 **Flexible layouts** - Column, Row, or 2×2 Grid
- 🔍 **Integrated browser** for web searches

## Features

### 🎯 Multiple AI Services
- ChatGPT (OpenAI)
- Google Gemini
- Claude (Anthropic)
- Perplexity AI

### 🎨 Smart Layout Options
- **Column Layout**: Stack AI panels vertically
- **Row Layout**: Arrange AI panels horizontally  
- **Grid Layout**: 2×2 grid for up to 4 services

### 💾 Session Persistence
Once you log in, your sessions are automatically saved. Start using immediately on next launch!

## System Requirements

- **Platform**: macOS (Apple Silicon)
- **Minimum**: macOS 11.0 Big Sur or later
- **Architecture**: ARM64 (M1/M2/M3/M4)

## Why No Code Signing?

This is a personal hobby project distributed for free. Apple Developer accounts cost $99/year, which isn't feasible for a free app.

**Don't worry!** Homebrew automatically handles the quarantine attribute, so the app works perfectly without code signing. This is a common practice for open-source macOS apps.

## Links

- 🏠 [Homepage](https://github.com/cha2hyun/PaletAI)
- 📦 [Releases](https://github.com/cha2hyun/PaletAI/releases)
- 🐛 [Issues](https://github.com/cha2hyun/PaletAI/issues)

## For Maintainers

### Updating the Cask

When a new version of Palet AI is released:

```bash
# Use the update script
./update-cask.sh 1.0.2

# Or manually update Casks/palet-ai.rb:
# 1. Update version number
# 2. Download the new release
# 3. Calculate SHA256: shasum -a 256 PaletAI-macOS-arm64.zip
# 4. Update sha256 in the formula

# Commit and push
git add Casks/palet-ai.rb
git commit -m "chore: Update palet-ai to v1.0.2"
git push origin main
```

## License

MIT License - Free to use, modify, and distribute.

---

Made with ❤️ by [@cha2hyun](https://github.com/cha2hyun)

