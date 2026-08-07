class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.15.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.3/git-cascade-v0.15.3-darwin-amd64.tar.gz"
      sha256 "32edf8d14fff9099cf2aed01fa12189afe10b0918fc26ec343672a5679ab7573"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.3/git-cascade-v0.15.3-darwin-arm64.tar.gz"
      sha256 "721146e5b134cdb8a3d7892eb9d9e3a0f3214f05f1422953ea84baae97066f30"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.3/git-cascade-v0.15.3-linux-amd64.tar.gz"
      sha256 "2acf6f7aaf199ab2261cea6eb59137bc175e4c4933a4a7f67c964714ea53d514"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.15.3/git-cascade-v0.15.3-linux-arm64.tar.gz"
      sha256 "b81d734d01e3f04fa0e3c77f7ad97f3f33bf09f84bafb9c40e74d3fcaafc6727"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
