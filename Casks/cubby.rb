cask "cubby" do
  version "0.10.0"
  sha256 "e08ac47f5dd31e7489517586f5c51070c4746b5475dbe29d1e68613371676a62"

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
