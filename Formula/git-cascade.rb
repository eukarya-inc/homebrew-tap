class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.3/git-cascade-v0.5.3-darwin-amd64.tar.gz"
      sha256 "bb5daf36c7e94d54c8fc07036f86060c5c4a321cdbfff8a090fb12a8f6e238d9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.3/git-cascade-v0.5.3-darwin-arm64.tar.gz"
      sha256 "13e5e05c261de1c18fcbb45d19c8c170c92d12e57b07ab6bd46d00d00d491261"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.3/git-cascade-v0.5.3-linux-amd64.tar.gz"
      sha256 "bdba4e14c9bdeffd7d4716ff53555b4a694352e687f7e29e57631780ef85fbb2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.3/git-cascade-v0.5.3-linux-arm64.tar.gz"
      sha256 "a5ed640619ec5ca0533b0c02ec55dbcab2d89b26c8bffc30b6a1cc071360010d"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
