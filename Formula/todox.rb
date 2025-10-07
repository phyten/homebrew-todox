class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.9.0/todox-v0.9.0-darwin-arm64.tar.gz"
      sha256 "1b6aed975729fa02c09e72fe24a2a8392ad556bada6741723a3347423376bdd6"
    else
      url "https://github.com/phyten/todox/releases/download/v0.9.0/todox-v0.9.0-darwin-amd64.tar.gz"
      sha256 "d242187f0a5c7c4881ecb1efd8e4b3c8f9adedb42617e79974d1c196c55fe530"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.9.0/todox-v0.9.0-linux-arm64.tar.gz"
      sha256 "3b1f7797572b341c0d5c692aae6b6b441368829bd778822398d52bdc4db94791"
    else
      url "https://github.com/phyten/todox/releases/download/v0.9.0/todox-v0.9.0-linux-amd64.tar.gz"
      sha256 "811cca890f1e26ba72f05be94b40d894efba5f1f2afcc22c1eb1dd781566f7b9"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
