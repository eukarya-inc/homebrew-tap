class GitCascade < Formula
  desc "Scan GitHub organization repositories for compliance against YAML-defined rules"
  homepage "https://github.com/eukarya-inc/git-cascade"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.2.0/git-cascade-v0.2.0-darwin-amd64.tar.gz"
      sha256 "791352578f31432a615ab727a2ac13a401af27cbd631bb38d41d0b9346d78c35"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.2.0/git-cascade-v0.2.0-darwin-arm64.tar.gz"
      sha256 "aca8cf6b77da19663df1e49e0234e4aeca167bfd0f9d632ce5c8260a96c4cb7a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.2.0/git-cascade-v0.2.0-linux-amd64.tar.gz"
      sha256 "721f36ee0f3495fc14863e111b0645e476b71709906798ada6f1d4ee7d05f976"
    end
    if Hardware::CPU.arm?
      url "https://github.com/eukarya-inc/git-cascade/releases/download/v0.2.0/git-cascade-v0.2.0-linux-arm64.tar.gz"
      sha256 "300bfcc6c967a0f5377398b40986c2aac6ec0b5754f0c385a21baa05099854cc"
    end
  end

  def install
    bin.install "git-cascade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-cascade version")
  end
end
