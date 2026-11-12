class Sharqey < Formula
  desc "Command-line client for Sharqey, the end-to-end encrypted password manager"
  homepage "https://sharqey.com"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/sharqey/cli/releases/download/v#{version}/sharqey-darwin-arm64"
      sha256 "9e3d71c9ed41aad07c05ae4056355f1244ed9e56276ac23416b86cc90ffd8592"
    end
    on_intel do
      url "https://github.com/sharqey/cli/releases/download/v#{version}/sharqey-darwin-amd64"
      sha256 "cd24de34808ee5eec06bc12aa4951216b15a677d3ee5ab3cd6a524e111a1d5c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sharqey/cli/releases/download/v#{version}/sharqey-linux-arm64"
      sha256 "7c60818908421551013d92c6fd2450fb1e4e4b78a49827d76a9e12ceea0adf25"
    end
    on_intel do
      url "https://github.com/sharqey/cli/releases/download/v#{version}/sharqey-linux-amd64"
      sha256 "db36a8c521205e897059b8f42b09b2c208491ce385d2b212960563bb488e6dba"
    end
  end

  def install
    bin.install Dir["sharqey-*"].first => "sharqey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sharqey --version")
  end
end
