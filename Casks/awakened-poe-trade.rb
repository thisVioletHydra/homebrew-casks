cask "awakened-poe-trade" do
  version "3.29.107"
  sha256 "9b18e717a3eb1a2c7f216b38c49dbdd32ada4f358e87f8a78fbc3f250cf7288f"

  url "https://github.com/SnosMe/awakened-poe-trade/releases/download/v#{version}/Awakened-PoE-Trade-#{version}-universal.dmg",
      verified: "github.com/SnosMe/awakened-poe-trade/"
  name "Awakened PoE Trade"
  desc "Path of Exile overlay for live search and price checking"
  homepage "https://snosme.github.io/awakened-poe-trade/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Awakened PoE Trade.app"

  zap trash: [
    "~/Library/Application Support/awakened-poe-trade",
    "~/Library/Caches/com.electron.awakened-poe-trade",
    "~/Library/Caches/com.electron.awakened-poe-trade.ShipIt",
    "~/Library/HTTPStorages/com.electron.awakened-poe-trade",
    "~/Library/Logs/awakened-poe-trade",
    "~/Library/Preferences/com.electron.awakened-poe-trade.plist",
    "~/Library/Saved Application State/com.electron.awakened-poe-trade.savedState",
  ]
end
