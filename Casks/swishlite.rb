cask "swishlite" do
  version "1.0.1"
  sha256 "2f955d2ab9b4e5dd175f7d83a4ea0c18d6cc60d1d589946826bbf67facf288d0"

  url "https://github.com/hieuspaceos/swishlite/releases/download/v#{version}/SwishLite.dmg"
  name "SwishLite"
  desc "Free, open-source trackpad gesture window manager — a Swish alternative"
  homepage "https://github.com/hieuspaceos/swishlite"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "SwishLite.app"

  zap trash: [
    "~/Library/Application Support/SwishLite",
    "~/Library/Preferences/com.swishlite.app.plist",
  ]
end
