cask "flipswitch" do
  version "1.0.1"
  sha256 "92afaf5c881b112df2df9ca003cc50ca9aed82d7143f1d9322738f819dc5a639"

  url "https://github.com/hieuspaceos/flipswitch/releases/download/v#{version}/flipswitch.dmg"
  name "flipswitch"
  desc "Free, open-source menubar switches — a One Switch alternative"
  homepage "https://github.com/hieuspaceos/flipswitch"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "flipswitch.app"

  zap trash: [
    "~/Library/Application Support/flipswitch",
    "~/Library/Preferences/com.flipswitch.app.plist",
  ]
end
