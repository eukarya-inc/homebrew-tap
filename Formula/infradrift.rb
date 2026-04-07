class Infradrift < Formula
  desc "Detect infrastructure drift from Terraform/OpenTofu plans"
  homepage "https://github.com/eukarya-inc/infradrift"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.1.0/infradrift-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "f286e5089c46c047256b3370b8637e2ef8cde6a8aafa60e10eeee9c019d25dd2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.1.0/infradrift-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "3eb4e751c1666ae79414abe6299eb93429845cb9e54d238fa1072fb497b77843"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.1.0/infradrift-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49eeeca22660a7433bd1e5f8280e3259030061dc0d0f6a9c3e4d8e4d9903d999"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/infradrift/releases/download/v0.1.0/infradrift-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d66b756790ff04d3bd2950c1b63ca7036e1c4d89025f080618b497d7c15a681e"
    end
  end

  def install
    bin.install "infradrift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/infradrift --version")
  end
end
