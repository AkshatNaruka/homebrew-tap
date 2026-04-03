cask "notchly" do
  version "1.0.0"
  sha256 "eb2c653533dfc7766746b8bd62623996b0506538c6b7902724132f252a6097a5"

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
