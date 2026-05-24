class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.1/git-cascade-v0.11.1-darwin-amd64.tar.gz"
      sha256 "22ba5b835d3646af9ea834c49e11c8f5d80d36f0273a78f84051b3af994120ae"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.1/git-cascade-v0.11.1-darwin-arm64.tar.gz"
      sha256 "49b2e7b91acd42a980e39361c59869339718adb0f1a27de78774d7effd088cc2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.1/git-cascade-v0.11.1-linux-amd64.tar.gz"
      sha256 "9b98b11c16760409a64d1ccc61dba668d00ecb15536d7a53466089dabc65c174"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.1/git-cascade-v0.11.1-linux-arm64.tar.gz"
      sha256 "84367b863b2eebb2c70bece908a91d296584f7648b0294837592a5b2152fb85a"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
