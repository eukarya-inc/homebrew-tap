class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.15.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.2/git-cascade-v0.15.2-darwin-amd64.tar.gz"
      sha256 "cfb865e544b3450c2919329aee06ad55921560c39bcfa5c8e2cf6ff429c5acfe"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.2/git-cascade-v0.15.2-darwin-arm64.tar.gz"
      sha256 "4ea87cfd5dd3a3d9292eaafeacecc7478663e4b9eeb5c27bf15a6f369576ea1e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.2/git-cascade-v0.15.2-linux-amd64.tar.gz"
      sha256 "4a2148136a098ad686db39f77509cb5f5bb6ef849296bbed854967a202559cbf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.2/git-cascade-v0.15.2-linux-arm64.tar.gz"
      sha256 "d9513b4fad7bd52c3c17ed1a79d32863a07ec573cacf76a3f7549e57b0e0ffa5"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
