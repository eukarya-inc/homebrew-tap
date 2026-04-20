class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.7.0/git-cascade-v0.7.0-darwin-amd64.tar.gz"
      sha256 "4d9f8544fb86e68b9148b53d00df44e1e2adad7a930f8e9da58cc80c95fbe69a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.7.0/git-cascade-v0.7.0-darwin-arm64.tar.gz"
      sha256 "cb9ce248083aef8f78a4165e6617108efda8913fec36e2452def2e74da5ab0a5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.7.0/git-cascade-v0.7.0-linux-amd64.tar.gz"
      sha256 "5fa3d8e7b513f23c1083d5d8f7b37e795a9e789869294b2cde8702e93cc857da"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.7.0/git-cascade-v0.7.0-linux-arm64.tar.gz"
      sha256 "b9f23002db877bc8d7469814ac5f065a830834c9dc1899d2abb50ea50b0f3bac"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
