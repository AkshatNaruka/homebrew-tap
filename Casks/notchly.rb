cask "notchly" do
  version "1.0.0"
  sha256 "8bf2eb93d8ee8ec433dcd86015d017b0b512eb4894cf26ef98992d102bae7237"

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
