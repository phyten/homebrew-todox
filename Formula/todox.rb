class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.1.8/todox-v0.1.8-darwin-arm64.tar.gz"
      sha256 "af55db0b6b45db95a2808c05ba2a9e5c478653313f93bfad093b3ff56cd0e612"
    else
      url "https://github.com/phyten/todox/releases/download/v0.1.8/todox-v0.1.8-darwin-amd64.tar.gz"
      sha256 "2ad7243de9930852b0d667ca93da0f1ba7409c54fd202aaafb00c9cb01d25782"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.1.8/todox-v0.1.8-linux-arm64.tar.gz"
      sha256 "afc40014493ca8f52f4a2d6af4f2c75c2079b83dc20332e87a91c266f26dab08"
    else
      url "https://github.com/phyten/todox/releases/download/v0.1.8/todox-v0.1.8-linux-amd64.tar.gz"
      sha256 "802ee458c07724a6430bde8de5e9673c32cda9f6b31ae601ca93c257dfc7754b"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
