class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.6.0/todox-v0.6.0-darwin-arm64.tar.gz"
      sha256 "b7649b1c1ee680dd1e91ef806fa5139ed088f2bf1a72d78c502274148a3dde68"
    else
      url "https://github.com/phyten/todox/releases/download/v0.6.0/todox-v0.6.0-darwin-amd64.tar.gz"
      sha256 "31295a534109194803545a6cd5e0c5966d9c05d16dd6097e26b0b6d15f6f66ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.6.0/todox-v0.6.0-linux-arm64.tar.gz"
      sha256 "18fe2602dfd9fe83f7f5439bd10ad045c9406ad0240a2e68b52093e627f6341b"
    else
      url "https://github.com/phyten/todox/releases/download/v0.6.0/todox-v0.6.0-linux-amd64.tar.gz"
      sha256 "5bf221d1b038d269427c0cb13530d0ac4840df42e1f619b0b229c8c2652f9ed3"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
