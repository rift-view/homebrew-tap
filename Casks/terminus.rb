cask "terminus" do
  version "0.1.0"
  sha256 "4056b815d017af7a8c372842ea8aab82c63984955274f9a4e6e262a944266dea"

  url "https://github.com/juliushamm/terminus/releases/download/v#{version}/terminus-#{version}.dmg"
  name "Terminus"
  desc "Visual AWS infrastructure management"
  homepage "https://github.com/juliushamm/terminus"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  auto_updates true

  app "Terminus.app"

  zap trash: [
    "~/Library/Application Support/Terminus",
    "~/Library/Logs/Terminus",
    "~/Library/Preferences/com.terminus.desktop.plist",
    "~/Library/Saved Application State/com.terminus.desktop.savedState",
  ]
end
