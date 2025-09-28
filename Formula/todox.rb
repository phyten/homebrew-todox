class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.3.0/todox-v0.3.0-darwin-arm64.tar.gz"
      sha256 "9492741b19193b70bb536b14cc57ffcdb9890cf444fc531a3d4b6bdc20162c4d"
    else
      url "https://github.com/phyten/todox/releases/download/v0.3.0/todox-v0.3.0-darwin-amd64.tar.gz"
      sha256 "4ce0e0b8b6bb23ccb2d085c58137be4e6c4264bd56f87d00dc5ffb0d250e4a0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.3.0/todox-v0.3.0-linux-arm64.tar.gz"
      sha256 "8f8885e547ebe070e5ea00ecb201b23f3c3e29cdf88b5be8b56c83b39f4f739f"
    else
      url "https://github.com/phyten/todox/releases/download/v0.3.0/todox-v0.3.0-linux-amd64.tar.gz"
      sha256 "49395930144b82fd0c5af3dd7f358732ada5e71a1e3f2d33737ac8d61e81d9d3"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
