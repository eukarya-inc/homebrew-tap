class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.1.0/git-cascade-v0.1.0-darwin-amd64.tar.gz"
      sha256 "ba8f4bb7bf376ac2cbf91eb8ccea596f84700c63bedb5f5fa8e54873eb1eafb4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.1.0/git-cascade-v0.1.0-darwin-arm64.tar.gz"
      sha256 "884425ce9e9cd7c924670e2e1864de543fbe134129349a3097b3024cdf3b0936"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.1.0/git-cascade-v0.1.0-linux-amd64.tar.gz"
      sha256 "169db997f58f983339ebc1775fc3b792e9e5260bce156610a81fa9b9133d45ec"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.1.0/git-cascade-v0.1.0-linux-arm64.tar.gz"
      sha256 "f1d4974ef833059d209334ebe232fea8864b3382023949fbe92c5867497e4215"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
