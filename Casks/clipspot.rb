cask "clipspot" do
  version "1.0.1"
  sha256 "7dc03419849f9a6d50ed89751b556d9d1873e6b23303da98dfdfd894153912bb"

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
