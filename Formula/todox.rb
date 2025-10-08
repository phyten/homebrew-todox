class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.10.0/todox-v0.10.0-darwin-arm64.tar.gz"
      sha256 "8ab9d733cdf5aeb070f199641f4531515c8604797d5a921bfb0d70552e12f0f3"
    else
      url "https://github.com/phyten/todox/releases/download/v0.10.0/todox-v0.10.0-darwin-amd64.tar.gz"
      sha256 "59ad4c5f70ded5df8fc07cf22d284063b9f94d4b9275171ea6080f2d5a4786d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.10.0/todox-v0.10.0-linux-arm64.tar.gz"
      sha256 "4b1e51ad372414e915e4970761e82c01d91797cf899ff406ef641298fc9df249"
    else
      url "https://github.com/phyten/todox/releases/download/v0.10.0/todox-v0.10.0-linux-amd64.tar.gz"
      sha256 "d1ca404b6854bbd813973a0069163686edd435ee6301ce66d45f277d536d3231"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
