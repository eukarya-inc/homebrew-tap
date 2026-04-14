class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.4.0/git-cascade-v0.4.0-darwin-amd64.tar.gz"
      sha256 "c2af85bfd77a4d3629a0e7916708d600486d3e28bb3e11cffed1690ea96ca358"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.4.0/git-cascade-v0.4.0-darwin-arm64.tar.gz"
      sha256 "9016128440ff201c64d978103f1d83932ca67780c2bd1bdeb266ba8c056aad50"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.4.0/git-cascade-v0.4.0-linux-amd64.tar.gz"
      sha256 "890e5dbcabfdaee8c600a5046d85be598e5b09e9465d141bfa14012695dfde3a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.4.0/git-cascade-v0.4.0-linux-arm64.tar.gz"
      sha256 "bdb51dce90a9a85c189b2bbda706844ca0efbfb6a85f578939abd8aa05eabad0"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
