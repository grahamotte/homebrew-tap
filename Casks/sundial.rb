cask "sundial" do
  version "0.2.5"
  sha256 "e1bbd3e188b249f92294b45fd23a78009ca1f40f299a7ec414dc8d3907ea5663"

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
