class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.11.0/todox-v0.11.0-darwin-arm64.tar.gz"
      sha256 "559937d1b24b90621f11053b5ea136e3645a6f0730a8634abaaf67c341d97e7c"
    else
      url "https://github.com/phyten/todox/releases/download/v0.11.0/todox-v0.11.0-darwin-amd64.tar.gz"
      sha256 "ec1fc73ad3f10c477e582bd826bcd3903a88407af01389014b210d146852d5e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.11.0/todox-v0.11.0-linux-arm64.tar.gz"
      sha256 "9ac1a1afacee9c1d60a5580d43d38935369221ef59a5d66934a6f8d8998e6612"
    else
      url "https://github.com/phyten/todox/releases/download/v0.11.0/todox-v0.11.0-linux-amd64.tar.gz"
      sha256 "e24c1e4e2a8c5ceb913ee12fec43eac2e7f60f1734289d0f883c385dcd40392a"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
