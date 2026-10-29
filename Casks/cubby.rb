cask "cubby" do
  version "0.7.0"
  sha256 "38532922b078d96039986da8b1e71147c8b6cd689f2ce05aa6f98046aed06f18"

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
