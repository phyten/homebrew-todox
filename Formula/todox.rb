class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.8.2/todox-v0.8.2-darwin-arm64.tar.gz"
      sha256 "c37b48a7ceafd0779834dfe8f8da2226e5605f1e3524bdbc417f2490d38a67b8"
    else
      url "https://github.com/phyten/todox/releases/download/v0.8.2/todox-v0.8.2-darwin-amd64.tar.gz"
      sha256 "2b4f3b9fd64a51da99835eff633e15b24aeb8d07c4c0b6631cdb03762229d7da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.8.2/todox-v0.8.2-linux-arm64.tar.gz"
      sha256 "4e8a447e0961abeac0b0bfa750fd3086368e989172ffbb41efc605d7ec0dd2bb"
    else
      url "https://github.com/phyten/todox/releases/download/v0.8.2/todox-v0.8.2-linux-amd64.tar.gz"
      sha256 "cffa0dedcaa289769ad98d26e48c1c23470e192b4399176367a1ccf72f4de7bb"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
