class Infradrift < Formula
  desc "Detect infrastructure drift from Terraform/OpenTofu plans"
  homepage "https://github.com/eukarya-inc/infradrift"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.2.0/infradrift-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "9d7c1bd0d5deb16832d6ea3f702e4f0b03def9070b7283869a9a076894aafab7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.2.0/infradrift-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d4fbb38c12f78bd7414f5ecbe0f0dde427efcf5e1a9b44799b2b3bcfee86c6c9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.2.0/infradrift-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "03d183deacada53a6160248fdfd72cd38f7c63c730db628cf4dae94f944a4f82"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.2.0/infradrift-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1034b19fcb0bab7ea0c99c6356dfe4c2b1e2041301190dfabd1d681ad3ec9924"
    end
  end

  def install
    bin.install "infradrift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/infradrift --version")
  end
end
