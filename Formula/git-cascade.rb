class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.14.0/git-cascade-v0.14.0-darwin-amd64.tar.gz"
      sha256 "e2a87c03f08d71f3150fc4303641db5d75d9e71b26be98d20ff03de751691c37"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.14.0/git-cascade-v0.14.0-darwin-arm64.tar.gz"
      sha256 "8717a605819ce7ebca8e2f6d976d2098c162716aeb9e50603d5fe25c984c459f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.14.0/git-cascade-v0.14.0-linux-amd64.tar.gz"
      sha256 "ad80c5290da0c556ed54416e8d74ef91214a9f20b6738bfc13fe2f2e4837dfed"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.14.0/git-cascade-v0.14.0-linux-arm64.tar.gz"
      sha256 "bf9af17ce93750cfed5af0db61de8b89605b8af719bc9ab7c62fcb400abeab07"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
