class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.8.0/todox-v0.8.0-darwin-arm64.tar.gz"
      sha256 "564fbf20361d723e3b91b889c1f716f58650efb155e27275ba5fe6497e1a9f14"
    else
      url "https://github.com/phyten/todox/releases/download/v0.8.0/todox-v0.8.0-darwin-amd64.tar.gz"
      sha256 "369af3e03a820d531438a3e55560c28d68ff7e01f91835ca88131ca3c54ce48e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.8.0/todox-v0.8.0-linux-arm64.tar.gz"
      sha256 "978a5e45dd1c826cad557cfdc41494539ab947d70001b24fa5ad419f400b4fbb"
    else
      url "https://github.com/phyten/todox/releases/download/v0.8.0/todox-v0.8.0-linux-amd64.tar.gz"
      sha256 "01b338dc00626836624a8ed367d4fc997b24ec3cc236724bf575024e5799b25a"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
