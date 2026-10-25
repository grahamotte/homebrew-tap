cask "badge-on-bar" do
  version "0.6.1"
  sha256 "861b84344d12724dcffae7cd0fcd9774b768dc2a5dcb1660a66a20f151d7eec0"

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
