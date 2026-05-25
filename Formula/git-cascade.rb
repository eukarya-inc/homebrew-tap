class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.3/git-cascade-v0.11.3-darwin-amd64.tar.gz"
      sha256 "6c04e8a70ae692f639ff64fe4b99735a96ed7f1af76d9e701639c96bad114e02"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.3/git-cascade-v0.11.3-darwin-arm64.tar.gz"
      sha256 "be22715179b5476370fac840f14a8e411a1ae866464562b406fea18f71e8dfe9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.3/git-cascade-v0.11.3-linux-amd64.tar.gz"
      sha256 "d35e0aac8be24c144efe18378a9cf97564a3014c1bcbac5db4db4430a1e0c66d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.3/git-cascade-v0.11.3-linux-arm64.tar.gz"
      sha256 "8997d539e37a50b70fe3a51d93d29d38a779f4b540a5f5e1dfd88fa96ff1998e"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
