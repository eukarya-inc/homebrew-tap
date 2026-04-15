class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.6.1/git-cascade-v0.6.1-darwin-amd64.tar.gz"
      sha256 "211519b7984367b1b6deeead6e6358b40cbfb44cd5428c66eb45e89704ef9066"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.6.1/git-cascade-v0.6.1-darwin-arm64.tar.gz"
      sha256 "edcd2401419fb9eaefd4ee908ad730c89a3c139a1b8b280804d473a0ce7b1232"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.6.1/git-cascade-v0.6.1-linux-amd64.tar.gz"
      sha256 "2b89c73b240b0024959d8f0f7ddbbb14fa39c54961ce1e86b8af9c3ead6eef55"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.6.1/git-cascade-v0.6.1-linux-arm64.tar.gz"
      sha256 "71d4d73f0aa50d37aad3ec2b6397e7f5d44e36264ada7f33e22afdcd256a939f"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
