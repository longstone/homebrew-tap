cask "eml-viewer" do
  version "0.1.0"
  sha256 :no_check # todo replace with real sha256 after first release

  url "https://github.com/longstone/eml-viewer-macos/releases/download/v#{version}/eml-viewer-#{version}.zip"
  name "EML Viewer"
  desc "Free, native macOS viewer for .eml email files"
  homepage "https://github.com/longstone/eml-viewer-macos"

  depends_on macos: ">= :sequoia"

  app "eml-viewer.app"

  zap trash: [
    "~/Library/Preferences/io.github.longstone.eml-viewer.plist",
    "~/Library/Saved Application State/io.github.longstone.eml-viewer.savedState",
    "~/Library/Containers/io.github.longstone.eml-viewer",
    "~/Library/Application Support/io.github.longstone.eml-viewer",
  ]
end
