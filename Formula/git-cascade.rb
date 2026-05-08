class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.9.0/git-cascade-v0.9.0-darwin-amd64.tar.gz"
      sha256 "23349f579bc40771410701e7f4fbf3d6e350e53ea77109eeb3567622ce6b9293"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.9.0/git-cascade-v0.9.0-darwin-arm64.tar.gz"
      sha256 "75700d1460bddba45279c0d66a3928ca2a434e9e6ad3d1cd76127a3557ed4be5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.9.0/git-cascade-v0.9.0-linux-amd64.tar.gz"
      sha256 "b6391d8ccd7d94f2f6078c29a5ddc779534ecf983f88987c0ceef8800b441b22"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.9.0/git-cascade-v0.9.0-linux-arm64.tar.gz"
      sha256 "50b3c5fdbafcf2b0de8f241e1a27af2fba7abe27f927389fed56de162fde65e8"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
