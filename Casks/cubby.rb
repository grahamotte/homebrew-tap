cask "cubby" do
  version "0.5.0"
  sha256 "0e835b3967f19567e4b53b685826dcb5a90aa45d0cfcc761fc93e66d529696ee"

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
