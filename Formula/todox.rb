class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.13.0/todox-v0.13.0-darwin-arm64.tar.gz"
      sha256 "6dc404b64ba6bab22a617f839810cd09bbf152c010f0685c164dcf59f22924c3"
    else
      url "https://github.com/phyten/todox/releases/download/v0.13.0/todox-v0.13.0-darwin-amd64.tar.gz"
      sha256 "2666e49dcddd415bdddede4d54e0798be0106ede779042bbeb51d8a26842a1e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.13.0/todox-v0.13.0-linux-arm64.tar.gz"
      sha256 "f7751e42fa325a51c56d215948775b31c214776e32793fdcf0caeebfa6947a2b"
    else
      url "https://github.com/phyten/todox/releases/download/v0.13.0/todox-v0.13.0-linux-amd64.tar.gz"
      sha256 "4b37e59b6f1b96647484b0274dfe9b181ff2c2f51b2ab92d39d54f5cb133aed9"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
