class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.1.6/todox-v0.1.6-darwin-arm64.tar.gz"
      sha256 "09f3ce047f7e6f649c38292c2057974a4f1f1d7a4a01e851ef273b1fbe98bfb3"
    else
      url "https://github.com/phyten/todox/releases/download/v0.1.6/todox-v0.1.6-darwin-amd64.tar.gz"
      sha256 "040866166d2d7fbb151afa44f11d56887e17a069fdf096d9c9b114b6393bc036"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.1.6/todox-v0.1.6-linux-arm64.tar.gz"
      sha256 "c143b6a8e141d09b25e8f861135d777540a6aafd33cbf314ce24d93f1889379a"
    else
      url "https://github.com/phyten/todox/releases/download/v0.1.6/todox-v0.1.6-linux-amd64.tar.gz"
      sha256 "00da7fa708a340d92b26ad617664864cebb4ff0ea9c8fbda8d6ef54f31d8aead"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
