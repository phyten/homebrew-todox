class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.1.9/todox-v0.1.9-darwin-arm64.tar.gz"
      sha256 "6cf3bc6b6f677abbadc4cdf7839278c5a23be2e17700152df61d1ae81acf744f"
    else
      url "https://github.com/phyten/todox/releases/download/v0.1.9/todox-v0.1.9-darwin-amd64.tar.gz"
      sha256 "c07fdf8b96429fce943a6c4533ffdc94a0c070af754e92eefe417d02cfdacc92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.1.9/todox-v0.1.9-linux-arm64.tar.gz"
      sha256 "f924be4cd5bcc70d5e9da3d627cdd98e99f9c9bbd43b3adb458b4283f3bd3bf1"
    else
      url "https://github.com/phyten/todox/releases/download/v0.1.9/todox-v0.1.9-linux-amd64.tar.gz"
      sha256 "8b5fc3e97626feb1cb8be7b442ead9e56c025c8ce4166e96400326d99be1a242"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
