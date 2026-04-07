class Infradrift < Formula
  desc "Detect infrastructure drift from Terraform/OpenTofu plans"
  homepage "https://github.com/eukarya-inc/infradrift"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.2.0/infradrift-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "81be0ba0b340a90731c0b94213099bfec7ba49e6459e3e0c1cace0215cbfe9cb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.2.0/infradrift-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "a2ca25eeb88fa25e1bbd3865f26956766760102661510e392036556832bb80e1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.2.0/infradrift-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9b585fd1d9225878826882535ed06d73091024bb2d3dea63146433b841770bc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.2.0/infradrift-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd578239406a54631fc78629c212b461f24a9c17a12642cd30df6162984aa84e"
    end
  end

  def install
    bin.install "infradrift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/infradrift --version")
  end
end
