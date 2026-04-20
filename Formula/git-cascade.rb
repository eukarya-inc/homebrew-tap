class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.7.1/git-cascade-v0.7.1-darwin-amd64.tar.gz"
      sha256 "227cef819ce528fcb43c5f91b84b0b415335154be2e171502b3b073767d0ef32"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.7.1/git-cascade-v0.7.1-darwin-arm64.tar.gz"
      sha256 "7034b906fa4321588b57c5571392a8d57fb6b8fdd291fa65313b65a416a47c9e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.7.1/git-cascade-v0.7.1-linux-amd64.tar.gz"
      sha256 "3316c9973280c5dda52730ccbf337f29b2b125b811fe77f3f29e5a3288b7f09e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.7.1/git-cascade-v0.7.1-linux-arm64.tar.gz"
      sha256 "fa68339a170caff0bfaffc0da939addd5983d4dd9108ebfb2257afe08bd7c3cd"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
