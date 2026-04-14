class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.3.1/git-cascade-v0.3.1-darwin-amd64.tar.gz"
      sha256 "954fd468076224c6c6c321397d90005be8475504c81ca4b93b8a253a1c3dfb4f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.3.1/git-cascade-v0.3.1-darwin-arm64.tar.gz"
      sha256 "bc00e43ec36c636e85ef6c9d9bb6419f9b4981979c50b17ae4cf5031c597a89d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.3.1/git-cascade-v0.3.1-linux-amd64.tar.gz"
      sha256 "fac02b76916148f28afb6e31c0f5ac092a82fdb94e8a24dba0309f4de197218a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.3.1/git-cascade-v0.3.1-linux-arm64.tar.gz"
      sha256 "b2ec7c44d55cbc58ef63c767580efaa74b3c2fc2936e3e8e4c1f50b6c05a679b"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
