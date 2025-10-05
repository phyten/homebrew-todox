class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.8.1/todox-v0.8.1-darwin-arm64.tar.gz"
      sha256 "184fc2d92af92864672757d8116beac8c300f257e1a41a4d5a8dd1bc7df40435"
    else
      url "https://github.com/phyten/todox/releases/download/v0.8.1/todox-v0.8.1-darwin-amd64.tar.gz"
      sha256 "dd2560e98fc5112913c8599cae30a159cef5b523a0c809eb59b581ab9e5221f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.8.1/todox-v0.8.1-linux-arm64.tar.gz"
      sha256 "84b5d6a6a3e62e8be3eeeca5f11cb1746aa499b398a9650db3c1df9d65c1400c"
    else
      url "https://github.com/phyten/todox/releases/download/v0.8.1/todox-v0.8.1-linux-amd64.tar.gz"
      sha256 "8eab8c99ee3c906aa2947deafac909a99c3e3410a41430e8db2c95329400b5b1"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
