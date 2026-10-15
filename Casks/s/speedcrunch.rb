cask "speedcrunch" do
  arch arm: "arm64"
  version "1.0.0"
  sha256 "6d7893651d8a215812e96bb28e666a62727013dcd1ade0ea61da0babbf3ed9e9"

  url "https://github.com/heldercorreia/speedcrunch/releases/download/v#{version}/SpeedCrunch-#{version.major_minor}-#{arch}.dmg"
  name "SpeedCrunch"
  desc "A high-precision scientific calculator"
  homepage "https://www.speedcrunch.org/"

  livecheck do
    url :url
   regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "SpeedCrunch.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Application Support/SpeedCrunch",
    "~/Library/Preferences/SpeedCrunch",
  ]

end
