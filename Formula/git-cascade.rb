class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.13.1/git-cascade-v0.13.1-darwin-amd64.tar.gz"
      sha256 "d6454d7bcc78983eb8da994c733995151ae4abbf2b9121057570f7847eef0e1e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.13.1/git-cascade-v0.13.1-darwin-arm64.tar.gz"
      sha256 "59896c6ce4b70e8cf3d424051cc840ba115dac30c1127913c5bbd35cb78336b2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.13.1/git-cascade-v0.13.1-linux-amd64.tar.gz"
      sha256 "e1c7b2226a818d744a5b8ce06a7c2a95cf7dd947ba7ad9948afb56bdc2057fa9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.13.1/git-cascade-v0.13.1-linux-arm64.tar.gz"
      sha256 "57815f1bd7c52bbdfcfa5c715949b30b0516a42c60d8a00f078996df0346a158"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
