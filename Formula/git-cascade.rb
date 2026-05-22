class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.0/git-cascade-v0.11.0-darwin-amd64.tar.gz"
      sha256 "c972039f8d4c3be0ba752556389bc48e3aed0620e952dd691ca925936f108e14"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.0/git-cascade-v0.11.0-darwin-arm64.tar.gz"
      sha256 "7d9147592af4cdc38d889e58ab7fa5ed10fd3a996db43db153fe704f95ebff7c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.0/git-cascade-v0.11.0-linux-amd64.tar.gz"
      sha256 "e9f7999dee2d673a0ecd6823e12d16c81f698d2e2c08dd0078f9e34ecb2ae762"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.0/git-cascade-v0.11.0-linux-arm64.tar.gz"
      sha256 "124fb20edf9306498ee15caf33a7ebc1ecd8cd1c88981bb3dc664836b829a78d"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
