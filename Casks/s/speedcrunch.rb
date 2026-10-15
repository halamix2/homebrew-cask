cask "speedcrunch" do
  version "1.0.0"
  sha256 "6d7893651d8a215812e96bb28e666a62727013dcd1ade0ea61da0babbf3ed9e9"

  url "https://github.com/heldercorreia/speedcrunch/releases/download/v#{version}/SpeedCrunch-1.0-arm64.dmg"
  name "SpeedCrunch"
  homepage "https://www.speedcrunch.org//"

  depends_on :macos

  app "SpeedCrunch.app"

  zap trash: [
    "~/Library/Application Support/SpeedCrunch",
    "~/Library/Preferences/SpeedCrunch",
  ]

end
