class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.4.0/todox-v0.4.0-darwin-arm64.tar.gz"
      sha256 "d96189d33ed3d5f7f67e8ba26efef93178e07e9a9ccfa263c2b96de0bfaf265a"
    else
      url "https://github.com/phyten/todox/releases/download/v0.4.0/todox-v0.4.0-darwin-amd64.tar.gz"
      sha256 "b5a141f4e52d10aa335f45cc35f1accfcb08433d4a2c7adedc067a2c32b7335c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.4.0/todox-v0.4.0-linux-arm64.tar.gz"
      sha256 "12215851004053a85096c61030a4ea6be5f0fe7b17ff181426f8dc1b37992de8"
    else
      url "https://github.com/phyten/todox/releases/download/v0.4.0/todox-v0.4.0-linux-amd64.tar.gz"
      sha256 "a660a2dfbc5be53b60f5ab7eb80f4e725b8cf56a2f036dfe4fbe968dbf50a68c"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
