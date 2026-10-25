cask "scamp-micro-deck" do
  version "1.8.8"
  sha256 "f69d8c08167d74a20e1b698fcb0329f4fabaf09be0ad5232b92223bc94dac312"

  url "https://github.com/grahamotte/ScampMicroDeck/releases/download/v#{version}/Scamp-Micro-Deck-macos-#{version}.zip"
  name "Scamp Micro Deck"
  desc "Music player with the tedious charm of a real vinyl record player"
  homepage "https://github.com/grahamotte/ScampMicroDeck"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Scamp Micro Deck.app"

  zap trash: [
    "~/Library/Application Scripts/com.grahamotte.scamp",
    "~/Library/Containers/com.grahamotte.scamp",
  ]
end
