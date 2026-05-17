class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.10.1/git-cascade-v0.10.1-darwin-amd64.tar.gz"
      sha256 "21bc7bf62aacab2442540f291ca6d3ff29b37eae7eb66cccc8d0e3069e0116b6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.10.1/git-cascade-v0.10.1-darwin-arm64.tar.gz"
      sha256 "56289cba5416a4efe5cf30263b47aa4fc8b2c62e90eab51df50867af5877ae02"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.10.1/git-cascade-v0.10.1-linux-amd64.tar.gz"
      sha256 "307e6d8f80cbd473d2fa9c9c0ba052574e971e4bbf6854befa7469f42bf51fd6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.10.1/git-cascade-v0.10.1-linux-arm64.tar.gz"
      sha256 "95fab3feecf2d6fd46b749922bf3e0568378f2c31317667bc2d68f34fff1beb9"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
