class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.1.5/todox-v0.1.5-darwin-arm64.tar.gz"
      sha256 "117d47b39296f5fa8782fe4feaf1d6e5846e7c1a90dd9ca335b334b0fc05f99d"
    else
      url "https://github.com/phyten/todox/releases/download/v0.1.5/todox-v0.1.5-darwin-amd64.tar.gz"
      sha256 "8a23e28e2265a13373014a54da693805d31f38282c3b2fa73101eec5620f00a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.1.5/todox-v0.1.5-linux-arm64.tar.gz"
      sha256 "da66fc2f772afb7314c1a0306f9b3666438298f2df6b47fd652f8c4db7b0ca07"
    else
      url "https://github.com/phyten/todox/releases/download/v0.1.5/todox-v0.1.5-linux-amd64.tar.gz"
      sha256 "ec76f3e20c59e509f9c647155200f7f57e9d89a57ca51334859b879f02b91fa8"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
