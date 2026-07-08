class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.12.1/git-cascade-v0.12.1-darwin-amd64.tar.gz"
      sha256 "9bee99f786c2ad22428fec6bafdf6ba9c4447b98e8a49c579ec915a470df05f4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.12.1/git-cascade-v0.12.1-darwin-arm64.tar.gz"
      sha256 "3a7aaa2a55784cb80207eabffc8309328a65fd7f7bb081b4f111da7826d98e42"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.12.1/git-cascade-v0.12.1-linux-amd64.tar.gz"
      sha256 "e09df290e04430d5dc4ea4eea197f5aaa3699cf87928da55723b70b0cd7a82a8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.12.1/git-cascade-v0.12.1-linux-arm64.tar.gz"
      sha256 "df4198a980ac64befd485a36537b38a8b930baf9cb229888186c8382a12a9c06"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
