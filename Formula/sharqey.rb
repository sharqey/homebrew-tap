class Sharqey < Formula
  desc "Command-line client for Sharqey, the end-to-end encrypted password manager"
  homepage "https://sharqey.com"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/sharqey/cli/releases/download/v#{version}/sharqey-darwin-arm64"
      sha256 "0775b29fc0ce02c7cda15110ede05894eafb16d88453f558b571877e0e2e3923"
    end
    on_intel do
      url "https://github.com/sharqey/cli/releases/download/v#{version}/sharqey-darwin-amd64"
      sha256 "25732286ae34a7a9710a30c6337abc021bd9cfb2f1aa5437732738a9d50420ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sharqey/cli/releases/download/v#{version}/sharqey-linux-arm64"
      sha256 "424414ad71b370eb039cc189246d43ed6182ba94a7043c0c0752132448f3c739"
    end
    on_intel do
      url "https://github.com/sharqey/cli/releases/download/v#{version}/sharqey-linux-amd64"
      sha256 "541ffb728ef1031da04123df494154c46ae0d6b0589bb0487d58f983aa928fbf"
    end
  end

  def install
    bin.install Dir["sharqey-*"].first => "sharqey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sharqey --version")
  end
end
