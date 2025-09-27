class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.2.0/todox-v0.2.0-darwin-arm64.tar.gz"
      sha256 "2da494f537ffa72c8375123be9862aef59b26103766806df0487bc4b66cfe5a9"
    else
      url "https://github.com/phyten/todox/releases/download/v0.2.0/todox-v0.2.0-darwin-amd64.tar.gz"
      sha256 "e35aa20d72cd772f0fd2f9e4c620da36f3e5b93924af2a1a7113acacf141dd0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.2.0/todox-v0.2.0-linux-arm64.tar.gz"
      sha256 "97f14e492c504f5b21989735ebbd51102bed5d4b23b4d3a5d7c788bd7801bce4"
    else
      url "https://github.com/phyten/todox/releases/download/v0.2.0/todox-v0.2.0-linux-amd64.tar.gz"
      sha256 "e0bd364c926a2d84bdd818c79632cd9e1cbdf656e8ebd7d4b2d7d9789b879735"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
