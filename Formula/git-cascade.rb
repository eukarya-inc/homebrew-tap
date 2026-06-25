class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  version "0.11.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.5/git-cascade-v0.11.5-darwin-amd64.tar.gz"
      sha256 "f0185e97db53905171d6eb3148fa6aaaa5bed73fc7516c21da0489accac96fae"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.5/git-cascade-v0.11.5-darwin-arm64.tar.gz"
      sha256 "6f2192e7da82b8891be3e6ecd1041bcaf7fb34695df9fc3fdba60faa617124c5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.5/git-cascade-v0.11.5-linux-amd64.tar.gz"
      sha256 "02870660b000dc465e2447bebe531a3dbd487c865fa7783edc8996f544f54f90"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.11.5/git-cascade-v0.11.5-linux-arm64.tar.gz"
      sha256 "0006292a5b61b7a57c207f1154ae4e0be5baabc68054c077e54e0217f9e328e5"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
