class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.2/git-cascade-v0.5.2-darwin-amd64.tar.gz"
      sha256 "69b3b4d55fa106efcdfb7e05525ddfb97e87d98fca4b997d20a66a9243021d39"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.2/git-cascade-v0.5.2-darwin-arm64.tar.gz"
      sha256 "2ce01d6e949502efb9dee3b3b3ba4e74f8c884d79ed287d7ae597016b89f9a6c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.2/git-cascade-v0.5.2-linux-amd64.tar.gz"
      sha256 "a8ee2f958e4f939ffb8d757174f1d8aadeec2d549c8f44025dce03bcb6a39366"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.2/git-cascade-v0.5.2-linux-arm64.tar.gz"
      sha256 "8abc4ada505cd44e90d6fccae6e2551a1651a1fa94906e49fb625f5abd455a87"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
