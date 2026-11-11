cask "sharqey" do
  version "0.1.0"
  sha256 "337fd3de0fc9aa8f0dd5925bb7dc921a6445cbdc465504351ff68b09df92f3cb"

  url "https://github.com/sharqey/desktop/releases/download/v#{version}/Sharqey-macOS.zip"
  name "Sharqey"
  desc "End-to-end encrypted password manager for teams"
  homepage "https://sharqey.com"

  depends_on macos: ">= :big_sur"

  app "Sharqey.app"
end
