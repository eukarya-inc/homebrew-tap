class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.10.0/git-cascade-v0.10.0-darwin-amd64.tar.gz"
      sha256 "ff94258129552aca276306894db72d0b036879fc9704893884b27f926153b882"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.10.0/git-cascade-v0.10.0-darwin-arm64.tar.gz"
      sha256 "26ad1faf37bc0c7d9f59c6109c10adab98f7deb5fa5679d4a86bc4f816b4e4f9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.10.0/git-cascade-v0.10.0-linux-amd64.tar.gz"
      sha256 "6299708b2f815cd66161f2dae3ce17ffad62c00a4cadb2c3fb3729e2396565d9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.10.0/git-cascade-v0.10.0-linux-arm64.tar.gz"
      sha256 "00f320967ec1fb22670fa607c9305cb20791f4f5e25f46bf586309bc5053ee6e"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
