cask "swishlite" do
  version "1.0.5"
  sha256 "2db1a047df8ab09e59b0d5701dae76667f23c06ceeac0dbad374a2035d46dce7"

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
