class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.1/git-cascade-v0.5.1-darwin-amd64.tar.gz"
      sha256 "98d899f8dfd9361fc19ae3ed9767deb38efd7bad16acd4013d11433568753ea5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.1/git-cascade-v0.5.1-darwin-arm64.tar.gz"
      sha256 "24f46933fe5a8079bf7c1c2a056acbe49eed03bb2768bd5216dbd03706b1f8db"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.1/git-cascade-v0.5.1-linux-amd64.tar.gz"
      sha256 "5f16e5e97771e5d780ed8a897582bbe6deb9cc7968935d1598e634442f7a7efd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.1/git-cascade-v0.5.1-linux-arm64.tar.gz"
      sha256 "5b31a19928a25736af9da137fb046822c9f3232cf2bd9cfdbd3125e32053fe68"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
