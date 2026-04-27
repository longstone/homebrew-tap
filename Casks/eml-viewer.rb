cask "eml-viewer" do
  version "0.0.0-alpha.3"
  sha256  "7278c1335e3606cc27482173d8cba606abacbf18c0342f3403ba4d580871cd6a"

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
