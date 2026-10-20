cask "clipspot" do
  version "1.0.2"
  sha256 "eabb73a35ba4f59295c1b7f9ba99441aa633c989b0d205b8c658d6a73a2dfe8e"

  url "https://github.com/hieuspaceos/clipspot/releases/download/v#{version}/ClipSpot.dmg"
  name "ClipSpot"
  desc "Free, open-source clipboard manager — a Paste alternative"
  homepage "https://github.com/hieuspaceos/clipspot"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "ClipSpot.app"

  zap trash: [
    "~/Library/Application Support/ClipDeck",
    "~/Library/Preferences/com.clipspot.app.plist",
  ]
end
