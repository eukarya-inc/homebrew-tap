class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.0/git-cascade-v0.5.0-darwin-amd64.tar.gz"
      sha256 "27794d2c6be0384de040fe92c403e8d06d2fd8472490c7590cf2f31be11830cd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.0/git-cascade-v0.5.0-darwin-arm64.tar.gz"
      sha256 "671bd9214079144d095fc895d884b905ae620a48d7b26ad35dc1097c615bb37e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.0/git-cascade-v0.5.0-linux-amd64.tar.gz"
      sha256 "1902a73fabd611269089ce7080f330691cc6c3ae177699e3ceae47c7d6f79123"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.5.0/git-cascade-v0.5.0-linux-arm64.tar.gz"
      sha256 "fa02452b2c98131fb8123466ce532fd4f8f92e9e93e22f9efdda69a33d6e0c38"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
