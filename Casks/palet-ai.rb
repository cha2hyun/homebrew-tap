cask "palet-ai" do
  version "1.0.5"
  sha256 "54ae7018dac9410b360e7ccb889636a2d37e5b7c159e3806ed1e33e716821c87"

  url "https://github.com/cha2hyun/palet-ai/releases/download/v#{version}/palet-ai-macOS-arm64.zip"
  name "Palet AI"
  desc "Use multiple AI services (ChatGPT, Gemini, Perplexity, Claude) simultaneously in one screen"
  homepage "https://github.com/cha2hyun/palet-ai"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Apple Silicon only
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Palet AI.app"

  # Remove quarantine attribute to allow running without code signature
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Palet AI.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Palet AI",
    "~/Library/Preferences/com.paletai.app.plist",
    "~/Library/Saved Application State/com.paletai.app.savedState",
  ]

  caveats <<~EOS
    🎨 Palet AI has been installed!

    ✨ Features:
    • Compare responses from ChatGPT, Gemini, Claude, and Perplexity side by side
    • No API key needed - just login with your existing accounts
    • Beautiful dark mode interface
    • Flexible layouts (Column, Row, 2×2 Grid)

    🚀 To get started:
    1. Open "Palet AI" from Applications
    2. Log in to the AI services you want to use
    3. Start comparing responses!

    📝 Note: This app is not signed with an Apple Developer ID.
        Homebrew automatically removes the quarantine attribute, so it works seamlessly!

    💡 For more info: https://github.com/cha2hyun/palet-ai
  EOS
end

