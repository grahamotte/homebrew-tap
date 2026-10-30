cask "freya-player" do
  version "1.24.1"
  sha256 "182e97e24ed7e3aa4dd108c1e313dcc0070907b20464266c60272f1e133d3a37"

  url "https://github.com/grahamotte/FreyaPlayer/releases/download/v#{version}/Freya-Player-macos-#{version}.zip"
  name "Freya Player"
  desc "Video player for personal Plex and Jellyfin libraries"
  homepage "https://github.com/grahamotte/FreyaPlayer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Freya Player.app"

  zap trash: [
    "~/Library/Application Scripts/com.grahamotte.freyaplayer",
    "~/Library/Containers/com.grahamotte.freyaplayer",
  ]
end
