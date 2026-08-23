cask "notchly" do
  version "1.1.0"
  sha256 "40a99fab95fbd2031e928bcb271f3083f4b4c63a699096070b67ff2d7793d590"

  url "https://github.com/AkshatNaruka/notchly/releases/download/v#{version}/Notchly-latest.dmg"
  name "Notchly"
  desc "Turn your MacBook notch into a productivity hub"
  homepage "https://notchly.vercel.app"

  depends_on macos: ">= :sonoma"

  app "Notchly.app"

  zap trash: [
    "~/Library/Application Support/Notchly",
    "~/Library/Preferences/com.notchly.app.plist",
    "~/Library/Caches/com.notchly.app",
    "~/Library/Saved Application State/com.notchly.app.savedState",
    "~/Library/Keychains/com.notchly.app*",
  ]
end
