class Sharqey < Formula
  desc "Command-line client for Sharqey, the end-to-end encrypted password manager"
  homepage "https://sharqey.com"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/sharqey/cli/releases/download/v#{version}/sharqey-darwin-arm64"
      sha256 "419e16a3c76583023924503874ce252c7b22dfc50cba325dc0dd1c531ed203b8"
    end
    on_intel do
      url "https://github.com/sharqey/cli/releases/download/v#{version}/sharqey-darwin-amd64"
      sha256 "a8ebaf8fcc8cecb766ac8bbd8bc113d059c0046256e52552af862e2878580739"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sharqey/cli/releases/download/v#{version}/sharqey-linux-arm64"
      sha256 "f84c4899483b2358d257f8b38a93c77c1d287f9d10938ef19ed9b3bcd650f3e4"
    end
    on_intel do
      url "https://github.com/sharqey/cli/releases/download/v#{version}/sharqey-linux-amd64"
      sha256 "dbd777fb2ed6be1e2b81acd506c063ae5818ab04bd262ba66aea666e556c4290"
    end
  end

  def install
    bin.install Dir["sharqey-*"].first => "sharqey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sharqey --version")
  end
end
