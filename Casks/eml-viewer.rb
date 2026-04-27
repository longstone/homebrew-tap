cask "eml-viewer" do
  version "0.0.0-alpha.2"
  sha256  "98446b48365affed317ce1ff694535aeaacf4d02055e2aca80d1e42c90e8f1af"

  url "https://github.com/longstone/eml-viewer-macos/releases/download/v#{version}/eml-viewer-#{version}.zip"
  name "EML Viewer"
  desc "Native macOS viewer for .eml and .msg email files"
  homepage "https://github.com/longstone/eml-viewer-macos"

  app "eml-viewer.app"

  zap trash: [
    "~/Library/Preferences/com.longstone.eml-viewer.plist",
    "~/Library/Saved Application State/com.longstone.eml-viewer.savedState",
  ]
end
