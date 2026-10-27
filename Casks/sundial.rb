cask "sundial" do
  version "0.3.1"
  sha256 "b542b82b6c3db74f1530e908378e0d91b17d425ec01022b6610f7a5f9015fa82"

  url "https://github.com/grahamotte/Sundial/releases/download/v#{version}/Sundial-macos-#{version}.zip"
  name "Sundial"
  desc "Schedule local commands and see whether each run passed or failed"
  homepage "https://github.com/grahamotte/Sundial"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :golden_gate

  app "Sundial.app"

  zap trash: [
    "~/Library/Application Support/Sundial",
    "~/Library/LaunchAgents/com.grahamotte.sundial.job.*.plist",
    "~/Library/Preferences/com.grahamotte.sundial.plist",
  ]
end
