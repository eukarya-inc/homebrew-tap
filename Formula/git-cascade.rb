class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.6.2/git-cascade-v0.6.2-darwin-amd64.tar.gz"
      sha256 "42f2d7246d68d2440accbae3d7caec9a3d77d53d8b6100a988dbcb43b86061b1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.6.2/git-cascade-v0.6.2-darwin-arm64.tar.gz"
      sha256 "c159c5d080504f28e0e59c0003464418eaff49269b5dbff1d962728f5af016d3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.6.2/git-cascade-v0.6.2-linux-amd64.tar.gz"
      sha256 "60ef03a4b8ebe7a99ef51e879e9cd6f5099f36df69b6c8fcb90d2b89a19dfaf0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.6.2/git-cascade-v0.6.2-linux-arm64.tar.gz"
      sha256 "e91e371c253c7fe1a49a36f0a38a91cb470de458cc8cc28ac99f9a91675104be"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
