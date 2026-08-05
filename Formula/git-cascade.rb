class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.0/git-cascade-v0.15.0-darwin-amd64.tar.gz"
      sha256 "776c329e3f30b8598cbc8ac0d94b685de28a09eb5acc6655a6fdc4e291c93acd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.0/git-cascade-v0.15.0-darwin-arm64.tar.gz"
      sha256 "ca3e4095018b00504c3b35842935c871eb3a29353804a67c73fef7c8fd894092"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.0/git-cascade-v0.15.0-linux-amd64.tar.gz"
      sha256 "13789aa70a06fb7ea3d141ddee000b314047a5b8e7791adf6d41187a34c81b76"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.0/git-cascade-v0.15.0-linux-arm64.tar.gz"
      sha256 "b91936559d9e1f108dc53b1342757f1ef028cb610f59c8c930410207ae47133e"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
