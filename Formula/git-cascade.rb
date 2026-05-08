class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.8.1/git-cascade-v0.8.1-darwin-amd64.tar.gz"
      sha256 "c584d2f5ea0de2bd772f8b9a4536c3188d6197d8349c5be1243d56384535c0f6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.8.1/git-cascade-v0.8.1-darwin-arm64.tar.gz"
      sha256 "c1102589ed3a8ad4b69ea53a23b92930afba90655f74cc3f4ef5db724f898f32"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.8.1/git-cascade-v0.8.1-linux-amd64.tar.gz"
      sha256 "7a4ec9855472a624c12ad25d5fcd0fd1e394ea9d389b0acdabfabbd53fce4ed2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.8.1/git-cascade-v0.8.1-linux-arm64.tar.gz"
      sha256 "fb2f37b2453b3192351f09124b4e4d3933ff4fb314bfef53d339e5dd54e43a6a"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
