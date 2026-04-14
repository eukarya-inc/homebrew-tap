class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.3.0/git-cascade-v0.3.0-darwin-amd64.tar.gz"
      sha256 "e4962eac2421ee1e9790fcf2aa7c478b87c8ef49903c5a62297e1f6379529e28"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.3.0/git-cascade-v0.3.0-darwin-arm64.tar.gz"
      sha256 "9811e0c60986f4e455d489a69a6d5b533d24f63fdfcd1307dbe4fc63a5c141ff"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.3.0/git-cascade-v0.3.0-linux-amd64.tar.gz"
      sha256 "c37466360fda09417fa65f701a63269e896e78f2b1106f0ef8fcc45041404f03"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.3.0/git-cascade-v0.3.0-linux-arm64.tar.gz"
      sha256 "d8342942b73a23a7532161f34dfcadf6b8152258bf5e606f6d44a47d3a834800"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
