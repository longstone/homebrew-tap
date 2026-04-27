cask "eml-viewer" do
  version "0.1.0"
  sha256 :no_check # todo replace with real sha256 after first release

  url "https://github.com/longstone/eml-viewer-macos/releases/download/v#{version}/eml-viewer-#{version}.zip"
  name "EML Viewer"
  desc "Free, native macOS viewer for .eml and .msg email files"
  homepage "https://github.com/longstone/eml-viewer-macos"

  depends_on macos: ">= :sequoia"

  app "eml-viewer.app"
  caveats <<~EOS
    EML Viewer is distributed without an Apple Developer ID signature, so
    macOS will quarantine it on first launch. To open it, either:
  
      - Right-click #{appdir}/eml-viewer.app → Open, then confirm; or
      - Remove the quarantine attribute manually:
  
          xattr -dr com.apple.quarantine "#{appdir}/eml-viewer.app"
  
    The app associates with .eml and .msg files. To make it the default
    handler, right-click any such file → Get Info → "Open with" → EML
    Viewer → Change All…
  
    Issues and feature requests:
      https://github.com/longstone/eml-viewer-macos/issues
  EOS

  zap trash: [
    "~/Library/Preferences/com.longstone.eml-viewer.plist",
    "~/Library/Saved Application State/com.longstone.eml-viewer.savedState",
    "~/Library/Containers/com.longstone.eml-viewer",
    "~/Library/Application Support/com.longstone.eml-viewer",
  ]
end
