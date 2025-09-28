class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.4.1/todox-v0.4.1-darwin-arm64.tar.gz"
      sha256 "c854ecc60546b839cc228cf8a4a694919263942dbb6dc10b6c0755499a0b7bb8"
    else
      url "https://github.com/phyten/todox/releases/download/v0.4.1/todox-v0.4.1-darwin-amd64.tar.gz"
      sha256 "d60a887a7a57901f4ae147dab16b8f78650d9eea9852b24cc3766ed2514f49be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.4.1/todox-v0.4.1-linux-arm64.tar.gz"
      sha256 "6d269cb978868e0e773e31e4022557d075933812fd3aaa43b47c88e2314824a5"
    else
      url "https://github.com/phyten/todox/releases/download/v0.4.1/todox-v0.4.1-linux-amd64.tar.gz"
      sha256 "5184398720d4b11c57720a0eb3a4fa1bc8d673001933392d76c6a1e92d04877d"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
