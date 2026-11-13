cask "sharqey" do
  version "0.3.0"
  sha256 "c461ae15daa53324223c754273872d1a537d3e54c125410eef80ec5f36ee20f8"

  url "https://github.com/sharqey/desktop/releases/download/v#{version}/Sharqey-macOS.dmg"
  name "Sharqey"
  desc "End-to-end encrypted password manager for teams"
  homepage "https://sharqey.com"

  depends_on macos: ">= :big_sur"

  app "Sharqey.app"
end
