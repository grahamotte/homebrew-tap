cask "badge-on-bar" do
  version "0.6.2"
  sha256 "c050bd66a35a2c3c3ec7273ecb8542ef379c4710f758a86dca47ec685bd4a6ce"

  url "https://github.com/grahamotte/BadgeOnBar/releases/download/v#{version}/Badge-On-Bar-macos-#{version}.zip"
  name "Badge On Bar"
  desc "Mirror Dock badge counts in the menu bar"
  homepage "https://github.com/grahamotte/BadgeOnBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Badge On Bar.app"

  zap trash: "~/Library/Preferences/com.grahamotte.badgeonbar2.plist"
end
