cask "sharqey" do
  version "0.3.1"
  sha256 "072dba3b79bf800c620962ee126744c55a8f527574564db2fc042073d371c055"

  url "https://github.com/sharqey/desktop/releases/download/v#{version}/Sharqey-macOS.dmg"
  name "Sharqey"
  desc "End-to-end encrypted password manager for teams"
  homepage "https://sharqey.com"

  depends_on macos: ">= :big_sur"

  app "Sharqey.app"
end
