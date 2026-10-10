cask "hidenotch" do
  version "1.3.0"
  sha256 "059659fe935c9ccb720e94eab9786bc592fde3a2c8c32d1a4a892870d9a26bb2"

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
