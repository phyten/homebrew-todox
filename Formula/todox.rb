class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.1.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.1.10/todox-v0.1.10-darwin-arm64.tar.gz"
      sha256 "b2166145fa4a1e51d3ee27aadab3f9e998d78978b939c9c0d94cb814c6d35663"
    else
      url "https://github.com/phyten/todox/releases/download/v0.1.10/todox-v0.1.10-darwin-amd64.tar.gz"
      sha256 "9b759887f4058da962d9a4c65fd3b4bcfaeaf3e8f2b21fc0132bce64120900ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.1.10/todox-v0.1.10-linux-arm64.tar.gz"
      sha256 "2486a89c7b66359093d1c28c05aa612112b942b88803d48a2c40dccc94eb2434"
    else
      url "https://github.com/phyten/todox/releases/download/v0.1.10/todox-v0.1.10-linux-amd64.tar.gz"
      sha256 "98d74efc848ef9a771d1791d384896b8eaf267e648010be41bb487e4857094d4"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
