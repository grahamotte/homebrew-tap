cask "cubby" do
  version "0.9.0"
  sha256 "9454031c69c3d92e8e623851deae5b1b7cd71193bab4623063018b782b7d45c8"

  url "https://github.com/grahamotte/Cubby/releases/download/v#{version}/Cubby-macos-#{version}.zip"
  name "Cubby"
  desc "Fast, simple file manager with list, icon, and column views"
  homepage "https://github.com/grahamotte/Cubby"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :golden_gate

  app "Cubby.app"

  zap trash: [
    "~/.config/cubby",
    "~/Library/Preferences/com.grahamotte.cubby.plist",
    "~/Library/Saved Application State/com.grahamotte.cubby.savedState",
  ]
end
