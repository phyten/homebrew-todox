class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.12.1/todox-v0.12.1-darwin-arm64.tar.gz"
      sha256 "20e25a20f8dbb265b4741bfaa9ed24dc9e6e9267a80e215c997f3fe099c5ef61"
    else
      url "https://github.com/phyten/todox/releases/download/v0.12.1/todox-v0.12.1-darwin-amd64.tar.gz"
      sha256 "bd069837059dc07e8c44025387fcbb939b2fb011483f06daf58b20a0b606388c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.12.1/todox-v0.12.1-linux-arm64.tar.gz"
      sha256 "d81cfda38443a4e97df732978739b76e4e7525cb03347bba74e3c449c90a5036"
    else
      url "https://github.com/phyten/todox/releases/download/v0.12.1/todox-v0.12.1-linux-amd64.tar.gz"
      sha256 "281ee1bde590100609861805ebf53a717955b28fda6f90615529d8330dbad53c"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
