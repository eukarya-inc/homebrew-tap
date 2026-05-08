class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.8.0/git-cascade-v0.8.0-darwin-amd64.tar.gz"
      sha256 "a4fc2f0d84320f14f28a150f242d9ec213f24b51c3ecb223098eaf1199d6ea6b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.8.0/git-cascade-v0.8.0-darwin-arm64.tar.gz"
      sha256 "4a5d01a82bad6b4184d7301f127c21d1252d3f065d7b59239a01d5973d2e794c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.8.0/git-cascade-v0.8.0-linux-amd64.tar.gz"
      sha256 "623bc1beb54098607662fa8a520ededb4686797309efc637e705b123ffdd5a9a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.8.0/git-cascade-v0.8.0-linux-arm64.tar.gz"
      sha256 "de282f9a74eb46d268ababfb370169b5677e011e5ca29a5b69d30fd92215a383"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
