class Infradrift < Formula
  desc "Detect infrastructure drift from Terraform/OpenTofu plans"
  homepage "https://github.com/eukarya-inc/infradrift"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.3.0/infradrift-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "3d7bfc2d349d859e2bf8437a686db5c1384391b65b057ae6461f9030db459803"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.3.0/infradrift-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "313b72770c4c100ef0064caa09ae521ab8616c315376f3ffaa0e3fd773618fc6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.3.0/infradrift-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd21c8fb00b68edab11ac7325e1182257084b517874218a03b314a3fd9d0cfc4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.3.0/infradrift-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6fb914e036d6bf88302456d87a9e3a9e5612e4362d68434c370c98a8c9f21436"
    end
  end

  def install
    bin.install "infradrift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/infradrift --version")
  end
end
