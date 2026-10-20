cask "swishlite" do
  version "1.0.3"
  sha256 "21f8c7cefb02f42164575c63e4119d3a9ffee6309a765a31d188c475988bc2e5"

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
