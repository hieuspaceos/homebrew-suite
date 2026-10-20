cask "swiftshot" do
  version "1.0.2"
  sha256 "9527bede6871064cf857fef663144af85a6ade9deced6f76ed8c96bc79a9c23b"

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
