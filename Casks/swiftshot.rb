cask "swiftshot" do
  version "1.0.1"
  sha256 "d43fe5127742a7d29efa7e45234777ec027e6e0854d9c34f78c52d0337179fd2"

  url "https://github.com/hieuspaceos/swiftshot/releases/download/v#{version}/SwiftShot.dmg"
  name "SwiftShot"
  desc "Free, open-source screenshot + annotation utility — a CleanShot X alternative"
  homepage "https://github.com/hieuspaceos/swiftshot"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "SwiftShot.app"

  zap trash: [
    "~/Library/Application Support/SwiftShot",
    "~/Library/Preferences/com.swiftshot.app.plist",
    "~/Pictures/SwiftShot",
  ]
end
