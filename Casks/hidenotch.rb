cask "hidenotch" do
  version "1.4.0"
  sha256 "f51b18d6556ed9f09eac284c6670dbdc44d56d604b138e9b8abe04417a837408"

  url "https://github.com/AgPriyanshu/HideNotch/releases/download/v#{version}/HideNotch-#{version}.dmg"
  name "HideNotch"
  desc "Hides the MacBook notch by baking a black menu bar into your wallpapers"
  homepage "https://github.com/AgPriyanshu/HideNotch"

  depends_on macos: :ventura

  app "HideNotch.app"

  zap trash: [
    "~/Library/Application Support/HideNotch",
    "~/Library/Preferences/com.agpriyanshu.HideNotch.plist",
  ]

  caveats <<~EOS
    HideNotch is ad-hoc signed and not notarized. If macOS refuses to open it, run:
      xattr -dr com.apple.quarantine /Applications/HideNotch.app
  EOS
end
