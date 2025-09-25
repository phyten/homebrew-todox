class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.1.7/todox-v0.1.7-darwin-arm64.tar.gz"
      sha256 "e9149252906e2a38ad68aebd751eafe5083531c1abacee33af257cec1da22890"
    else
      url "https://github.com/phyten/todox/releases/download/v0.1.7/todox-v0.1.7-darwin-amd64.tar.gz"
      sha256 "c78d19825c64376385b08610afea0f781548b5f46279b04b48f98dc4fb479d55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.1.7/todox-v0.1.7-linux-arm64.tar.gz"
      sha256 "b6d3f103e4cce42a02775ff97b9bd396161a9b4822961d988a2395638e657d47"
    else
      url "https://github.com/phyten/todox/releases/download/v0.1.7/todox-v0.1.7-linux-amd64.tar.gz"
      sha256 "a1b3944e5653b4ff05d9fed6f111709b233de69fb653c8f7c59b637670a74adc"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
