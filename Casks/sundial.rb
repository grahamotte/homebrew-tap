cask "sundial" do
  version "0.6.0"
  sha256 "548888d579e72fa3fcee5ab687a7a9f1d3f8ed603bf51e50ff08b4e2e353011d"

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
