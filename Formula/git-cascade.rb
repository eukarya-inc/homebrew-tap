class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.11.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.4/git-cascade-v0.11.4-darwin-amd64.tar.gz"
      sha256 "04901793da60ff44012a82d714ad6191350e2b9a5c9ea4a2901ba869ad423384"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.4/git-cascade-v0.11.4-darwin-arm64.tar.gz"
      sha256 "db2e0cea1619cc41743333adac32962429b91613c6f22469414eb27dacd835e9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.4/git-cascade-v0.11.4-linux-amd64.tar.gz"
      sha256 "61e5b0b79d3eecdf3cd90dc8884098111b6602fc53a39d5d905708cd607cb047"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.4/git-cascade-v0.11.4-linux-arm64.tar.gz"
      sha256 "9886a6c6814f0225be6204c884c5a2a0229c5bbee58741076a287d2008e2dcad"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
