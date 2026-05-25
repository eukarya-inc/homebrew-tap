class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.2/git-cascade-v0.11.2-darwin-amd64.tar.gz"
      sha256 "453608b43c047778dd37a565c6ef26d6d7476c89fd7e3c758dda4d2e0ad8b7c1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.2/git-cascade-v0.11.2-darwin-arm64.tar.gz"
      sha256 "47f1c6891d1732438b50fc54de3869ab266ade512d6afe92e9e7900c83fa0e7b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.2/git-cascade-v0.11.2-linux-amd64.tar.gz"
      sha256 "47a47d44dea94b71bab7d6270f1870d796b5b53cdf06802b4cf77b0dc1d69fb4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.2/git-cascade-v0.11.2-linux-arm64.tar.gz"
      sha256 "bcb1a0f03c4a2c5e91e3ce2a10192cbdd6849f4b2ab58b2eb41d9a2bf5c97f06"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
