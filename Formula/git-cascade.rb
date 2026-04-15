class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.6.0/git-cascade-v0.6.0-darwin-amd64.tar.gz"
      sha256 "0e6b24c9f864e2f41f59068b0131617ca5484a2828bbeb05b50e98bdda06bdcc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.6.0/git-cascade-v0.6.0-darwin-arm64.tar.gz"
      sha256 "bd83460b261a35fef2b2297766f768fe8bf165a8b1b247325c2c37ac2f96a71b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.6.0/git-cascade-v0.6.0-linux-amd64.tar.gz"
      sha256 "f00bc6a0aeced4110bd6250e0c4c6841a9dda7b882bed2914288139d99ceaa15"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.6.0/git-cascade-v0.6.0-linux-arm64.tar.gz"
      sha256 "fbe1f00d403cd340084fe3cd0b899fea3d2374d73299ab2c35c838f97726bd83"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
