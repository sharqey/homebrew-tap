cask "sharqey" do
  version "0.2.0"
  sha256 "b32b00543a999af97553a6f2b3e659f54dbfc459543dbcdff2c9e3ba7169fdce"

  url "https://github.com/sharqey/desktop/releases/download/v#{version}/Sharqey-macOS.dmg"
  name "Sharqey"
  desc "End-to-end encrypted password manager for teams"
  homepage "https://sharqey.com"

  depends_on macos: ">= :big_sur"

  app "Sharqey.app"
end
