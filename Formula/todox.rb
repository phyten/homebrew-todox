class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.7.0/todox-v0.7.0-darwin-arm64.tar.gz"
      sha256 "5ff6f74a83b3e9b06a5dbe3ad1b2e81e12daafaf8245c4988a7f0ba8569be137"
    else
      url "https://github.com/phyten/todox/releases/download/v0.7.0/todox-v0.7.0-darwin-amd64.tar.gz"
      sha256 "d5d0b9ab6865c6d8b8705f880bcbf54269bed8cda3a7fcb54fc0e8dfd3776ff6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.7.0/todox-v0.7.0-linux-arm64.tar.gz"
      sha256 "b98b43c8ab5fbf530d714716afb742bd2e0c0573a8e51f1e37a4865582f53fe4"
    else
      url "https://github.com/phyten/todox/releases/download/v0.7.0/todox-v0.7.0-linux-amd64.tar.gz"
      sha256 "cf6b3c6c9321649be689935144ecd9fdf13ada30cf0fd234fde5a698ae57c8f3"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
