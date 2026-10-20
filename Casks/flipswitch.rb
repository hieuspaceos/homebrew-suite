cask "flipswitch" do
  version "1.0.2"
  sha256 "dd1fe72478db01dd439589b7f86890bc241b752044e173a350b4c8e3ffb5d43b"

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
