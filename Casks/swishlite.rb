cask "swishlite" do
  version "1.0.2"
  sha256 "7e10276c736f264d4952d7de44852347953eb799133111cee4766cdfd5d7ca1d"

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
