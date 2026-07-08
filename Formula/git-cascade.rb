class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.12.0/git-cascade-v0.12.0-darwin-amd64.tar.gz"
      sha256 "6d491124e07d85a5a35e5ca65d7551c1b0c5bdbc305c5606019e13b47a21fa4f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.12.0/git-cascade-v0.12.0-darwin-arm64.tar.gz"
      sha256 "582af20b7b8a00169773d5752cd5dc48187f3ee3232078f72dfe1f5cbbbd9683"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.12.0/git-cascade-v0.12.0-linux-amd64.tar.gz"
      sha256 "e6d6cdbafa76c26cbe1298e4df03cc2d86f7abaea6a25f3c316ac7b99dba64cb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.12.0/git-cascade-v0.12.0-linux-arm64.tar.gz"
      sha256 "d9df36f4655e537335e8440481711b7f0e4ad5290bf069a1f2868010523b84f5"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
