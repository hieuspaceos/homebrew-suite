cask "swishlite" do
  version "1.0.4"
  sha256 "07f7e380a32f92689e55e6faa7a70b64e4a330ec620fd3e347446e002af72184"

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
