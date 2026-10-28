cask "cubby" do
  version "0.3.0"
  sha256 "d7ae3979250f61171d403ead7c9934befed9ae81155dd5944d161e73b0874cfd"

  url "https://github.com/grahamotte/Cubby/releases/download/v#{version}/Cubby-macos-#{version}.zip"
  name "Cubby"
  desc "Fast, simple file manager with list, icon, column, and gallery views"
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
