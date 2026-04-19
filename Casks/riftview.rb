cask "riftview" do
  version "0.1.0"
  sha256 "37f804be2e4c2f6e20d4bca81a9a7b13ede6b826fa646b326877735360595159"

  url "https://github.com/rift-view/riftview/releases/download/v#{version}/riftview-#{version}.dmg"
  name "RiftView"
  desc "Visual AWS infrastructure management"
  homepage "https://github.com/rift-view/riftview"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  auto_updates true

  app "RiftView.app"

  zap trash: [
    "~/Library/Application Support/RiftView",
    "~/Library/Logs/RiftView",
    "~/Library/Preferences/com.riftview.desktop.plist",
    "~/Library/Saved Application State/com.riftview.desktop.savedState",
  ]
end
