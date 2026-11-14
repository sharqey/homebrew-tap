cask "sharqey" do
  version "0.4.0"
  sha256 "f2162b0c915758d3f7390f90a041d7489980dd8db341435b7ee52dee6cb5d442"

  url "https://github.com/sharqey/desktop/releases/download/v#{version}/Sharqey-macOS.dmg"
  name "Sharqey"
  desc "End-to-end encrypted password manager for teams"
  homepage "https://sharqey.com"

  depends_on macos: ">= :big_sur"

  app "Sharqey.app"
end
