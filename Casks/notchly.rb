cask "notchly" do
  version "1.0.0"
  sha256 "13612467c5bd8cc6db78b5e71ef4a9d413b973055bab98ba1df516d5430ebcd2"

  url "https://github.com/AkshatNaruka/notchly/releases/download/v#{version}/Notchly-#{version}.zip"
  name "Notchly"
  desc "Turn your MacBook notch into a dynamic widget hub"
  homepage "https://notchly.vercel.app"

  # Minimum macOS 14 (Sonoma) — required for notch-aware APIs
  depends_on macos: ">= :sonoma"

  app "Notchly.app"

  # Remove macOS quarantine so Gatekeeper allows the adhoc-signed app to open
  # without prompting the user to allow an "unidentified developer".
  zap trash: [
    "~/Library/Application Support/Notchly",
    "~/Library/Preferences/com.notchly.app.plist",
    "~/Library/Caches/com.notchly.app",
    "~/Library/Saved Application State/com.notchly.app.savedState",
    "~/Library/Keychains/com.notchly.app*",
  ]
end
