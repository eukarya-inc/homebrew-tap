class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.15.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.1/git-cascade-v0.15.1-darwin-amd64.tar.gz"
      sha256 "420406e6163ccc5dbd4496fa3d5a6b899d8be8a10fb92f3b718f36d410f7e71b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.1/git-cascade-v0.15.1-darwin-arm64.tar.gz"
      sha256 "941318fcbf517cbfd5250309448e6804546796b5be6cd9b8cbdbdce750a2e1d2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.1/git-cascade-v0.15.1-linux-amd64.tar.gz"
      sha256 "691b51b9c031a652951d9d67c3b85fc0c86a45a7e8a08260f1660f9f81c50213"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.1/git-cascade-v0.15.1-linux-arm64.tar.gz"
      sha256 "34897bb8ffa72a6f6b0226024c39b628a93a24a0372a57359ce80f9711f90032"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
