class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.14.0/todox-v0.14.0-darwin-arm64.tar.gz"
      sha256 "cf6d05c93508d1839dc74c03132411ba8139ba0879c73900f7e8158162e7cfa1"
    else
      url "https://github.com/phyten/todox/releases/download/v0.14.0/todox-v0.14.0-darwin-amd64.tar.gz"
      sha256 "b2fcff30544164a009a4fc424c20e7caebd3d2f1940d103006edc52f0aa7d8c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.14.0/todox-v0.14.0-linux-arm64.tar.gz"
      sha256 "f95fdd3e52ae55e10a5b917275342d325188e7783aec061cb0432eb9a8817c3d"
    else
      url "https://github.com/phyten/todox/releases/download/v0.14.0/todox-v0.14.0-linux-amd64.tar.gz"
      sha256 "d1413e5b4cbcaa5d5424f0601d802fa9f4a0accdfed041bdccd77eecc672285f"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
