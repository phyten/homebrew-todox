class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.5.0/todox-v0.5.0-darwin-arm64.tar.gz"
      sha256 "599f469f64ea07389fec6cd2d410308ef68e687666b33cfef1f1342860211f1d"
    else
      url "https://github.com/phyten/todox/releases/download/v0.5.0/todox-v0.5.0-darwin-amd64.tar.gz"
      sha256 "969734f21c1ac7ae07f7d676ff15e2ce4f7ee90009dce29991626713b992cc08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.5.0/todox-v0.5.0-linux-arm64.tar.gz"
      sha256 "26e20df6512e2dd668a720962bb7ac6f1936c150d021a064e77a4a922f8c54b6"
    else
      url "https://github.com/phyten/todox/releases/download/v0.5.0/todox-v0.5.0-linux-amd64.tar.gz"
      sha256 "8d31092ff099b73bdcba8fcd34f07945151a61b5d90c2c8bbecf0024f3b7776c"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
