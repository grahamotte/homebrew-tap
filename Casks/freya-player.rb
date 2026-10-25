cask "freya-player" do
  version "1.24.0"
  sha256 "bf197a61274ff141af9da07f8274d3fba41a2d419545304fa6065981c6a9ff6a"

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
