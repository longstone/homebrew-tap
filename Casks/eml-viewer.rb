cask "eml-viewer" do
  version "0.0.0-alpha.4"
  sha256  "21119ad5d008afb19229334bc6879b06559c5bd6736708f178a0644dcc0484f8"

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
