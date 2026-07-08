class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.13.0/git-cascade-v0.13.0-darwin-amd64.tar.gz"
      sha256 "29515909a2cd37e48623fc25f7e13df9939887c6ec9c59f45e85589a90a1ffb9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.13.0/git-cascade-v0.13.0-darwin-arm64.tar.gz"
      sha256 "5835087424c9f605a30c25901ae683cc1145b8a9a21313093b9d7e4aabde31c6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.13.0/git-cascade-v0.13.0-linux-amd64.tar.gz"
      sha256 "2e0a7e39b279b74b74245dc8919f6f486e702e37c3398fafa2c1ea4fa280d663"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.13.0/git-cascade-v0.13.0-linux-arm64.tar.gz"
      sha256 "02066712950aed7b13e35186f0d7dda2e3ef0096d4312956d9a9f9c621422f64"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
