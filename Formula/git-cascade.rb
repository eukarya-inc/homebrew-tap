class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.3.1/git-cascade-v0.3.1-darwin-amd64.tar.gz"
      sha256 "26bfb11c11725b128dd5b6425d883569ddfb7a3a5b985364799fccaa56c6f770"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.3.1/git-cascade-v0.3.1-darwin-arm64.tar.gz"
      sha256 "ab1e27eadc253751bbc32b0ea5abf5dd091e8cce86e18c1c0f41540e2d1248b9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.3.1/git-cascade-v0.3.1-linux-amd64.tar.gz"
      sha256 "3acc3dfe388ef298d3751c7e3547f2beaa1513c4c89ec67fb0a4f8abbc0da871"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.3.1/git-cascade-v0.3.1-linux-arm64.tar.gz"
      sha256 "23f9a1abd408c98273306a3c1fe9ec278cc0c233066c1e4e4081a0be368c0373"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
